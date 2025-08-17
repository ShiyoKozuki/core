/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "scriptPCH.h"

// 2098, 6760, 6761, 6762, 8623, 8624, 11299, 11300, 31016 - Eviscerate
struct RogueEviscerateScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget())
        {
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_11_2
            // World of Warcraft Client Patch 1.12.0 (2006-08-22)
            // - Eviscerate: Manual of Eviscerate (Rank 9) now drops off Blackhand
            //   Assassins in Black Rock Spire.In addition, Eviscerate now increases
            //   in potency with greater attack power.
            if (spell->m_spellInfo->IsFitToFamilyMask<CF_ROGUE_EVISCERATE>())
            {
                if (Player* pPlayer = spell->m_caster->ToPlayer())
                    if (uint32 combo = pPlayer->GetComboPoints())
                        spell->damage += pPlayer->GetTotalAttackPowerValue(BASE_ATTACK) * combo * 0.03f;
            }
#endif
        }
        return true;
    }
};

SpellScript* GetScript_RogueEviscerate(SpellEntry const*)
{
    return new RogueEviscerateScript();
}

// 1856, 1857, 27617 - Vanish
struct RogueVanishScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_1 && spell->GetUnitTarget())
        {
            spell->GetUnitTarget()->RemoveSpellsCausingAura(SPELL_AURA_MOD_ROOT);
            spell->GetUnitTarget()->RemoveSpellsCausingAura(SPELL_AURA_MOD_DECREASE_SPEED);

            // World of Warcraft Client Patch 1.12.0 (2006-08-22)
            // -  Vanish now removes effects that allow the caster to always remain
            //    aware of their target(currently Hunter's Mark and Mind Vision).
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_11_2
            spell->GetUnitTarget()->RemoveSpellsCausingAura(SPELL_AURA_MOD_STALKED);
#endif

            if (Player* pPlayer = spell->GetUnitTarget()->ToPlayer())
                pPlayer->CastHighestStealthRank();

            return false;

        }
        return true;
    }
};

SpellScript* GetScript_RogueVanish(SpellEntry const*)
{
    return new RogueVanishScript();
}

struct RogueCloakAndDaggerScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_1 && spell->GetCaster())
        {
            if (Player* pPlayer = spell->GetCaster()->ToPlayer())
                pPlayer->CastHighestStealthRank();

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueCloakAndDagger(SpellEntry const*)
{
    return new RogueCloakAndDaggerScript();
}

struct RogueShadowArtsNiScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && spell->GetCaster())
        {
            if (spell->m_casterUnit->HasAura(33544)) // Shadow Arts: Ichi
            {
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 33546, true);  // Shadow Arts: Ni
                spell->m_casterUnit->RemoveAurasDueToSpell(33544);  // Shadow Arts: Ichi
            }

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueShadowArtsNi(SpellEntry const*) {
    return new RogueShadowArtsNiScript();
}

struct RogueShadowArtsSanScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && spell->GetCaster())
        {
            if (spell->m_casterUnit->HasAura(33546)) // Shadow Arts: Ni
            {
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 33548, true); // Shadow Arts: San
                spell->m_casterUnit->RemoveAurasDueToSpell(33546); // Shadow Arts: San
            }

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueShadowArtsSan(SpellEntry const*) {
    return new RogueShadowArtsSanScript();
}

struct RogueSaberSlashScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && spell->GetCaster())
        {
            // Roll the dice! Pick a buff based on dice roll
            auto selectedSpell = urand(0, 6) + 33555;
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, selectedSpell, true);

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueSaberSlash(SpellEntry const*)
{
    return new RogueSaberSlashScript();
}

void AddSC_rogue_spell_scripts()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "spell_rogue_eviscerate";
    newscript->GetSpellScript = &GetScript_RogueEviscerate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_vanish";
    newscript->GetSpellScript = &GetScript_RogueVanish;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_cloak_and_dagger";
    newscript->GetSpellScript = &GetScript_RogueCloakAndDagger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_shadow_arts_ni";
    newscript->GetSpellScript = &GetScript_RogueShadowArtsNi;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_shadow_arts_san";
    newscript->GetSpellScript = &GetScript_RogueShadowArtsSan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_saber_slash";
    newscript->GetSpellScript = &GetScript_RogueSaberSlash;
    newscript->RegisterSelf();
}
