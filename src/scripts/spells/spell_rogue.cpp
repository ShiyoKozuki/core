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
        if (effIdx == EFFECT_INDEX_1 && spell->m_casterUnit && spell->GetCaster() && spell->m_targets.getUnitTarget())
        {
            if (Player* pPlayer = spell->GetCaster()->ToPlayer())
            {
                spell->m_casterUnit->CastSpell(spell->m_targets.getUnitTarget(), 33578, true); // Cloak and Dagger damage proc
                pPlayer->CastHighestStealthRank();
            }

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

struct RogueCorsairsSlashScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_2 && spell->m_casterUnit && spell->GetCaster())
        {
            // Roll the dice! Pick a buff based on dice roll
            auto selectedSpell = urand(0, 5) + 33590; // Buff aura spellIds are 33590 - 33595
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, selectedSpell, true);

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueCorsairsSlash(SpellEntry const*)
{
    return new RogueCorsairsSlashScript();
}

struct RogueMutilateScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && spell->GetCaster() && spell->m_targets.getUnitTarget())
        {
            // Proc MH and OH hits
            spell->m_casterUnit->CastSpell(spell->m_targets.getUnitTarget(), spell->m_spellInfo->Id + 61, true);
            spell->m_casterUnit->CastSpell(spell->m_targets.getUnitTarget(), spell->m_spellInfo->Id + 62, true);

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueMutilate(SpellEntry const*)
{
    return new RogueMutilateScript();
}

struct RogueEnvenomScript : SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const final
    {
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_10_2
        if (Unit* target = spell->m_targets.getUnitTarget())
        {
            std::vector<uint32> deadlyPoisonIds = {2818, 2819, 11353, 11354, 25349};

            bool hasDeadlyPoison = false;

            for (auto spellId : deadlyPoisonIds)
            {
                if (spell->m_targets.getUnitTarget()->HasAura(spellId))
                {
                    hasDeadlyPoison = true;
                    return SPELL_CAST_OK;
                }
            }
        }
#endif
        return SPELL_FAILED_TARGET_AURASTATE;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_caster)
        {
            // For caster applied auras only
            Unit::AuraList const& mPeriodic = spell->GetUnitTarget()->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
            for (const auto i : mPeriodic)
            {
                // Deadly Poison
                if (i->GetSpellProto()->IsFitToFamily<SPELLFAMILY_ROGUE, CF_ROGUE_DEADLY_POISON>() &&
                    i->GetCasterGuid() == spell->m_caster->GetObjectGuid())
                {
                    uint16 stacks = i->GetStackAmount();

                    // Remove Deadly Poison from target
                    spell->GetUnitTarget()->RemoveAurasByCasterSpell(i->GetId(), spell->m_caster->GetObjectGuid());

                    // Scale Envenom damage and Energy Restored by stack count
                    spell->damage *= stacks;
                    spell->m_currentBasePoints[EFFECT_INDEX_2] *= stacks;

                    break;
                }
            }
        }
        return true;
    }
};

SpellScript* GetScript_RogueEnvenom(SpellEntry const*)
{
    return new RogueEnvenomScript();
}

struct RogueSinisterStrikeScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_2 && spell->m_casterUnit && spell->GetCaster())
        {
            // 50% chance to proc Moment of Opportunity (-90 Energy cost on next Dazing Strike)
            if (urand(1, 100) <= 50)
            {
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 33587, true);
            }

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueSinisterStrike(SpellEntry const*)
{
    return new RogueSinisterStrikeScript();
}

struct RogueDazingStrikeScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_2 && spell->m_casterUnit && spell->GetCaster() && spell->m_targets.getUnitTarget())
        {
            // 20% chance to proc Sinister Opening (-40 Energy cost on next Dazing Strike)
            if (urand(1, 100) <= 20)
            {
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 33556, true);
            }

            // -10% hit rate Aura on target
            spell->m_casterUnit->CastSpell(spell->m_targets.getUnitTarget(), 33557, true);

            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueDazingStrike(SpellEntry const*)
{
    return new RogueDazingStrikeScript();
}

struct RogueColdBloodScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_1 && spell->m_casterUnit && spell->GetCaster() && spell->m_targets.getUnitTarget())
        {
            // How do I get the spell proccing this?
            return false;
        }
        return true;
    }
};

SpellScript* GetScript_RogueColdBlood(SpellEntry const*)
{
    return new RogueColdBloodScript();
}

struct RogueShivScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_2 && spell->m_casterUnit && spell->GetCaster() && spell->m_targets.getUnitTarget())
        {
            Unit* target = spell->m_targets.getUnitTarget();
            Player* player = spell->m_caster->ToPlayer();
            if (!player || !target)
                return true;

            // Get offhand weapon
            if (Item* offhand = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND))
            {
                // Check temporary enchant (poison)
                uint32 enchantId = offhand->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT);
                if (enchantId)
                {
                    if (SpellItemEnchantmentEntry const* enchant = sSpellItemEnchantmentStore.LookupEntry(enchantId))
                    {
                        // Shiv should trigger the first spell effect of the poison enchant
                        for (int i = 0; i < 3; ++i)
                        {
                            if (enchant->spellid[i])
                            {
                                player->CastSpell(target, enchant->spellid[i], true);
                                break;
                            }
                        }
                    }
                }
            }

            return false; // stop normal handling since we manually triggered the effect
        }
        return true;
    }
};

SpellScript* GetScript_RogueShiv(SpellEntry const*)
{
    return new RogueShivScript();
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
    newscript->Name = "spell_rogue_corsairs_slash";
    newscript->GetSpellScript = &GetScript_RogueCorsairsSlash;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_mutilate";
    newscript->GetSpellScript = &GetScript_RogueMutilate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_envenom";
    newscript->GetSpellScript = &GetScript_RogueEnvenom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_sinister_strike";
    newscript->GetSpellScript = &GetScript_RogueSinisterStrike;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_dazing_strike";
    newscript->GetSpellScript = &GetScript_RogueDazingStrike;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_cold_blood";
    newscript->GetSpellScript = &GetScript_RogueColdBlood;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_rogue_shiv";
    newscript->GetSpellScript = &GetScript_RogueShiv;
    newscript->RegisterSelf();

}
