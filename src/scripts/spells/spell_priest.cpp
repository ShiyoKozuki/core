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

// 28598 - Touch of Weakness
struct PriestTouchOfWeaknessScript : SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_triggeredByAuraSpell)
        {
            uint32 spellId;
            switch (spell->m_triggeredByAuraSpell->Id)
            {
                case 2652:
                    spellId = 2943;
                    break; // Rank 1
                case 19261:
                    spellId = 19249;
                    break; // Rank 2
                case 19262:
                    spellId = 19251;
                    break; // Rank 3
                case 19264:
                    spellId = 19252;
                    break; // Rank 4
                case 19265:
                    spellId = 19253;
                    break; // Rank 5
                case 19266:
                    spellId = 19254;
                    break; // Rank 6
                default:
                    sLog.Out(LOG_SCRIPTS, LOG_LVL_ERROR, "Spell::EffectDummy: Spell 28598 triggered by unhandeled spell %u", spell->m_triggeredByAuraSpell->Id);
                    return false;
            }
            spell->m_caster->CastSpell(spell->GetUnitTarget(), spellId, true, nullptr);
        }
        return true;
    }
};

SpellScript* GetScript_PriestTouchOfWeakness(SpellEntry const*)
{
    return new PriestTouchOfWeaknessScript();
}

// 17, 592, 600, 3747, 6065, 6066, 10898, 10899, 10900, 10901, 27607 - Power Word: Shield
struct PriestPowerWordShieldScript : SpellScript
{
    enum
    {
        SPELL_WEAKENED_SOUL = 6788,
        SPELL_MENTAL_STRENGTH_1 = 18551,
        SPELL_MENTAL_STRENGTH_2 = 18552,
        SPELL_MENTAL_STRENGTH_3 = 18553,
        SPELL_MENTAL_STRENGTH_4 = 18554,
        SPELL_MENTAL_STRENGTH_5 = 18555
    };

    void OnHit(Spell* spell, SpellMissInfo missInfo) const final
    {
        if (missInfo == SPELL_MISS_NONE && spell->GetUnitTarget())
        {
            spell->m_caster->CastSpell(spell->GetUnitTarget(), SPELL_WEAKENED_SOUL, true);
        }
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_1 && spell->GetUnitTarget() && spell->m_caster && spell->m_casterUnit)
        {
            int32 physicalDamageTakenDR = 0;

            if (spell->m_casterUnit->HasAura(SPELL_MENTAL_STRENGTH_5))
                physicalDamageTakenDR = -5;
            else if (spell->m_casterUnit->HasAura(SPELL_MENTAL_STRENGTH_4))
                physicalDamageTakenDR = -4;
            else if (spell->m_casterUnit->HasAura(SPELL_MENTAL_STRENGTH_3))
                physicalDamageTakenDR = -3;
            else if (spell->m_casterUnit->HasAura(SPELL_MENTAL_STRENGTH_2))
                physicalDamageTakenDR = -2;
            else if (spell->m_casterUnit->HasAura(SPELL_MENTAL_STRENGTH_1))
                physicalDamageTakenDR = -1;

            if (physicalDamageTakenDR < 0)
            {
                spell->m_currentBasePoints[EFFECT_INDEX_2] = physicalDamageTakenDR;
            }
        }

        return true;
    }
};

SpellScript* GetScript_PriestPowerWordShield(SpellEntry const*)
{
    return new PriestPowerWordShieldScript();
}

// 15237, 15430, 15431, 27799, 27800, 27801 - Holy Nova
struct PriestHolyNovaScript : public SpellScript
{
    void OnSuccessfulFinish(Spell* spell) const final
    {
        if (!spell->m_casterUnit)
            return;

        uint32 spellId;
        switch (spell->m_spellInfo->Id)
        {
            case 15237:
                spellId = 23455;
                break;// Holy Nova, rank 1
            case 15430:
                spellId = 23458;
                break;// Holy Nova, rank 2
            case 15431:
                spellId = 23459;
                break;// Holy Nova, rank 3
            case 27799:
                spellId = 27803;
                break;// Holy Nova, rank 4
            case 27800:
                spellId = 27804;
                break;// Holy Nova, rank 5
            case 27801:
                spellId = 27805;
                break;// Holy Nova, rank 6
            default:
                sLog.Out(LOG_SCRIPTS, LOG_LVL_ERROR, "Holy Nova spell script assigned to unhandled spell id %u.", spell->m_spellInfo->Id);
                return;
        }

        SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spellId);
        if (!spellInfo)
            return;

        Spell* newSpell = new Spell(spell->m_casterUnit, spellInfo, true, spell->GetOriginalCasterGuid());
        newSpell->prepare(spell->m_targets); // use original spell targets
    }
};

SpellScript* GetScript_PriestHolyNova(SpellEntry const*)
{
    return new PriestHolyNovaScript();
}

struct PriestArchangelScript : public SpellScript
{
    enum
    {
        SPELL_EVANGELISM_BUFF1 = 34004,
        SPELL_EVANGELISM_BUFF2 = 34006,
    };

    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const final
    {
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_10_2
        if (Unit* target = spell->m_targets.getUnitTarget())
        {
            if (target->HasAura(SPELL_EVANGELISM_BUFF1) || target->HasAura(SPELL_EVANGELISM_BUFF2))
                return SPELL_CAST_OK;
        }
#endif
        return SPELL_FAILED_TARGET_AURASTATE;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_caster)
        {
            Aura* evangelismAura = spell->GetUnitTarget()->GetAura(SPELL_EVANGELISM_BUFF1, EFFECT_INDEX_0);

            // Check second Evangelism aura
            if (!evangelismAura)
            {
                evangelismAura = spell->GetUnitTarget()->GetAura(SPELL_EVANGELISM_BUFF2, EFFECT_INDEX_0);
            }

            if (!evangelismAura)
            {
                return false;
            }

            uint16 stacks = evangelismAura->GetStackAmount();

            // Scale Archangel buffs by stack count
            spell->m_currentBasePoints[EFFECT_INDEX_1] *= stacks;
            spell->m_currentBasePoints[EFFECT_INDEX_2] *= stacks;

            // Remove Evangelism from self
            spell->GetUnitTarget()->RemoveAurasByCasterSpell(evangelismAura->GetId(), spell->m_caster->GetObjectGuid());
        }

        return true;
    }
};

SpellScript* GetScript_PriestArchangel(SpellEntry const*)
{
    return new PriestArchangelScript();
}

struct PriestPenanceScript : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const final
    {
        if (spell->m_targets.getUnitTarget() && !spell->m_caster->IsFriendlyTo(spell->m_targets.getUnitTarget()) && !spell->m_caster->IsFacingTarget(spell->m_targets.getUnitTarget()))
            return SPELL_FAILED_UNIT_NOT_INFRONT;

        return SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget())
        {
            int hurt;
            int heal;

            switch (spell->m_spellInfo->Id)
            {
            case 34008:
                heal = 34009;
                hurt = 34011;
                break;
            case 34013:
                heal = 34015;
                hurt = 34017;
                break;
            case 34019:
                heal = 34021;
                hurt = 34023;
                break;
            default:
                sLog.Out(LOG_SCRIPTS, LOG_LVL_ERROR, "Spell::EffectDummy: Spell %u not handled in Penance", spell->m_spellInfo->Id);
                return false;
            }

            if (spell->m_caster->IsFriendlyTo(spell->GetUnitTarget()))
                spell->m_caster->CastSpell(spell->GetUnitTarget(), heal, true);
            else
                spell->m_caster->CastSpell(spell->GetUnitTarget(), hurt, true);
        }
        return true;
    }
};

SpellScript* GetScript_PriestPenance(SpellEntry const*)
{
    return new PriestPenanceScript();
}

struct PriestAtonementScript : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_casterUnit && spell->GetCaster())
        {
            // Atonement healing is halved against the priest themselves
            if (spell->GetUnitTarget() == spell->m_casterUnit)
            {
                // damage member is used as the base healing amount in spell healing functions
                spell->damage *= 0.5;
                spell->m_currentBasePoints[EFFECT_INDEX_1] *= 0.5;
            }
        }
        return true;
    }
};

SpellScript* GetScript_PriestAtonement(SpellEntry const*)
{
    return new PriestAtonementScript();
}

struct PriestDevouringPlagueScript : public SpellScript
{
    enum
    {
        SPELL_SHADOW_ORBS = 34157,
    };

    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const final
    {
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_10_2
        if (spell->m_casterUnit)
        {
            if (spell->m_casterUnit->HasAura(SPELL_SHADOW_ORBS))
            {
                Aura* shadowOrbsAura = spell->m_casterUnit->GetAura(SPELL_SHADOW_ORBS, EFFECT_INDEX_0);
                SpellAuraHolder* holder = shadowOrbsAura->GetHolder();

                if (holder)
                {
                    uint16 stacks = holder->GetStackAmount();

                     // Devouring Plague requires 3 stacks
                    if (stacks >= 3)
                        return SPELL_CAST_OK;
                }
            }
        }
#endif
        return SPELL_FAILED_TARGET_AURASTATE;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_casterUnit)
        {
            Aura* shadowOrbsAura = spell->m_casterUnit->GetAura(SPELL_SHADOW_ORBS, EFFECT_INDEX_0);

            if (!shadowOrbsAura)
                return false;

            SpellAuraHolder* holder = shadowOrbsAura->GetHolder();

            if (!holder)
                return false;

            uint16 stacks = holder->GetStackAmount();

            // Devouring Plague requires 3 stacks
            if (stacks < 3)
                return false;

            // Remove Shadow Orbs aura from self if stacks are exactl else
            if (stacks == 3)
            {
                // Remove Shadow Orbs aura from self
                spell->m_casterUnit->RemoveAurasByCasterSpell(shadowOrbsAura->GetId(), spell->m_caster->GetObjectGuid());
            }
            else // Remove 3 stacks of Shadow Orbs
            {
                holder->SetStackAmount(stacks - 3);
            }
        }

        return true;
    }
};

SpellScript* GetScript_PriestDevouringPlague(SpellEntry const*)
{
    return new PriestDevouringPlagueScript();
}

struct PriestShadowWordDeathScript : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_casterUnit)
        {
            // Gain a Shadow Orb
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 34157, true);
        }

        return true;
    }

    void OnAfterHit(Spell* spell) const
    {
        // Check if target already dead
        if (spell->GetUnitTarget() && !spell->GetUnitTarget()->IsDead())
        {
            // Self damage is half of the spells damage
            uint32 damage = int32(spell->damage * 0.5f); // Self damage is half of the spells damage

            // Damage self
            spell->m_casterUnit->CastCustomSpell(spell->GetUnitTarget(), 34178, damage, {}, {}, true, nullptr);
        }
    }
};

SpellScript* GetScript_PriestShadowWordDeath(SpellEntry const*)
{
    return new PriestShadowWordDeathScript();
}

struct PriestVampiricTouchManaRestoreScript : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const final
    {
        if (effIdx == EFFECT_INDEX_0 && spell->GetUnitTarget() && spell->m_casterUnit && spell->GetCaster())
        {
            // Vampiric Touch mana restore is doubled against the priest themselves
            if (spell->GetUnitTarget() == spell->m_casterUnit)
            {
                spell->damage *= 2;
                spell->m_currentBasePoints[EFFECT_INDEX_0] *= 2;
            }
        }
        return true;
    }
};

SpellScript* GetScript_PriestVampiricTouchManaRestore(SpellEntry const*)
{
    return new PriestVampiricTouchManaRestoreScript();
}

struct PriestShadowformScript : public AuraScript
{
    // TODO:
    // Also grants 2% mana per 5s
};

AuraScript* GetScript_PriestShadowform(SpellEntry const*)
{
    return new PriestShadowformScript();
}

void AddSC_priest_spell_scripts()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "spell_priest_touch_of_weakness";
    newscript->GetSpellScript = &GetScript_PriestTouchOfWeakness;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_power_word_shield";
    newscript->GetSpellScript = &GetScript_PriestPowerWordShield;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_holy_nova";
    newscript->GetSpellScript = &GetScript_PriestHolyNova;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_archangel";
    newscript->GetSpellScript = &GetScript_PriestArchangel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_penance";
    newscript->GetSpellScript = &GetScript_PriestPenance;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_atonement";
    newscript->GetSpellScript = &GetScript_PriestAtonement;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_devouring_plague";
    newscript->GetSpellScript = &GetScript_PriestDevouringPlague;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_shadow_word_death";
    newscript->GetSpellScript = &GetScript_PriestShadowWordDeath;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_vampiric_touch_mana_restore";
    newscript->GetSpellScript = &GetScript_PriestVampiricTouchManaRestore;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "spell_priest_shadowform";
    newscript->GetAuraScript = &GetScript_PriestShadowform;
    newscript->RegisterSelf();
}
