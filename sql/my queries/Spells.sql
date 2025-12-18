-- 33894 NEXT SPELL
-- 15108 NEXT SKILL_LINE_ABILITY

-- spell_chain for spells you want to learn in order but still keep previou ranks in spell book
-- superseded_by_spell in skill_line_ability for spells you want overwritten by higher rank in spell book

-- FOR SPELL SCRIPTS USE: SPELL_EFFECT_SCRIPT_EFFECT = 77, effectImplicitTargetA1 (1 or 6, anything probably works) and a dummy aura (4)
-- Spell icon:  alpha depth -  (None) opaque 0

-- Use recoveryTime NOT categoryrecoveryTime for cooldowns!!
-- spellFamilyName matters for the aura of a proc! Needs to be the spellFamilyName used for the effectItemType enum!

-- Knock Away (10101) is a FULL hate reset. full threat reset

-- Spells
-- effectItemType -> (spellFamilyFlags? It's the enum I don't know why this was referenced to me) is enum ClassFlag in SpellClassMask.h
-- spellfamiylflag is enum ClassFlag

-- To Trigger procs on target, use effect 64 (SPELL_EFFECT_TRIGGER_SPELL = 64), effectTriggerSpell1 (for the spell triggered) and effectImplicitTargetA1 6(for target unit)

-- Look at https://www.wowhead.com/classic/spell=12579/winters-chill to see how to add a "increased crit chance to target" mod on stuff. Like improved SoTCrusader (SPELL_AURA_MOD_ATTACKER_SPELL_CRIT_CHANCE = 179)

-- *****MUST UNLEARN ALL RANKS OF SPELLS(NOT JUST LOWEST) WHEN TESTING!!*****

-- Used with auraName HandleAuraModStat(29)
-- Value for effectMiscValue
-- enum Stats
-- {
--     STAT_STRENGTH                      = 0,
--     STAT_AGILITY                       = 1,
--     STAT_STAMINA                       = 2,
--     STAT_INTELLECT                     = 3,
--     STAT_SPIRIT                        = 4
-- };

-- powerType
-- enum Powers
-- {
--     POWER_MANA                          = 0,            // UNIT_FIELD_POWER1
--     POWER_RAGE                          = 1,            // UNIT_FIELD_POWER2 (30 rage = 300 manaCost for spells)
--     POWER_FOCUS                         = 2,            // UNIT_FIELD_POWER3
--     POWER_ENERGY                        = 3,            // UNIT_FIELD_POWER4
--     POWER_HAPPINESS                     = 4,            // UNIT_FIELD_POWER5
--     POWER_HEALTH                        = 0xFFFFFFFE    // (-2 as signed value)
-- };

-- DmgClass

-- Specifies what calculation logic is used for a given spell. SPELL_DAMAGE_CLASS_NONE for example cannot miss. Magic is a spell which uses spell hit, melee and range use normal hit, etc.
-- Id 	Name
-- 0 	SPELL_DAMAGE_CLASS_NONE
-- 1 	SPELL_DAMAGE_CLASS_MAGIC
-- 2 	SPELL_DAMAGE_CLASS_MELEE
-- 2 	SPELL_DAMAGE_CLASS_RANGED

-- Effect is enum SpellEffects

-- Used with auraName SPELL_AURA_ADD_PCT_MODIFIER = 108
-- Value for effectMiscValue
-- enum SpellModOp
-- {
--     SPELLMOD_DAMAGE                 = 0,
--     SPELLMOD_DURATION               = 1,
--     SPELLMOD_THREAT                 = 2,
--     SPELLMOD_ATTACK_POWER           = 3,
--     SPELLMOD_CHARGES                = 4,
--     SPELLMOD_RANGE                  = 5,
--     SPELLMOD_RADIUS                 = 6,
--     SPELLMOD_CRITICAL_CHANCE        = 7,
--     SPELLMOD_ALL_EFFECTS            = 8,
--     SPELLMOD_NOT_LOSE_CASTING_TIME  = 9,
--     SPELLMOD_CASTING_TIME           = 10,
--     SPELLMOD_COOLDOWN               = 11,
--     SPELLMOD_SPEED                  = 12,
--     SPELLMOD_COST                   = 14,
--     SPELLMOD_CRIT_DAMAGE_BONUS      = 15,
--     SPELLMOD_RESIST_MISS_CHANCE     = 16,
--     SPELLMOD_JUMP_TARGETS           = 17,
--     SPELLMOD_CHANCE_OF_SUCCESS      = 18,                   // Only used with SPELL_AURA_ADD_FLAT_MODIFIER and affects proc spells
--     SPELLMOD_ACTIVATION_TIME        = 19,
--     SPELLMOD_EFFECT_PAST_FIRST      = 20,
--     SPELLMOD_GLOBAL_COOLDOWN        = 21,
--     SPELLMOD_DOT                    = 22,
--     SPELLMOD_HASTE                  = 23,
--     SPELLMOD_SPELL_BONUS_DAMAGE     = 24,
--     SPELLMOD_MULTIPLE_VALUE         = 27,
--     SPELLMOD_RESIST_DISPEL_CHANCE   = 28,
--     MAX_SPELLMOD                    = 29,
-- };

-- effect SPELL_EFFECT_DISPEL  = 38. use below enum for the miscValue when using effect 38
-- Spell dispell type 
-- enum DispelType
-- {
--     DISPEL_NONE         = 0,
--     DISPEL_MAGIC        = 1,
--     DISPEL_CURSE        = 2,
--     DISPEL_DISEASE      = 3,
--     DISPEL_POISON       = 4,
--     DISPEL_STEALTH      = 5,
--     DISPEL_INVISIBILITY = 6,
--     DISPEL_ALL          = 7,
--     DISPEL_SPE_NPC_ONLY = 8,
--     DISPEL_ENRAGE       = 9,
--     DISPEL_ZG_TICKET    = 10
-- };

-- EquippedItemClass

-- enum ItemClass
-- {
--     ITEM_CLASS_CONSUMABLE                       = 0,
--     ITEM_CLASS_CONTAINER                        = 1,
--     ITEM_CLASS_WEAPON                           = 2,
--     ITEM_CLASS_GEM                              = 3,
--     ITEM_CLASS_ARMOR                            = 4,
--     ITEM_CLASS_REAGENT                          = 5,
--     ITEM_CLASS_PROJECTILE                       = 6,
--     ITEM_CLASS_TRADE_GOODS                      = 7,
--     ITEM_CLASS_GENERIC                          = 8,
--     ITEM_CLASS_RECIPE                           = 9,
--     ITEM_CLASS_MONEY                            = 10,
--     ITEM_CLASS_QUIVER                           = 11,
--     ITEM_CLASS_QUEST                            = 12,
--     ITEM_CLASS_KEY                              = 13,
--     ITEM_CLASS_PERMANENT                        = 14,
--     ITEM_CLASS_JUNK                             = 15
-- };

-- EquippedItemSubClassMask

-- enum ItemSubclassWeapon
-- {
--     ITEM_SUBCLASS_WEAPON_AXE                    = 0,
--     ITEM_SUBCLASS_WEAPON_AXE2                   = 1,
--     ITEM_SUBCLASS_WEAPON_BOW                    = 2,
--     ITEM_SUBCLASS_WEAPON_GUN                    = 3,
--     ITEM_SUBCLASS_WEAPON_MACE                   = 4,
--     ITEM_SUBCLASS_WEAPON_MACE2                  = 5,
--     ITEM_SUBCLASS_WEAPON_POLEARM                = 6,
--     ITEM_SUBCLASS_WEAPON_SWORD                  = 7,
--     ITEM_SUBCLASS_WEAPON_SWORD2                 = 8,
--     ITEM_SUBCLASS_WEAPON_obsolete               = 9,
--     ITEM_SUBCLASS_WEAPON_STAFF                  = 10,
--     ITEM_SUBCLASS_WEAPON_EXOTIC                 = 11,
--     ITEM_SUBCLASS_WEAPON_EXOTIC2                = 12,
--     ITEM_SUBCLASS_WEAPON_FIST                   = 13,
--     ITEM_SUBCLASS_WEAPON_MISC                   = 14,
--     ITEM_SUBCLASS_WEAPON_DAGGER                 = 15,
--     ITEM_SUBCLASS_WEAPON_THROWN                 = 16,
--     ITEM_SUBCLASS_WEAPON_SPEAR                  = 17,
--     ITEM_SUBCLASS_WEAPON_CROSSBOW               = 18,
--     ITEM_SUBCLASS_WEAPON_WAND                   = 19,
--     ITEM_SUBCLASS_WEAPON_FISHING_POLE           = 20
-- };

-- enum ItemSubclassArmor
-- {
--     ITEM_SUBCLASS_ARMOR_MISC                    = 0,
--     ITEM_SUBCLASS_ARMOR_CLOTH                   = 1,
--     ITEM_SUBCLASS_ARMOR_LEATHER                 = 2,
--     ITEM_SUBCLASS_ARMOR_MAIL                    = 3,
--     ITEM_SUBCLASS_ARMOR_PLATE                   = 4,
--     ITEM_SUBCLASS_ARMOR_BUCKLER                 = 5,
--     ITEM_SUBCLASS_ARMOR_SHIELD                  = 6,
--     ITEM_SUBCLASS_ARMOR_LIBRAM                  = 7,
--     ITEM_SUBCLASS_ARMOR_IDOL                    = 8,
--     ITEM_SUBCLASS_ARMOR_TOTEM                   = 9
-- };

-- enum ItemSubclassProjectile
-- {
--     ITEM_SUBCLASS_WAND                          = 0,        // ABS
--     ITEM_SUBCLASS_BOLT                          = 1,        // ABS
--     ITEM_SUBCLASS_ARROW                         = 2,
--     ITEM_SUBCLASS_BULLET                        = 3,
--     ITEM_SUBCLASS_THROWN                        = 4         // ABS
-- };

-- Refers to effect1(EFFECT_INDEX_0) / effect2 / effect3 in the spells SQL entry
-- enum SpellEffectIndex
-- {
--     EFFECT_INDEX_0     = 0,
--     EFFECT_INDEX_1     = 1,
--     EFFECT_INDEX_2     = 2
-- };

-- MiscValue for SPELL_AURA_ADD_FLAT_MODIFIER (107)
-- enum SpellModOp
-- {
--     SPELLMOD_DAMAGE                 = 0,
--     SPELLMOD_DURATION               = 1,
--     SPELLMOD_THREAT                 = 2,
--     SPELLMOD_ATTACK_POWER           = 3,
--     SPELLMOD_CHARGES                = 4,
--     SPELLMOD_RANGE                  = 5,
--     SPELLMOD_RADIUS                 = 6,
--     SPELLMOD_CRITICAL_CHANCE        = 7,
--     SPELLMOD_ALL_EFFECTS            = 8,
--     SPELLMOD_NOT_LOSE_CASTING_TIME  = 9,
--     SPELLMOD_CASTING_TIME           = 10,
--     SPELLMOD_COOLDOWN               = 11,
--     SPELLMOD_SPEED                  = 12,
--     SPELLMOD_COST                   = 14,
--     SPELLMOD_CRIT_DAMAGE_BONUS      = 15,
--     SPELLMOD_RESIST_MISS_CHANCE     = 16,
--     SPELLMOD_JUMP_TARGETS           = 17,
--     SPELLMOD_CHANCE_OF_SUCCESS      = 18,                   // Only used with SPELL_AURA_ADD_FLAT_MODIFIER and affects proc spells
--     SPELLMOD_ACTIVATION_TIME        = 19,
--     SPELLMOD_EFFECT_PAST_FIRST      = 20,
--     SPELLMOD_GLOBAL_COOLDOWN        = 21,
--     SPELLMOD_DOT                    = 22,
--     SPELLMOD_HASTE                  = 23,
--     SPELLMOD_SPELL_BONUS_DAMAGE     = 24,
--     SPELLMOD_MULTIPLE_VALUE         = 27,
--     SPELLMOD_RESIST_DISPEL_CHANCE   = 28,
--     MAX_SPELLMOD                    = 29,
-- };

-- For effectApplyAuraName1 13 and 135 all damage and healing is effectMiscValue1 126 (mask for all magic schools (non-physical))
-- MP/5s is SPELL_AURA_MOD_POWER_REGEN = 85

-- SPELL_AURA_ADD_PCT_MODIFIER = 108
-- For % damage, effectMiscValue has to be 8 (?)
-- For % healing, effectMiscValue has to be 8 (?)
-- For % DOT damage, effectMiscValue has to be 22?

-- SPELL_AURA_ADD_FLAT_MODIFIER = 107
-- For cooldown reduction effectMiscValue1 has to be 11

-- Behind target: attributesEx2 = 1048576 
-- SPELL_ATTR_EX2_INITIATE_COMBAT_POST_CAST    = 0x00100000,            // 20 Client will send CMSG_ATTACK_SWING after SMSG_SPELL_GO
-- Physical damage taken = SpellAuraName = 87 AND effectMiscValue = 1
-- Uses enum SpellSchoolMask for effectMiscValue
    -- SPELL_SCHOOL_MASK_NORMAL  = (1 << SPELL_SCHOOL_NORMAL), // PHYSICAL (Armor) // 1
    -- SPELL_SCHOOL_MASK_HOLY    = (1 << SPELL_SCHOOL_HOLY  ), // 2
    -- SPELL_SCHOOL_MASK_FIRE    = (1 << SPELL_SCHOOL_FIRE  ), // 4
    -- SPELL_SCHOOL_MASK_NATURE  = (1 << SPELL_SCHOOL_NATURE), // 8
    -- SPELL_SCHOOL_MASK_FROST   = (1 << SPELL_SCHOOL_FROST ), // 16
    -- SPELL_SCHOOL_MASK_SHADOW  = (1 << SPELL_SCHOOL_SHADOW), // 32
    -- SPELL_SCHOOL_MASK_ARCANE  = (1 << SPELL_SCHOOL_ARCANE), // 64

-- Element type for magic spell (school entry, 3rd entry after build in sql)
-- School
-- ID 	Name
-- 0 	SPELL_SCHOOL_NORMAL
-- 1 	SPELL_SCHOOL_HOLY
-- 2 	SPELL_SCHOOL_FIRE
-- 3 	SPELL_SCHOOL_NATURE
-- 4 	SPELL_SCHOOL_FROST
-- 5 	SPELL_SCHOOL_SHADOW
-- 6 	SPELL_SCHOOL_ARCANE

-- Used for miscValue in effectApplyAuraname SPELL_AURA_MOD_DAMAGE_DONE_CREATURE = 59
-- enum CreatureType
-- {
--     CREATURE_TYPE_BEAST            = 1,
--     CREATURE_TYPE_DRAGONKIN        = 2,
--     CREATURE_TYPE_DEMON            = 3,
--     CREATURE_TYPE_ELEMENTAL        = 4,
--     CREATURE_TYPE_GIANT            = 5,
--     CREATURE_TYPE_UNDEAD           = 6,
--     CREATURE_TYPE_HUMANOID         = 7,
--     CREATURE_TYPE_CRITTER          = 8,
--     CREATURE_TYPE_MECHANICAL       = 9,
--     CREATURE_TYPE_NOT_SPECIFIED    = 10,
--     CREATURE_TYPE_TOTEM            = 11,
-- };

-- Don't break invis on use:
-- SPELL_ATTR_EX_ALLOW_WHILE_STEALTHED 6
-- SPELL_ATTR_EX2_ALLOW_WHILE_INVISIBLE 15
-- SPELL_ATTR_EX2_NOT_AN_ACTION 29

-- Gear Mods
    -- Armor Penetration
        -- 10
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33714, 464, 1, 101, 21, 1, -1, 6, 1, 1, -11, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 20
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33715, 464, 1, 101, 21, 1, -1, 6, 1, 1, -21, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 30
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33716, 464, 1, 101, 21, 1, -1, 6, 1, 1, -31, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 40
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33717, 464, 1, 101, 21, 1, -1, 6, 1, 1, -41, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 50
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33718, 464, 1, 101, 21, 1, -1, 6, 1, 1, -51, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 60
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33719, 464, 1, 101, 21, 1, -1, 6, 1, 1, -61, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 70
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33720, 464, 1, 101, 21, 1, -1, 6, 1, 1, -71, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 80
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33721, 464, 1, 101, 21, 1, -1, 6, 1, 1, -81, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 90
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33722, 464, 1, 101, 21, 1, -1, 6, 1, 1, -91, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 100
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33723, 464, 1, 101, 21, 1, -1, 6, 1, 1, -101, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 150
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33724, 464, 1, 101, 21, 1, -1, 6, 1, 1, -151, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 200
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33725, 464, 1, 101, 21, 1, -1, 6, 1, 1, -201, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 250
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33726, 464, 1, 101, 21, 1, -1, 6, 1, 1, -251, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 300
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33727, 464, 1, 101, 21, 1, -1, 6, 1, 1, -301, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 350
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33728, 464, 1, 101, 21, 1, -1, 6, 1, 1, -351, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 400
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33729, 464, 1, 101, 21, 1, -1, 6, 1, 1, -401, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 450
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33730, 464, 1, 101, 21, 1, -1, 6, 1, 1, -451, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 500
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33731, 464, 1, 101, 21, 1, -1, 6, 1, 1, -501, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 550
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33732, 464, 1, 101, 21, 1, -1, 6, 1, 1, -551, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 600
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33733, 464, 1, 101, 21, 1, -1, 6, 1, 1, -601, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 650
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33734, 464, 1, 101, 21, 1, -1, 6, 1, 1, -651, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 700
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33735, 464, 1, 101, 21, 1, -1, 6, 1, 1, -701, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

        -- 1000
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33736, 464, 1, 101, 21, 1, -1, 6, 1, 1, -1001, 1, 0, -1, 1, 123, 1, 2004, 'Armor Penetration', 4128894, '0', 4128894, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 4128892, -1, 1, 1);

    -- +Threat
        -- +1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33737, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 0, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33738, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 1, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33739, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 2, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33740, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 3, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33741, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 4, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +6%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33742, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 5, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +7%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33743, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 6, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +8%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33744, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 7, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +9%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33745, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 8, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

        -- +10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33746, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Increase', 2031678, 2031660, 'You generate $s1% more threat.', 2031678, 2031678, 1, 1, 1);

    -- -Threat
        -- -1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33747, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -2, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33748, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -3, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33749, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -4, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33750, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -5, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33751, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -6, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -6%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33752, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -7, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -7%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33753, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -8, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -8%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33754, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -9, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -9%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33755, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -10, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

        -- -10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33756, 5302, 6, 1, 464, 1, 101, 21, 1, -1, 6, 1, 1, -11, 1, -1, -1, 1, 10, 127, 0, 331, 'Threat Decrease', 2031678, 2031660, 'You generate $s1% less threat.', 2031678, 2031678, 1, 1, 1);

    -- Counter
        -- 1%
        REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33660, 448, 67108864, 1, 131112, 1, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
        'Counter 01', 4128894, '', 4128894, 'Gives you a $h1% chance to counter the enemy after being hit.', 4128894, 4128892, -1, 1);

        -- 2%
        REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33661, 448, 67108864, 1, 131112, 2, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
        'Counter 02', 4128894, '', 4128894, 'Gives you a $h1% chance to counter the enemy after being hit.', 4128894, 4128892, -1, 1);

        -- 3%
        REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33662, 448, 67108864, 1, 131112, 3, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
        'Counter 03', 4128894, '', 4128894, 'Gives you a $h1% chance to counter the enemy after being hit.', 4128894, 4128892, -1, 1);

        -- 4%
        REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33663, 448, 67108864, 1, 131112, 4, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
        'Counter 04', 4128894, '', 4128894, 'Gives you a $h1% chance to counter the enemy after being hit.', 4128894, 4128892, -1, 1);

        -- 5%
        REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33664, 448, 67108864, 1, 131112, 5, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
        'Counter 05', 4128894, '', 4128894, 'Gives you a $h1% chance to counter the enemy after being hit.', 4128894, 4128892, -1, 1);

    -- Reduced Physical Damage Taken

    -- Reduced Magic Damage Taken
        -- -1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33672, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -2, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33673, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -3, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33674, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -4, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33675, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -5, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33676, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -6, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -6%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33677, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -7, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -7%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33678, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -8, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -8%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33679, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -9, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -9%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33680, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -10, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);

        -- -10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33681, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -11, 0, -1, -1, 1, 87, 126, 1880, 'Reduced Magic Damage Taken 01', 2031678, 2031678, 'Reduces all spell damage taken by $s1%.', 2031678, 2031628, 6, -1, 1);
    -- -DT
    -- Melee Haste
        -- 1%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33757, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 2%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33758, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 3%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33759, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);
        
        -- 4%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33760, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 3, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);
        
        -- 5%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33761, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 6%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33762, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 5, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);
        
        -- 10%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33763, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 20%
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33764, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 19, 0, -1, -1, 1, 138, 1, 'Melee Haste', 983070, 983052, 'Increases your Melee attack speed by $s1%.', 983052, 983052, -1, 1, 1, 1);

    -- Ranged Haste
    
    -- 1H wep dmg
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33765, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 0, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33766, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 1, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33767, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 2, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33768, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 3, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33769, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 4, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33770, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 9, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 20%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33771, 5086, 464, 1, 101, 1, 21, 1, 2, 43153, 6, 1, 1, 19, 0, -1, -1, 1, 79, 1, 1461, 50, 'One-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with One-Handed Melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

    -- 2H wep dmg (Does attributes need to be 262352?)
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33772, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 0, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33773, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 1, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33774, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 2, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33775, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 3, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33776, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 4, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33777, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 9, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

        -- 20%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33778, 5086, 464, 1, 101, 1, 1, 2, 136546, 6, 1, 1, 19, 0, -1, -1, 1, 79, 1, 366, 50, 'Two-Handed Weapon Damage', 2031678, 8323134, 'Increases the damage you deal with two-handed melee weapons by $s1%.', 2031678, 2031676, -1, 1, 1, 1);

    -- Crit damage
    -- Double Attack (SPELL_AURA_EXTRA_ATTACKS = 70 ?)
    -- Triple Attack (SPELL_AURA_EXTRA_ATTACKS = 70 ?)
    -- Damage Behind
    -- Damage Front
    -- Energy/s
    -- Rage/s
    -- Damage vs elites and bosses
    -- Damage vs creatures (SPELL_AURA_MOD_DAMAGE_DONE_CREATURE = 59)
        -- Demon Slayer
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33796, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 59, 4, 90, 'Demon Slayer', 8323134, '', 8323134, 'Increases damage done to Demons by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33797, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 59, 4, 90, 'Demon Slayer', 8323134, '', 8323134, 'Increases damage done to Demons by $s1%.', 8323134, 2031676, -1, 1, 1, 1);
        
        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33798, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 59, 4, 90, 'Demon Slayer', 8323134, '', 8323134, 'Increases damage done to Demons by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- +4% (spellId 4645)

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33799, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 59, 4, 90, 'Demon Slayer', 8323134, '', 8323134, 'Increases damage done to Demons by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- +8% (spellId 4646)

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33800, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 59, 4, 90, 'Demon Slayer', 8323134, '', 8323134, 'Increases damage done to Demons by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- +12% (spellId 4647)
        -- +17% (spellId 4648)
        -- +22% (spellId 4649)
        -- +28% (spellId 4650)

        -- Elemental Slayer
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33801, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 59, 8, 94, 'Elemental Slayer', 8323134, '', 8323134, 'Increases damage done to Elementals by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33802, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 59, 8, 94, 'Elemental Slayer', 8323134, '', 8323134, 'Increases damage done to Elementals by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33803, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 59, 8, 94, 'Elemental Slayer', 8323134, '', 8323134, 'Increases damage done to Elementals by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 4% (spellId 4678)

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33804, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 59, 8, 94, 'Elemental Slayer', 8323134, '', 8323134, 'Increases damage done to Elementals by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 8% (spellId 4680)

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33805, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 59, 8, 94, 'Elemental Slayer', 8323134, '', 8323134, 'Increases damage done to Elementals by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 12% (spellId 4681)
        -- +17% (spellId 4683)
        -- +22% (spellId 4684)
        -- +28% (spellId 4685)

        -- Dragon Slayer
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33805, 4222, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 59, 2, 127, 'Dragon Slayer', 7274526, '', 7274526, 'Increases damage done to Dragons by $s1%.', 7274526, 983052, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33806, 4222, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 59, 2, 127, 'Dragon Slayer', 7274526, '', 7274526, 'Increases damage done to Dragons by $s1%.', 7274526, 983052, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33807, 4222, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 59, 2, 127, 'Dragon Slayer', 7274526, '', 7274526, 'Increases damage done to Dragons by $s1%.', 7274526, 983052, -1, 1, 1, 1);


        -- 4% (spellId 4661)

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33808, 4222, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 59, 2, 127, 'Dragon Slayer', 7274526, '', 7274526, 'Increases damage done to Dragons by $s1%.', 7274526, 983052, -1, 1, 1, 1);

        -- 8% (spellId 4662)

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33809, 4222, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 59, 2, 127, 'Dragon Slayer', 7274526, '', 7274526, 'Increases damage done to Dragons by $s1%.', 7274526, 983052, -1, 1, 1, 1);

        -- 12% (spellId 4663)
        -- +17% (spellId 4664)
        -- +22% (spellId 4665)
        -- +28% (spellId 4666)

        -- Undead Slayer
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33810, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 59, 32, 170, 'Undead Slayer', 8323134, '', 8323134, 'Increases damage done to Undead by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33811, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 59, 32, 170, 'Undead Slayer', 8323134, '', 8323134, 'Increases damage done to Undead by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 3% (spellId 4714)

        -- 4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33812, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 3, 0, -1, -1, 1, 59, 32, 170, 'Undead Slayer', 8323134, '', 8323134, 'Increases damage done to Undead by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33813, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 59, 32, 170, 'Undead Slayer', 8323134, '', 8323134, 'Increases damage done to Undead by $s1%.', 8323134, 2031676, -1, 1, 1, 1);
        
        -- 6% (spellId 4717)

        -- 9% (spellId 4718)

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33814, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 59, 32, 170, 'Undead Slayer', 8323134, '', 8323134, 'Increases damage done to Undead by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 13% (spellId 4719)
        -- +17% (spellId 4720)
        -- +22% (spellId 4721)
        -- +28% (spellId 4722)

        -- Humanoid Slayer
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33815, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33816, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33817, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33818, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 3, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33819, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33820, 5086, 464, 1, 101, 1, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 59, 64, 170, 'Humanoid Slayer', 8323134, '', 8323134, 'Increases damage done to Humanoids by $s1%.', 8323134, 2031676, -1, 1, 1, 1);

        -- Beast Slayer
        -- Mechanical Slayer

    -- Healing recieved
        -- 1%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33779, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 0, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 2%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33780, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 1, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 3%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33781, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 2, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 4%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33782, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 3, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 5%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33783, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 4, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 6%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33784, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 5, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 7%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33785, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 6, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 8%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33786, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 7, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 9%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33787, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 8, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 10%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33788, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 9, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

        -- 20%
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33789, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 19, 0, -1, -1, 1, 118, 127, 1, 'Healing Recieved', 983070, 983052, 'Increases healing recieved by $s1%.', 983052, 983052, -1, 1, 1, 1);

    
    -- Spell Interrupt rate down
    -- Spell Penetration
        -- -1
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33790, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -2, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);

        -- -2
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33791, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -3, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);

        -- -3
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33792, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -4, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);

        -- -4
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33793, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -5, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);

        -- -5
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33794, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -6, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);

        -- -10
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33795, 5086, 192, 1, 101, 21, 1, -1, 6, 1, 1, -11, 0, -1, -1, 1, 123, 124, 1, 'Spell Penetration', 2031678, 2031660, 'Decreases the magical resistances of your spell targets by $s1.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- -20 (spellId 26283)

    -- MP cost reduction (SPELL_AURA_MOD_POWER_COST_SCHOOL_PCT = 72? SPELL_AURA_MOD_POWER_COST_SCHOOL = 73 ?)

    -- Feral AP
        -- 30
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33597, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 29, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+30)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 40
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33598, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 39, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+40)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 50
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33599, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+50)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 60
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33600, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 59, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+60)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 70
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33601, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 69, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+70)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 80
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33602, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 79, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+80)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 90
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33603, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 89, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+90)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 100
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33604, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 99, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+100)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 110
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33605, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 109, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+110)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 120
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33606, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 119, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+120)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);
        
        -- 130
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `stancesNot`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33607, 5086, 192, 145, 671588450, 1, 101, 21, 1, -1, 6, 1, 1, 129, 0, -1, -1, 1, 99, 1, 'Attack Power - Feral (+130)', 2031678, 2031660, '+$s1 Attack Power in Cat, Bear, and Dire Bear forms only.', 2031678, 2031660, -1, 1, 1, 1);


-- Racials

    -- Hardiness
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=4222;
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=4878;
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=5086;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=1 AND `spell`=20573;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=3 AND `spell`=20573;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=4 AND `spell`=20573;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=7 AND `spell`=20573;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=9 AND `spell`=20573;

    -- Will of the Forsaken
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4222;
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4449;
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4544;
    DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4695;

    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=1 AND `spell`=7744;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=4 AND `spell`=7744;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=5 AND `spell`=7744;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=8 AND `spell`=7744;
    DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=9 AND `spell`=7744;

    -- Priest racial spells (Fear Ward, Desperate Prayer)
    -- Given to Dwarf, Human, and Blood Elf
    UPDATE `mangos`.`skill_line_ability` SET 
    `race_mask`=517 
    WHERE spell_id IN(6346, 13908, 19236, 19238, 19240, 19241, 19242, 19243);

    -- Blood Elf
    -- +15 Enchanting
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33821, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 14, 1, -1, -1, 1, 98, 333, 578, 'Enchanting Mastery', 2031678, 'Racial Passive', 2031678, 'Enchanting skill increased by $s1.', 2031678, 2031660, 1);

    -- Dagger Skill +5
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33822, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 4, 1, -1, -1, 1, 98, 173, 1504, 'Dagger Specialization', 2031678, 'Racial Passive', 2031678, 'Skill with Daggers increased by $s1.', 2031678, 2031660, 1);

    -- All Resistances +10
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33823, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 22, 126, 459, 'All Resistance', 2031678, 'Racial Passive', 2031678, 'All Resistances increased by $s1.', 2031678, 2031676, 1);

    -- + (Active) +20% Melee / Ranged / Casting speed for 20 seconds
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx2`, `stances`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgMultiplier1`) VALUES (33824, 4878, 262160, 32, 524288, 134217728, 1, 180000, 101, 18, 1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, 19, 19, 19, 1, -1, -1, 1, 1, 1, 138, 140, 65, 5727, 548, 'Mana Rush', 2031678, 'Racial', 2031678, 'Increases your attack and casting speed by $s1% for $d.', 2031678, 'Attack and casting speed increased.', 2031678, 133, 1500, 1);

-- Weapon Skills
    -- Bow
        -- +5
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33637, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 4, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +6
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33638, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 5, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +7
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33639, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 6, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +8
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33640, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 7, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +9
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33641, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 8, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +10
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33642, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +11
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33643, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 10, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +12
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33644, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 11, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +13
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33645, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 12, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +14
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33646, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 13, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);
        -- +15
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33647, 5086, 80, 1, 101, 21, 1, -1, 6, 1, 1, 14, 1, -1, -1, 1, 98, 45, 1814, 'Bow Skill', 2031678, 2031678, 'Skill with Bow Weapons increased by $s1.', 2031678, 2031660, 1);

        -- Gun
            -- +5
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33649, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 4, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +6
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33650, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 5, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +7
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33651, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 6, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +8
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33652, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 7, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +9
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33653, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 8, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +10
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33654, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +11
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33655, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 10, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +12
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33656, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 11, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +13
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33657, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 12, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +14
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33658, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 13, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);
            -- +15
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33659, 4222, 80, 1, 101, 21, 1, -1, 6, 1, 1, 14, 1, -1, -1, 1, 98, 46, 274, 'Gun Skill', 983070, 983070, 'Guns skill increased by $s1.', 983054, 983052, 1);

-- Rend
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=772;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=27 WHERE  `entry`=6546;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=35 WHERE  `entry`=6547;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=43 WHERE  `entry`=6548;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=55 WHERE  `entry`=11572;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=71 WHERE  `entry`=11573;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=83 WHERE  `entry`=11574;

-- Demon Skin / Demon Armor (HP Regen Tripled)
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=8 WHERE  `entry`=687;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=14 WHERE  `entry`=696;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=2 WHERE  `entry`=706;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=5 WHERE  `entry`=1086;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=8 WHERE  `entry`=11733;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=11 WHERE  `entry`=11734;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=14 WHERE  `entry`=11735;
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=20 WHERE  `entry`=706;
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=26 WHERE  `entry`=1086;
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=32 WHERE  `entry`=11733;
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=38 WHERE  `entry`=11734;
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=44 WHERE  `entry`=11735;

-- Curse of Weakness
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-10 WHERE  `entry`=702 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-19 WHERE  `entry`=1108 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-31 WHERE  `entry`=6205 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-46 WHERE  `entry`=7646 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-67 WHERE  `entry`=11707 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-93 WHERE  `entry`=11708 AND `build`=5302;

-- Life Tap
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=59 WHERE  `entry`=1454 AND `build`=5875;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=194 WHERE  `entry`=1455 AND `build`=5875;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=389 WHERE  `entry`=1456 AND `build`=5875;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=629 WHERE  `entry`=11687 AND `build`=5875;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=899 WHERE  `entry`=11688 AND `build`=5875;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1259 WHERE  `entry`=11689 AND `build`=5875;

-- Searing Pain
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=5676 AND `build_min`=0 AND `build_max`=5875;
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=17919 AND `build_min`=0 AND `build_max`=5875;
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=17920 AND `build_min`=0 AND `build_max`=5875;
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=17921 AND `build_min`=0 AND `build_max`=5875;
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=17922 AND `build_min`=0 AND `build_max`=5875;
UPDATE `mangos`.`spell_threat` SET `multiplier`=0 WHERE  `entry`=17923 AND `build_min`=0 AND `build_max`=5875;

UPDATE `mangos`.`spell_template` SET `description`='Inflict searing pain on the enemy target, causing $s1 Fire damage.' WHERE  `entry`=17922 AND `build`=5086;
UPDATE `mangos`.`spell_template` SET `description`='Inflict searing pain on the enemy target, causing $s1 Fire damage.' WHERE  `entry`=17921 AND `build`=5086;
UPDATE `mangos`.`spell_template` SET `description`='Inflict searing pain on the enemy target, causing $s1 Fire damage.' WHERE  `entry`=17920 AND `build`=5086;
UPDATE `mangos`.`spell_template` SET `description`='Inflict searing pain on the enemy target, causing $s1 Fire damage.' WHERE  `entry`=17919 AND `build`=5086;
UPDATE `mangos`.`spell_template` SET `description`='Inflict searing pain on the enemy target, causing $s1 Fire damage.' WHERE  `entry`=5676 AND `build`=5086;

-- Rain of fire
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=83 WHERE  `entry`=5740;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=191 WHERE  `entry`=6219;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=309 WHERE  `entry`=11677;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=451 WHERE  `entry`=11678;

-- Hellfire
UPDATE `mangos`.`spell_template` SET `manaCost`=0 WHERE  `entry`=1949;
UPDATE `mangos`.`spell_template` SET `manaCost`=0 WHERE  `entry`=11683;
UPDATE `mangos`.`spell_template` SET `manaCost`=0 WHERE  `entry`=11684;

-- Drain Soul (Only usable on targets <= 20% HP, damage increased by 4x)
UPDATE `mangos`.`spell_template` SET `targetAuraState`=2 WHERE  `entry`=1120;
UPDATE `mangos`.`spell_template` SET `targetAuraState`=2 WHERE  `entry`=8288;
UPDATE `mangos`.`spell_template` SET `targetAuraState`=2 WHERE  `entry`=8289;
UPDATE `mangos`.`spell_template` SET `targetAuraState`=2 WHERE  `entry`=11675;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=87 WHERE  `entry`=1120;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=247 WHERE  `entry`=8288;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=471 WHERE  `entry`=8289;
UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=727 WHERE  `entry`=11675;

-- Create Healthstone
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=3 WHERE NAME LIKE 'Create Healthstone%';

-- Firebolt (Imp)
UPDATE `mangos`.`spell_template` SET `manaCost`=2 WHERE  `entry`=3110;
UPDATE `mangos`.`spell_template` SET `manaCost`=5 WHERE  `entry`=7799;
UPDATE `mangos`.`spell_template` SET `manaCost`=7 WHERE  `entry`=7800;
UPDATE `mangos`.`spell_template` SET `manaCost`=10 WHERE  `entry`=7801;
UPDATE `mangos`.`spell_template` SET `manaCost`=15 WHERE  `entry`=7802;
UPDATE `mangos`.`spell_template` SET `manaCost`=20 WHERE  `entry`=11762;
UPDATE `mangos`.`spell_template` SET `manaCost`=25 WHERE  `entry`=11763;

-- Torment (Voidwalker)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=89 WHERE  `entry`=3716;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=149 WHERE  `entry`=7809;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=249 WHERE  `entry`=7810;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=429 WHERE  `entry`=7811;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=599 WHERE  `entry`=11774;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1199 WHERE  `entry`=11775;

UPDATE `mangos`.`spell_template` SET `manaCost`=10 WHERE  `entry`=3716;
UPDATE `mangos`.`spell_template` SET `manaCost`=20 WHERE  `entry`=7809;
UPDATE `mangos`.`spell_template` SET `manaCost`=30 WHERE  `entry`=7810;
UPDATE `mangos`.`spell_template` SET `manaCost`=45 WHERE  `entry`=7811;
UPDATE `mangos`.`spell_template` SET `manaCost`=55 WHERE  `entry`=11774;
UPDATE `mangos`.`spell_template` SET `manaCost`=70 WHERE  `entry`=11775;

-- Suffering (Voidwalker)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=299 WHERE  `entry`=17735;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=599 WHERE  `entry`=17750;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=899 WHERE  `entry`=17751;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=429 WHERE  `entry`=17752;

UPDATE `mangos`.`spell_template` SET `manaCost`=25 WHERE  `entry`=17735;
UPDATE `mangos`.`spell_template` SET `manaCost`=50 WHERE  `entry`=17750;
UPDATE `mangos`.`spell_template` SET `manaCost`=75 WHERE  `entry`=17751;
UPDATE `mangos`.`spell_template` SET `manaCost`=100 WHERE `entry`=17752;

-- TODO:
-- Shadow Arts SnD animation
-- More interactive leveling 35+ more elite bosses and multiple mob pulls + boss for a quest
-- Moonfire - > stacking MP5 buff idol
-- More feral AP spells with lower values put on lower level items (40-59) and edit ones i put on some items
-- Rabies AOE str/agi down + nature damage. 20 rage. 30s CD. Bear / Dire bear form only (lvl 46 / 58) OR
-- Vitality to left of imp KS, +4%/8% stamina 
-- combat 31 instant attack + slows targets attack speed and grants attack speed to self. +3 CP
-- Endurance moved to right of Imp KS
-- Imp distract -25% hit rate for 10s and -10/-20 energy cost AND +10 pickpocket range (Deadliness row, #0)
-- Counter should require 5/5 lightning reflxes
-- Minor idol of elune says cast time reduced by 100%? Should be 1s

-- Rogue
    -- TODO: Add spellbook to learn Envenom Rank3
    -- TODO: Put Moment of Opportunity in Improved Sinister Strike instead of on Sinister Strike. No longer needs to be a script then?
    -- TODO: Make Coldblood an aura script, don't remove aura if spellId is equal to one of the 3 MH mutilate spellIds
    -- Poisons descriptions remove charges text

    -- Shiv
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33683, 4878, 327696, 134218240, 16777216, 1, 101, 1, 1, 3, 20, 2, 2, 173555, 121, 80, 77, 1, 1, 1, 1, -1, 1, 0, -1, 6, 6, 6, 4, 253, 2072, 'Shiv', 2031678, 'Rank 1', 2031678, 'Instantly attack with your off-hand weapon with a 100% chance to apply the poison from your off-hand weapon to the target. Additionally, removes an Enrage effect from your target. Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 137447342080, 2, 2, -1, 1, 1, 1, 128, 'spell_rogue_shiv');
    UPDATE `mangos`.`spell_template` SET `effect2`=38, `effectBonusCoefficient2`=1, `effectMiscValue2`=9, `nameSubtext`='', `description`='Instantly attack with your off-hand weapon with a 100% chance to apply the poison from your off-hand weapon to the target. Additionally, removes $s2 Frenzy effect from an enemy creature.' WHERE  `entry`=33683 AND `build`=4878;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15095, 5875, 38, 33683, 8, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33684, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33683, 107, 2072, 0, 'Shiv', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33684, 46000, 50);

    -- Dazing Strike
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33588, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 3, 100, 2, 2, 173555, 31, 80, 6, 1, 1, 1, 1, 1, 1, 114, 9, 1, 0, -1, 6, 6, 6, 54, 253, 2062, 'Dazing Strike', 2031678, 2031678, 'An instant strike that causes $s1% weapon damage and reduces your targets chance to hit by $s3% for $d.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);

    UPDATE `mangos`.`spell_template` SET `durationIndex`=1, `effectBasePoints3`=-11, `auraDescription`='Chance to hit reduced by $s3%.', `spellFamilyFlags`=34359738368 WHERE  `entry`=33588;
    UPDATE `mangos`.`spell_template` SET `effect3`=77, `effectBasePoints3`=0, `effectApplyAuraName3`=4, `description`='An instant strike that causes $s1% weapon damage and reduces your targets chance to hit by $33557s1% for $d. Has a 20% chance to reduce the Energy cost of your next Sinister Strike ability by $33556s1.  Awards $s2 combo $lpoint:points;.', `script_name`='spell_rogue_dazing_strike' WHERE  entry = 33588;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15092, 5875, 38, 33588, 8, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33589, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33588, 107, 2062, 0, 'Dazing Strike', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33589, 300, 10);

    -- Dazing Strike (Debuff Aura -3% hit rate)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33557, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 1, 2, 2, 173555, 6, 1, 1, -4, 1, 0, -1, 6, 54, 4, 253, 2062, 'Dazing Strike', 2031678, 2031678, 'Reduces the targets chance to hit by $s1%.', 2031678, 'Chance to hit reduced by $s1%.', 2031676, 8, 2, 2, -1, 1, 1, 1, 128, '0');

    -- Sinister Strike (Dazing Strike Proc added)
    UPDATE `mangos`.`spell_template` SET `effect3`=77, `effectApplyAuraName3`=4, `effectImplicitTargetA3`=6, `description`='An instant strike that causes $s1 damage in addition to your normal weapon damage. Also has a 50% chance to reduce the Energy cost of your next Dazing Strike ability by $33587s1. Awards $s2 combo $lpoint:points;.', `script_name`='spell_rogue_sinister_strike' WHERE  entry IN (1752, 1757, 1758, 1759, 1760, 8621, 11293, 11294);

    -- Dazing Strike proc Aura (Sinister Opening)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33556, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 8, 6, 1, -1, -1, 6, 1, 1, -41, 0, -1, -1, 1, 107, 2, 14, 2736, 130, 'Sinister Opening', 4128830, 4128828, 4128828, 'Reduces the Energy cost of your next Sinister Strike ability by $s1.', 4128830, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `spellFamilyName`=8 WHERE  `entry`=33556;

    -- Sinister Strike proc Aura (Moment of Opportunity)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33587, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 8, 6, 1, -1, -1, 6, 1, 1, -91, 0, -1, -1, 1, 107, 34359738368, 14, 2736, 2062, 'Moment of Opportunity', 4128830, 4128828, 4128828, 'Reduces the Energy cost of your next Dazing Strike ability by $s1.', 4128830, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `spellFamilyName`=8 WHERE  `entry`=33587;

    -- Slice and Dice (No longer breaks stealth)
    UPDATE `mangos`.`spell_template` SET `attributesEx`=4195360, `attributesEx2`=268451844 WHERE  `entry`=5171 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `attributesEx`=4195360, `attributesEx2`=268451844 WHERE  `entry`=6774 AND `build`=5875;

    -- Envenom (Removes Deadly Poison off target and restores energy as well as deals damage based on amount removed)
    -- Rank 1
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33574, 5086, 3, 327696, 134218240, 1024, 1, 20000, 101, 51, 40, 40, 39, 3, 20, 2, -1, -1, 2, 3, 1, 0.5, 89, 0.154, 0, -1, 6, 6, 3444, 2060, 'Envenom', 2031678, 'Rank 1', 2031678, 'Consumes your Deadly Poison on the target causing $s1 Nature damage and restores $s3 Energy per dose consumed.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 17179869184, 1, 1, -1, 1, 1, 1, 2060, 'spell_rogue_envenom');
    UPDATE `mangos`.`spell_template` SET `effect2`=80, `effectDieSides2`=1, `effectBaseDice2`=1 WHERE  `entry`=33574;
    UPDATE `mangos`.`spell_template` SET `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=9, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectMiscValue3`=3 WHERE  `entry`=33574;

    -- Rank 2
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33575, 5086, 3, 327696, 134218240, 1024, 1, 20000, 101, 51, 40, 40, 39, 3, 20, 2, -1, -1, 2, 3, 1, 0.5, 129, 0.154, 0, -1, 6, 6, 3444, 2060, 'Envenom', 2031678, 'Rank 2', 2031678, 'Consumes your Deadly Poison on the target causing $s1 Nature damage and restores $s3 Energy per dose consumed.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 17179869184, 1, 1, -1, 1, 1, 1, 2060, 'spell_rogue_envenom');
    UPDATE `mangos`.`spell_template` SET `effect2`=80, `effectDieSides2`=1, `effectBaseDice2`=1 WHERE  `entry`=33575;
    UPDATE `mangos`.`spell_template` SET `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=9, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectMiscValue3`=3 WHERE  `entry`=33575;

    -- Rank 3 (Spellbook only)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33576, 5086, 3, 327696, 134218240, 1024, 1, 20000, 101, 51, 40, 40, 39, 3, 20, 2, -1, -1, 2, 3, 1, 0.5, 201, 0.154, 0, -1, 6, 6, 3444, 2060, 'Envenom', 2031678, 'Rank 3', 2031678, 'Consumes your Deadly Poison on the target causing $s1 Nature damage and restores $s3 Energy per dose consumed.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 17179869184, 1, 1, -1, 1, 1, 1, 2060, 'spell_rogue_envenom');
    UPDATE `mangos`.`spell_template` SET `effect2`=80, `effectDieSides2`=1, `effectBaseDice2`=1 WHERE  `entry`=33576;
    UPDATE `mangos`.`spell_template` SET `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=9, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectMiscValue3`=3 WHERE  `entry`=33576;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15088, 5875, 253, 33574, 8, 1, 33575);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15089, 5875, 253, 33575, 8, 1, 33576);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15090, 5875, 253, 33576, 8, 1, 0);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33613, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33574, 107, 2060, 0, 'Envenom', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33577, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33575, 107, 2060, 0, 'Envenom', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33574, 0,     33574, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33575, 33574, 33574, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33576, 33575, 33574, 3);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33613, 20000, 40);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33577, 33000, 48);

    -- Puncture (10 energy 20s duration DOT)
    -- Rank 1
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33567, 4878, 15, 327696, 134218240, 1024, 1, 20000, 101, 1, 1, 18, 3, 10, 2, 2, 173555, 6, 80, 1, 1, 1, 1, 35, 1, 0, -1, 6, 6, 3, 3000, 250, 2063, 'Puncture', 2031678, 'Rank 1', 2031678, 'Punctures your target, causing them to bleed for $o1 over 20 seconds, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 2031678, '$s1 damage every $t1 seconds.', 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=8589934592 WHERE  `entry`=33567;

    -- Rank 2
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33568, 4878, 15, 327696, 134218240, 1024, 1, 20000, 101, 1, 1, 18, 3, 10, 2, 2, 173555, 6, 80, 1, 1, 1, 1, 52, 1, 0, -1, 6, 6, 3, 3000, 250, 2063, 'Puncture', 2031678, 'Rank 2', 2031678, 'Punctures your target, causing them to bleed for $o1 over 20 seconds, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 2031678, '$s1 damage every $t1 seconds.', 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=8589934592 WHERE  `entry`=33568;

    -- Rank 3
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33569, 4878, 15, 327696, 134218240, 1024, 1, 20000, 101, 1, 1, 18, 3, 10, 2, 2, 173555, 6, 80, 1, 1, 1, 1, 72, 1, 0, -1, 6, 6, 3, 3000, 250, 2063, 'Puncture', 2031678, 'Rank 3', 2031678, 'Punctures your target, causing them to bleed for $o1 over 20 seconds, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 2031678, '$s1 damage every $t1 seconds.', 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=8589934592 WHERE  `entry`=33569;

    -- Rank 4
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33570, 4878, 15, 327696, 134218240, 1024, 1, 20000, 101, 1, 1, 18, 3, 10, 2, 2, 173555, 6, 80, 1, 1, 1, 1, 100, 1, 0, -1, 6, 6, 3, 3000, 250, 2063, 'Puncture', 2031678, 'Rank 4', 2031678, 'Punctures your target, causing them to bleed for $o1 over 20 seconds, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 2031678, '$s1 damage every $t1 seconds.', 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=8589934592 WHERE  `entry`=33570;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15084, 5875, 253, 33567, 8, 1, 33568);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15085, 5875, 253, 33568, 8, 1, 33569);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15086, 5875, 253, 33569, 8, 1, 33570);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15087, 5875, 253, 33570, 8, 1, 0);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33571, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33568, 107, 2063, 0, 'Puncture', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33572, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33569, 107, 2063, 0, 'Puncture', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33573, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33570, 107, 2063, 0, 'Puncture', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33567, 0,     33567, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33568, 33567, 33567, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33569, 33568, 33567, 3);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33570, 33569, 33567, 4);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33571, 46000, 42);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33572, 54000, 52);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33573, 54000, 60);
    
    -- Corsair's Slash (3 Combo Points + Grants a random buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33555, 4878, 2424848, 134218240, 263168, 1, 30000, 101, 1, 1, 1, 3, 10, 2, 2, 173555, 31, 80, 1, 1, 1, 1, 149, 1, 0, -1, 6, 6, 6, 54, 253, 2071, 'Corsair\'s Slash', 2031678, 2031678, 'An instant strike that causes $s1% weapon damage.  Grants a random buff on use. Always hits, and cannot be blocked, dodged or parried.  Awards $s2 combo $lpoint:points;.', 2031678, '0', 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128, 'spell_rogue_corsairs_slash');
        UPDATE `mangos`.`spell_template` SET `effect3`=77, `effectBasePoints2`=2, `spellFamilyFlags`=68719476736 WHERE  `entry`=33555;

        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15091, 5875, 38, 33555, 8, 1);

        -- Buffs

        -- Broadside (+1 Combo Point generated)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33590, 65552, 1, 101, 9, 3, 1, -1, 6, 1, 1, 1, -1, -1, 1, 4, 3260, 2065, 'Broadside', 4128894, 4128892, 'Your combo-generating abilities have a 50% chance to generate $s1 additional combo point.', 4128894, 'Your combo-generating abilities have a 50% chance to generate $s1 additional combo point.', 4128894, 0, 0, -1, 1);

        -- Buried Treasure (+2 Energy per sec)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33591, 65552, 1, 101, 9, 3, 1, -1, 6, 1, 1, 1, 1, -1, -1, 1, 24, 1000, 3, 3260, 2066, 'Buried Treasure', 4128894, 4128892, 'Generate $s1 Energy per sec.', 4128894, 'Gaining $s1 Energy per sec.', 4128894, 0, 0, -1, 1);

        -- Grand Melee (2% double attack (Hand of Justice))
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33592, 5302, 65552, 1, 20, 2, 60, 60, 9, 1, -1, 6, 1, 1, 1, -1, -1, 1, 42, 15601, 2067, 'Grand Melee', 2031678, 2031676, '$h% chance on melee hit to gain 1 extra attack.', 2031678, 2031676, -1, 1);
        UPDATE `mangos`.`spell_template` SET `auraDescription`='$h% chance on melee hit to gain 1 extra attack.' WHERE  `entry`=33592 AND `build`=5302;

        REPLACE `mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33592, 2000);

        -- Ruthless Precision (5% increased crit chance)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33593, 65552, 1, 30000, 101, 9, 3, 1, -1, 6, 1, 1, 4, 1, -1, -1, 1, 52, 3260, 2068, 'Ruthless Precision', 4128894, 4128892, 'Increases your critical hit chance by $s1% for $d.', 4128894, 'Critical hit chance increased by $s1%.', 4128894, 0, 0, -1, 1);

        -- Skull and Crossbones (1 + 17.66 armor Armor Penetration per character level)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33594, 65552, 1, 0, 101, 9, 3, 1, -1, 6, 1, 1, 999, 1, -1, -1, 1, 123, 1, 3260, 2069, 'Skull and Crossbones', 4128894, 4128892, 'Causes your attacks to ignore $s1 of your target\'s Armor.', 4128894, 'Attacks ignore $s1 of target\'s Armor.', 4128894, 0, 0, -1, 1);
        UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=-17.66, `effectBasePoints1`=-1 WHERE  `entry`=33594 AND `build`=5875;
        
        -- True Bearing (-10 Energy cost of your combo-generating abilities)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33595, 65552, 1, 0, 101, 9, 3, 1, -1, 6, 1, 1, -11, 1, -1, -1, 1, 107, 107474847502, 14, 3260, 2070, 'True Bearing', 4128894, 4128892, 'Reduces the Energy cost of your combo-generating abilities by $s1 for $d.', 4128894, 'Energy cost of combo-generating abilities reduced by $s1.', 4128894, 0, 0, -1, 1);
        UPDATE `mangos`.`spell_template` SET `spellFamilyName`=8 WHERE  `entry`=33595 AND `build`=5875;

    -- Slice and Dice duration increase (21 max - > 36s max [Same as MOoP])
    UPDATE `mangos`.`spell_template` SET `durationIndex`=325 WHERE entry IN(5171, 6774);
    UPDATE `mangos`.`spell_template` SET `description`='Finishing move that increases melee attack speed by $s2%.  Lasts longer per combo point:\r\n   1 point : 17 seconds\r\n   2 points: 22 seconds\r\n   3 points: 26 seconds\r\n   4 points: 31 seconds\r\n   5 points: 36 seconds' WHERE entry IN(5171, 6774);

    -- Shadow Arts
        -- TODO: "Dud" spell aura that says you messed up with a diff icon
        -- TODO: Expose armor not a finishing move (Change description, remove 0x00100000 - SPELL_ATTR_EX_FINISHING_MOVE_DAMAGE)

        -- Shadow Arts: Ichi
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33544, 65552, 1, 30000, 101, 9, 3, 1, -1, 6, 1, 1, 1, 1, -1, -1, 1, 52, 3260, 2046, 'Shadow Arts: Ichi', 4128894, 4128892, 'Increases your critical hit chance by $s1% for $d.', 4128894, 'Critical hit chance increased by $s1%.', 4128894, 133, 1000, -1, 1);

        -- Shadow Arts: Ni
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`, `script_name`) VALUES (33545, 65552, 1, 30000, 101, 8, 3, 1, -1, 6, 1, 1, 1, -1, -1, 1, 3260, 2046, 'Shadow Arts: Ni', 4128894, 4128892, 'If cast while Shadow Arts: Ichi is active: Increases your chance to hit with melee weapons by $33546s1% for $33546d.', 4128894, 4128894, 133, 1000, -1, 1, 'spell_rogue_shadow_arts_ni');
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1, `effectApplyAuraName1`=0 WHERE  `entry`=33545 AND `build`=5875;

        -- Shadow Arts: Ni (Aura)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33546, 65552, 1, 30000, 101, 9, 3, 1, -1, 6, 1, 1, 1, 1, -1, -1, 1, 54, 3260, 2046, 'Shadow Arts: Ni', 4128894, 4128892, 'Increases your chance to hit with melee weapons by $s1% for $d.', 4128894, 'Chance to hit with melee weapons increased by $s1%.', 4128894, 133, 1000, -1, 1);

        -- Shadow Arts: San
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`, `script_name`) VALUES (33547, 65552, 1, 30000, 101, 8, 3, 1, -1, 6, 1, 1, 1, -1, -1, 1, 3260, 2046, 'Shadow Arts: San', 4128894, 4128892, 'If cast while Shadow Arts: Ni is active: Increases your critical hit chance by $33544s1%, increases your chance to hit with melee weapons by $33546s1%, and increases your Energy regeneration by $33548s1% for $33548d.', 4128894, 4128894, 133, 1000, -1, 1, 'spell_rogue_shadow_arts_san');
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1, `effectApplyAuraName1`=0 WHERE  `entry`=33547 AND `build`=5875;

        -- Shadow Arts: San (Aura)
        REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33548, 65552, 1, 30000, 101, 9, 3, 1, -1, 6, 1, 1, 1, 1, -1, -1, 1, 54, 3260, 2046, 'Shadow Arts: San', 4128894, 4128892, 'Increases your critical hit chance by $33544s1%, increases your chance to hit with melee weapons by $33546s1%, and increases your Energy regeneration by $s1%.', 4128894, 'Critical hit chance increased by $33544s1%, chance to hit with melee weapons increased by $33546s1%, and Energy regeneration increased by $s1%.', 4128894, 133, 1000, -1, 1);
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=1, `effectBasePoints3`=1, `effectApplyAuraName1`=110, `effectApplyAuraName2`=52, `effectApplyAuraName3`=54, `effectMiscValue1`=3 WHERE  `entry`=33548 AND `build`=5875;
        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effect3`=6, `effectDieSides2`=1, `effectDieSides3`=1, `effectBaseDice2`=1, `effectBaseDice3`=1, `effectBonusCoefficient2`=1, `effectBonusCoefficient3`=1, `effectImplicitTargetA2`=1, `effectImplicitTargetA3`=1 WHERE  `entry`=33548 AND `build`=5875;

        -- Skill Line Ability
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15077, 5875, 39, 33544, 8, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15078, 5875, 39, 33545, 8, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15079, 5875, 39, 33546, 8, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15080, 5875, 39, 33547, 8, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15081, 5875, 39, 33548, 8, 1);

        -- Learn spell(for trainer):
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33549, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33544, 107, 2046, 0, 'Shadow Arts: Ichi', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33550, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33545, 107, 2046, 0, 'Shadow Arts: Ni', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33551, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33547, 107, 2046, 0, 'Shadow Arts: San', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

        -- Trainer
        REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33549, 300,    10);
        REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33550, 3000,   20);
        REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33551, 10000,  30);

    -- Combat Potency
    -- Spell
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33531, 5302, 192, 1, 4, 100, 21, 1, -1, 6, 1, 1, 0, -1, -1, 1, 42, 33532, 1, 'Combat Potency', 2031678, 'Rank 1', 2031628, 'Chance on melee attack to restore $33532s1 Energy.', 2031678, 2031628, 10, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `spellIconId`=1554 WHERE  `entry`=33531 AND `build`=5302;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15016, 5875, 38, 33531, 8, 1);
    -- Spell Proc Event
    REPLACE `mangos`.`spell_proc_event` (`entry`, `ppmRate`, `Cooldown`, `build_min`) VALUES (33531, 6, 5000, 5302);

    -- Proc
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33532, 5302, 1, 1, 1, 101, 1, -1, -1, 30, 1, 1, 29, 1, -1, -1, 1, 3, 0, 1677, 'Combat Potency Energize', 2031678, 'Rank 1', 2031628, 'Restores $s1 energy.', 2031678, 'You gain $s1 energy.', 2031678, 1, -1, 1, 1, 1);


    -- Camouflage (8-30% stealth movement speed)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5 WHERE  `entry`=13975 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=11 WHERE  `entry`=14062 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=17 WHERE  `entry`=14063 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=23 WHERE  `entry`=14064 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=14065 AND `build`=5875;

    -- Sprint (3m CD)
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=2983 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=8696 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=11305 AND `build`=4222;

    -- Vanish (3m CD)
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=27617 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=1856 AND `build`=4449;
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=1857 AND `build`=4449;
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=1856 AND `build`=4222;

    -- Evasion (3m CD)
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=180000 WHERE  `entry`=5277 AND `build`=4222;

    -- Deadly Poison
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=8 WHERE  `entry`=2818;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=12 WHERE  `entry`=2819;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=11353;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=26 WHERE  `entry`=11354;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=33 WHERE  `entry`=25349;

    -- Vigor (Rank2, +20)
    REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33504, 464, 1, 101, 21, 1, -1, 6, 1, 1, 19, 1, -1, -1, 1, 35, 3, 691, 'Vigor', 983054, 983068, 'Increases your maximum Energy by $s1.', 983070, 983052, -1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15063, 5875, 253, 33504, 8, 1);
    
    -- Nerves of Steel
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33506, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -6, 0, -1, -1, 1, 87, 1, 180, 'Nerves of Steel', 2031678, 'Rank 1', 2031678, 'Reduces physical damage taken by $s1%.', 2031678, 2031628, 8, -1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15065, 5875, 38, 33506, 8, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33507, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -11, 0, -1, -1, 1, 87, 1, 180, 'Nerves of Steel', 2031678, 'Rank 2', 2031678, 'Reduces physical damage taken by $s1%.', 2031678, 2031628, 8, -1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15066, 5875, 38, 33507, 8, 1);

    -- Counter
    REPLACE`mangos`.`spell_template` (`entry`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33508, 448, 67108864, 1, 131112, 95, 21, 1, -1, 6, 1, 1, -1, 1, -1, -1, 1, 42, 33509, 229, 
    'Counter', 4128894, 'Rank 1', 4128894, 'Gives you a $h1% chance to counter the enemy after dodging their attack or fully resisting one of their spells.', 4128894, 4128892, -1, 1);
    UPDATE `mangos`.`spell_template` SET `spellVisual1`=0, `spellIconId`=1723 WHERE  `entry`=33508;
    -- Proc event (24 = dodge and resist via enum ProcFlagsEx)
    REPLACE `mangos`.`spell_proc_event` (`entry`, `procEx`, `Cooldown`) VALUES (33508, 24, 1000);
    
    -- Counterattack(Counters spell proc)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33509, 4878, 40, 327696, 134218240, 1024, 1, 101, 38, 38, 2, 2, 173555, 31, 1, 1, 1, 149, 1, 0, -1, 6, 6, 253, 130, 'Counter-Attack', 2031678, '0', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.', 2031678, 2031676, 133, 1000, 8, 8388610, 2, 2, -1, 1, 1, 1, 128);
    
    -- Bandit's Shroud (+threat stance)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33510, 5302, 1, 1, 327680, 1, 101, 16, 16, 30, 3, 15, 1, -1, -1, 6, 1, 1, 149, 1, -1, -1, 1, 10, 1, 298, 301, 
    'Bandit\'s Shroud', 2031678, 2031660, 'Increases the threat generated by your Physical attacks by $s1%.  Lasts $d.', 2031678, 'Increases threat generated by Physical attacks by $s1%.', 2031678, 133, 1000, 8, 1, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `dispel`=0, `effect2`=0, `effect3`=0, `effectDieSides2`=0, `effectDieSides3`=0, `effectBaseDice2`=0, `effectBaseDice3`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectMiscValue2`=1 WHERE  `entry`=33510 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `spellIconId`=140 ,`effectApplyAuraName3`=79, `effectMiscValue1`=127 WHERE  `entry`=33510 AND `build`=5302;
    -- Skillline Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15068, 5875, 38, 33510, 8, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33511, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33510, 107, 2040, 0, 'Bandit\'s Shroud', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `spellIconId`=140 WHERE  `entry`=33511 AND `build`=4222;

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33511, 300, 10);

    -- Dirty Deeds (Defense Down proc)
    UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=50, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=33518, 
        `description`='Reduces the Energy cost of your Cheap Shot, Ambush and Garrote abilities by $s1. Additionally, they also have a $h% chance to lower the target\'s armor by $33518s1% for $33518d.'
    WHERE  `entry`=14082;

    UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=100, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=33518, 
        `description`='Reduces the Energy cost of your Cheap Shot, Ambush and Garrote abilities by $s1. Additionally, they also have a $h% chance to lower the target\'s armor by $33518s1% for $33518d.'
    WHERE  `entry`=14083;

    REPLACE `mangos`.`spell_proc_event` (`entry`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procEx`) VALUES (14082, 1792, 1792, 1792, 0);

    -- Proc (This is the actual debuff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES 
    (33518, 5086, 36, 0, 1, 101, 1, 1, 9, 2, -1, 6, 1, 1, -21, 0, -1, -1, 6, 101, 1, 843, 559, 'Shred Armor', 2031678, 2031676, 
    'Reduces an enemy\'s armor by $s1% for $d.', 2031678, 'Armor reduced by $s1%.', 2031678, 0, 2, -1, 1, 1, 1);
    
    -- Improved Distract (-25% hit rate for 10s)

-- Smite
UPDATE `mangos`.`spell_template` SET `manaCost`=10 WHERE  `entry`=585 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=15 WHERE  `entry`=591 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=30 WHERE  `entry`=598 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=40 WHERE  `entry`=984 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=70 WHERE  `entry`=1004 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=90 WHERE  `entry`=6060 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=115 WHERE  `entry`=10933 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=140 WHERE  `entry`=10934 AND `build`=5302;

-- Holy Fire
UPDATE `mangos`.`spell_template` SET `manaCost`=40 WHERE  `entry`=14914 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=125 WHERE  `entry`=15261 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=50 WHERE  `entry`=15262 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=60 WHERE  `entry`=15263 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=70 WHERE  `entry`=15264 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=80 WHERE  `entry`=15265 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=100 WHERE  `entry`=15266 AND `build`=5302;
UPDATE `mangos`.`spell_template` SET `manaCost`=115 WHERE  `entry`=15267 AND `build`=5302;

-- Stoneclaw Totem
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=199 WHERE  `entry`=5730;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=599 WHERE  `entry`=6390;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=879 WHERE  `entry`=6391;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1119 WHERE  `entry`=6392;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1559 WHERE  `entry`=10427;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1919 WHERE  `entry`=10428;

-- Healing Stream Totem
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=31 WHERE  `entry`=6371;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=39 WHERE  `entry`=6372;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=47 WHERE  `entry`=10460;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=55 WHERE  `entry`=10461;

-- Stormstrike (Restore MP on successful hit, remove MP cost)
UPDATE `spell_template` SET `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=249, `effectBonusCoefficient3`=-1, `effectImplicitTargetA3`=1, `effectMiscValue3`=0, `manaCostPercentage`=0, 
`description`='Gives you an extra attack.  In addition, restores 300 mana and the next 2 sources of Nature damage dealt to the target are increased by $s2%.  Lasts $d.' WHERE `entry`=17364;

-- Repentance duration (made 1m + added usable against Demons, Dragonkin, Giants and Undead)
UPDATE `mangos`.`spell_template` SET `durationIndex`=3, `targetCreatureType`=118, `attributes`=1074855936, `description`='Puts the enemy target in a state of meditation, incapacitating them for up to $d.  Any damage caused will awaken the target. Usable against Demons, Dragonkin, Giants, Humanoids and Undead.'
WHERE `entry`=20066 AND `build`=5086;

-- Holy Shock 
    -- Infusion of Light buff + 15s CD
    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=15000, `durationIndex`=8, `procFlags`=87376, `procCharges`=1, `attributesEx3`=67108864,
    `effect2`=6, `effectApplyAuraName2`=108, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-51,
    `effectImplicitTargetA2`=1, `effectMiscValue2`=14, `effectItemType2`=1073750016, 
    `effect3`=6, `effectApplyAuraName3`=108, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-51,
    `effectImplicitTargetA3`=1, `effectMiscValue3`=14, `effectItemType3`=2147483648, 
    `description`='Blasts the target with Holy energy, causing $25912s1 Holy damage to an enemy, or $25914s1 healing to an ally. Additionally, reduces the mana cost of your next Holy Light or Flash of Light by 50%.',
    `auraDescription`='The Mana cost of your Holy Light, Flash of Light or Holy Shock is reduced by $s2%.' WHERE  `entry`=20473;

    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=15000, `durationIndex`=8, `procFlags`=87376, `procCharges`=1, `attributesEx3`=67108864,
    `effect2`=6, `effectApplyAuraName2`=108, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-51,
    `effectImplicitTargetA2`=1, `effectMiscValue2`=14, `effectItemType2`=1073750016,
    `effect3`=6, `effectApplyAuraName3`=108, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-51,
    `effectImplicitTargetA3`=1, `effectMiscValue3`=14, `effectItemType3`=2147483648, 
    `description`='Blasts the target with Holy energy, causing $25912s1 Holy damage to an enemy, or $25914s1 healing to an ally. Additionally, reduces the mana cost of your next Holy Light or Flash of Light by 50%.',
    `auraDescription`='The Mana cost of your Holy Light, Flash of Light or Holy Shock is reduced by $s2%.' WHERE  `entry`=20929;

    UPDATE `mangos`.`spell_template` SET `categoryRecoveryTime`=15000, `durationIndex`=8, `procFlags`=87376, `procCharges`=1, `attributesEx3`=67108864,
    `effect2`=6, `effectApplyAuraName2`=108, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-51,
    `effectImplicitTargetA2`=1, `effectMiscValue2`=14, `effectItemType2`=1073750016, 
    `effect3`=6, `effectApplyAuraName3`=108, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-51,
    `effectImplicitTargetA3`=1, `effectMiscValue3`=14, `effectItemType3`=2147483648, 
    `description`='Blasts the target with Holy energy, causing $25912s1 Holy damage to an enemy, or $25914s1 healing to an ally. Additionally, reduces the mana cost of your next Holy Light or Flash of Light by 50%.',
    `auraDescription`='The Mana cost of your Holy Light, Flash of Light or Holy Shock is reduced by $s2%.' WHERE  `entry`=20930;

    -- Infusion of Light (EffectItemType: 0x00206000 for PLD healing spells)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `dispel`, `attributes`, `attributesEx2`, `stances`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) 
    VALUES (33451, 5302, 1, 33882112, 524288, 134217728, 1, 87376, 100, 1, 8, 1, -1, 6, 1, 1, -51, 0, 0, -1, 1, 108, 2121728, 14, 4372, 2043, 'Infusion of Light', 2031678, 2031676, 'Reduces the Mana cost of your next Holy Light, Flash of Light or Holy Shock by $s1%.', 2031678, 'The Mana cost of your Holy Light, Flash of Light or Holy Shock is reduced by $s1%.', 2031678, 6, 1, 1, -1, 1, 1);


-- Judgement of the Crusader
UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=9, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=21183;

UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=27, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=20188;

UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=35, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=20300;

UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=43, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=20301;

UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=55, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=20302;

UPDATE `mangos`.`spell_template` SET 
`effectBasePoints1`=83, `effectApplyAuraName1`=3, `effectAmplitude1`=3000, `durationIndex`=9, `effectBonusCoefficient1`=0.167, `auraDescription`='Taking $s1 holy damage every $t1 sec.' 
WHERE  `entry`=20303;

-- Seal of the Crusader description
UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=21082;

UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=20162;

UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=20305;

UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=20306;

UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=20307;

UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of a crusader for $d, granting $s1 melee attack power.  The Paladin also attacks $s2% faster, but deals less damage with each attack.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $21183d, causing them to take holy damage over time.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' 
WHERE  `entry`=20308;

-- TO UNDO JUDGEMENT OF CRUSADER:
-- REPLACE INTO `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (21183, 5086, 1, 0, 0, 1, 0, 327680, 0, 0, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, -1, -1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 0, 'Judgement of the Crusader', 2031678, 'Rank 1', 2031678, '', 2031676, 'Increases Holy damage taken by up to $s1.', 2031678, 0, 0, 0, 0, 0, 10, 536870912, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 256, '');

-- Judgement of Justice attack speed reduction (-10)
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-11, `effectImplicitTargetA2`=6, `effectApplyAuraName2`=9, `auraDescription`='Cannot flee and attack speed reduced by $s2%.' WHERE  `entry`=20184 AND `build`=5302;

-- Seal of Justice description
UPDATE `mangos`.`spell_template` SET `description`='Fills the Paladin with the spirit of justice for $d, giving each melee attack a chance to stun for $20170d.  Only one Seal can be active on the Paladin at any one time.\r\n\r\nUnleashing this Seal\'s energy will judge an enemy for $20184d, preventing them from fleeing and reducing their attack speed by $20184s2%.  Your melee strikes will refresh the spell\'s duration.  Only one Judgement per Paladin can be active at any one time.' WHERE  `entry`=20164 AND `build`=5464;

-- Consecration spell power scaling +25% (0.042% - > 0.052%)
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=26573;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20116;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20922;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20923;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20924;

-- Mage
        -- Brilliance Aura
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33843, 5464, 6, 65536, 1, 8, 101, 60, 60, 30, 350, 1, -1, 35, 1, 1, 0, 0, -1, 1, 11, 21, 5000, 0, 54, 'Brilliance Aura', 4128830, 'Rank 1', 4128830, 'Increases the mana regen of party members within $a1 yards by $s1% every 5 sec.  Lasts $d.', 4128830, 'Regenerate $s1% Mana per 5 sec.', 4128830, 133, 1500, 1, 1, 1);

        -- Skill Line Ability
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15096, 5875, 237, 33843, 128, 1, 0);

        -- Learn spell(for trainer):
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33844, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33843, 107, 54, 0, 'Arcane Brilliance', 7274526, '', 7274526, 7274508, 983052, -1, 1, 1, 1);

        -- Trainer
        REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33844, 20000, 40);

        -- Learn spell(for trainer):
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33845, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 11958, 107, 14, 0, 'Ice Block', 7274526, '', 7274526, 7274508, 983052, -1, 1, 1, 1);

        -- Trainer
        REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33845, 11000, 30);

        -- Water Elemental
            -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMultipleValue1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (33846, 4222, 4, 16, 7, 0, 9, 101, 40, 40, 21, 1, -1, 56, 1, 1, 0, -1, -1, -1, 32, 8, 0, 90069, 7313, 94, 'Summon Water Elemental', 983070, 983052, 'Summons a Water Elemental to aid the caster in battle.', 983054, 983052, 100, 133, 1500, 3, 8589934592, -1, 1, 1, 1, 'spell_mage_water_elemental');
                UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=4  WHERE  `entry`=33846;

            -- Skill Line Ability
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15097, 5875, 6, 33846, 128, 1, 0);

            -- Creature (Elemental)
                REPLACE`mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_variance`, `loot_id`, `spell_id1`, `spell_id2`, `spell_list_id`, `movement_type`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `script_name`) VALUES (90069, 'Water Elemental', 60, 60, 91, 525, 1.55556, 4, 2, 1.02, 2, 0.06, 3917, 6873, 9672, 39170, 1, 646013719, 16, 32, 524288, 16, '');

            -- Pet Spell: Water Ripple (Renew clone, 90s CD)
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx2`, `stances`, `stancesNot`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33861, 5302, 1, 1, 65536, 524288, 2147483648, 134217728, 1, 90000, 8, 101, 65, 60, 60, 8, 5, -1, -1, 6, 1, 1, 193, 0.2, -1, -1, 21, 8, 3000, 280, 36, 50, 'Water Ripple', 2031678, 'Rank 1', 2031678, 'Heals the target of $o1 damage over $d.', 2031678, 'Healing $s1 damage every $t1 seconds.', 2031678, 133, 1500, 6, 64, 1, 1, -1, 1, 1, 1);


        -- Flurry
            -- TODO: Frost Channeling, Artic Reach, Ice Shards , Piercing Ice and Shatter should work on this
            -- TODO: Needs to snare like frostbolt
            -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33847, 5464, 4, 536936704, 268453004, 1, 30000, 15, 31756, 101, 36, 32, 32, 28, 240, 4, -1, -1, 6, 6, 0, 0, -1, 1, 6, 23, 4, 1000, 33848, 2147, 187, 50, 'Flurry', 4128830, 'Rank 1', 4128830, 'Launches a flurry of frost at the enemy, causing $33848s1 Frost damage each second for $d.', 4128830, 4128828, 133, 1500, 3, 4294967296, 1, -1, 1, 1, 1, 128);

            -- Proc
                REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33848, 5086, 4, 65536, 4194304, 512, 1, 8, 101, 36, 32, 32, 4, 20, -1, -1, 2, 1, 1, 0.6, 82, 0.24, -1, -1, 6, 2147, 187, 50, 'Flurry', 2031678, 'Rank 1', 2031678, 'Launches a flurry of frost enemy, causing $s1 Frost damage.', 2031678, 2031676, 3, 4294967296, 1, 1, -1, 1, 1, 1, 128);

            -- Skill Line Ability
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15098, 5875, 6, 33847, 128, 1, 0);

            -- Learn spell(for trainer):
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                VALUES (33849, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33847, 107, 187, 0, 'Flurry', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

                -- Trainer
                REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33849, 11000, 30);
        
        -- Pyroblast reduce upfront damage, increase DOT damage, 30s duration, 3s cast
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=70, `effectBasePoints2`=28 WHERE  `entry`=11366;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=90, `effectBasePoints2`=36 WHERE  `entry`=12505;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=128, `effectBasePoints2`=48 WHERE  `entry`=12522;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=164, `effectBasePoints2`=62 WHERE  `entry`=12523;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=203, `effectBasePoints2`=78 WHERE  `entry`=12524;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=252, `effectBasePoints2`=94 WHERE  `entry`=12525;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=300, `effectBasePoints2`=114 WHERE  `entry`=12526;
            UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=14, `recoveryTime`=30000, `durationIndex`=9, `effectDieSides1`=23, `effectBasePoints1`=357, `effectBasePoints2`=134 WHERE  `entry`=18809;

        -- Living Bomb
            -- Rank 1 (30)
                -- Spell (This is the aura that procs the actual buff)
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33851, 4878, 2, 1, 65536, 5, 15000, 15, 101, 39, 30, 30, 85, 160, 4, -1, -1, 6, 1, 1, 53, 0.175, -1, -1, 6, 3, 3000, 4486, 1646, 50, 'Living Bomb', 2031678, 'Rank 1', 2031678, 'Turns the target into a living bomb, causing $o1 Fire damage over $d.', 2031678, '$s1 Fire damage every $t1 seconds.', 2031678, 133, 1500, 3, 17179869184, 1, 1, -1, 1, 1, 1);

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33852, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33851, 107, 1646, 0, 'Living Bomb', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

                    -- Trainer
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33852, 11000, 30);

            -- Rank 2 (40)
                -- Spell (This is the aura that procs the actual buff)
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33853, 4878, 2, 1, 65536, 5, 15000, 15, 101, 49, 40, 40, 85, 225, 4, -1, -1, 6, 1, 1, 80, 0.175, -1, -1, 6, 3, 3000, 4486, 1646, 50, 'Living Bomb', 2031678, 'Rank 2', 2031678, 'Turns the target into a living bomb, causing $o1 Fire damage over $d.', 2031678, '$s1 Fire damage every $t1 seconds.', 2031678, 133, 1500, 3, 17179869184, 1, 1, -1, 1, 1, 1);

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33854, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33853, 107, 1646, 0, 'Living Bomb', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

                    -- Trainer
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33854, 20000, 40);

            -- Rank 3 (50)
                -- Spell (This is the aura that procs the actual buff)
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33855, 4878, 2, 1, 65536, 5, 15000, 15, 101, 59, 50, 50, 85, 290, 4, -1, -1, 6, 1, 1, 110, 0.175, -1, -1, 6, 3, 3000, 4486, 1646, 50, 'Living Bomb', 2031678, 'Rank 3', 2031678, 'Turns the target into a living bomb, causing $o1 Fire damage over $d.', 2031678, '$s1 Fire damage every $t1 seconds.', 2031678, 133, 1500, 3, 17179869184, 1, 1, -1, 1, 1, 1);

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33856, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33855, 107, 1646, 0, 'Living Bomb', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

                    -- Trainer
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33856, 46000, 50);

            -- Rank 4 (60)
                -- Spell (This is the aura that procs the actual buff)
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33857, 4878, 2, 1, 65536, 5, 15000, 15, 101, 61, 60, 60, 85, 340, 4, -1, -1, 6, 1, 1, 136, 0.175, -1, -1, 6, 3, 3000, 4486, 1646, 50, 'Living Bomb', 2031678, 'Rank 4', 2031678, 'Turns the target into a living bomb, causing $o1 Fire damage over $d.', 2031678, '$s1 Fire damage every $t1 seconds.', 2031678, 133, 1500, 3, 17179869184, 1, 1, -1, 1, 1, 1);

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33858, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33857, 107, 1646, 0, 'Living Bomb', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

                    -- Trainer
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33858, 54000, 60);

                -- Skill Line Ability
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15099, 5875, 8, 33851, 128, 1, 0);
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15100, 5875, 8, 33853, 128, 1, 0);
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15101, 5875, 8, 33855, 128, 1, 0);
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15102, 5875, 8, 33857, 128, 1, 0);

                -- Spell Chain
                REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33851, 0,     33851, 1);
                REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33853, 33851, 33851, 2);
                REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33855, 33853, 33851, 3);
                REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33857, 33855, 33851, 4);

        -- Meteor
            -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `targets`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellVisual2`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33859, 5464, 2, 65536, 268435592, 64, 14, 45000, 15, 101, 61, 50, 50, 31, 550, 4, -1, -1, 2, 27, 85, 1, 1, 1, 1.7, 1124, 280, 0.157, 0.157, -1, 16, 28, 8, 8, 3, 2000, 7479, 0, 1137, 50, 'Meteor Shower', 4128830, 'Rank 1', 4128830, 'Calls down a barrage of meteors, burning all enemies within the area for $s1 Fire damage and an additional $o2 Fire damage over $d.', 4128830, '$s2 Fire damage every $t2.', 4128830, 133, 1500, 3, 34359738368, 1, 1, -1, 1, 1, 1);

        -- Learn spell(for trainer):
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33860, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33859, 107, 1137, 0, 'Meteor', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
        
        -- Trainer
            REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33860, 46000, 50);

        -- Skill Line Ability
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15103, 5875, 8, 33859, 128, 1, 0);

        -- Frost Bomb
            -- Rank 1
                -- Spell
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (33885, 5086, 4, 1, 2048, 5, 15000, 13, 101, 53, 40, 40, 35, 200, 4, -1, 6, 77, 1, 24, 299, 1.0, -1, -1, 6, 6, 3, 4, 4000, 144, 2075, 'Frost Bomb', 2031678, 'Rank 1', 2031676, 'Places a Frost Bomb on the target.  After $t1 sec, the bomb explodes, dealing $s1 Frost damage to the target.  Consumes all stacks of Winter\'s Chill on the target to deal 10% increased damage per stack consumed.  Can critically strike.', 2031678, '$s1 Frost damage inflicted after $t1 sec.', 2031678, 3, 68719476736, 1, 1, -1, 1, 1, 1, 'spell_mage_frost_bomb');

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33886, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33885, 107, 2075, 0, 'Frost Bomb', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
                
            -- Rank 2
                -- Spell
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (33887, 5086, 4, 1, 2048, 5, 15000, 13, 101, 61, 54, 54, 35, 250, 4, -1, 6, 77, 1, 24, 449, 1.0, -1, -1, 6, 6, 3, 4, 4000, 144, 2075, 'Frost Bomb', 2031678, 'Rank 2', 2031676, 'Places a Frost Bomb on the target.  After $t1 sec, the bomb explodes, dealing $s1 Frost damage to the target.  Consumes all stacks of Winter\'s Chill on the target to deal 10% increased damage per stack consumed.  Can critically strike.', 2031678, '$s1 Frost damage inflicted after $t1 sec.', 2031678, 3, 68719476736, 1, 1, -1, 1, 1, 1, 'spell_mage_frost_bomb');

                -- Learn spell(for trainer):
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                    VALUES (33888, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33887, 107, 2075, 0, 'Frost Bomb', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);
                
                -- Trainer
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33886, 20000, 40);
                    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (1, 33888, 36000, 54);

                -- Skill Line Ability
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15106, 5875, 6, 33885, 128, 1, 0);
                    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15107, 5875, 6, 33887, 128, 1, 0);

                -- Spell Chain
                    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33885, 0,     33885, 1);
                    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33887, 33885, 33885, 2);

            -- Teleport Theramore
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `reagent1`, `reagentCount1`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33880, 5086, 6, 268500992, 131072, 7, 15, 101, 20, 20, 120, 1, 17031, 1, -1, 5, 77, 1, 1, -1, 0, 1, -1, 1, 1, 17, 1, 263, 2073, 50, 'Teleport: Theramore', 8323134, 8323132, 'Teleports the caster to Theramore.', 2031678, 2031676, 133, 1500, 3, 2147483648, 1, 1, -1, 1, 1, 1);

            -- Teleport Location
                REPLACE INTO `mangos`.`spell_target_position`
                (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`)
                VALUES (33880, 1, -3747.370361, -4439.388184, 30.568199, 3.928669);

            -- Learn spell(for trainer):
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                VALUES (33881, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33880, 107, 2073, 0, 'Teleport: Theramore', 7274526, '', 7274526, 7274508, 983052, -1, 1, 1, 1);
            
            -- Trainer (needs to be portal trainer in theramore only, special NPC needed too?)
                REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (441, 33881, 8000, 30);

            -- Skill Line Ability
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15104, 5875, 237, 33880, 128, 1, 0);

        -- Portal Theramore
            -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `reagent1`, `reagentCount1`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33882, 4449, 6, 268501248, 268566528, 7, 60000, 31, 101, 40, 40, 3, 850, 7, 17032, 1, -1, 50, 1, 1, -1, 0, -1, -1, 47, 15, 987659, 2186, 2074, 50, 'Portal: Theramore', 2031646, 8323100, 'Creates a portal, teleporting group members that use it to Theramore.', 2031646, 2031644, 133, 1500, 3, 2147483648, 1, 1, -1, 1, 1, 1);

            -- Object
                REPLACE gameobject_template
                (entry, patch, type, displayId, name, faction, size, data0, data1)
                VALUES (987659, 0, 22, 4396, 'Portal to Theramore', 115, 1, 33883, 0);

            -- Portal effect
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33883, 5086, 1, 101, 12, -1, 5, 77, 1, 1, -1, 0, 1, -1, 25, 25, 17, 2074, 'Portal Effect: Theramore', 2031678, 2031676, 2031676, 2031676, 1, 1);

            -- Teleport Location
                REPLACE INTO `mangos`.`spell_target_position`
                (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`)
                VALUES (33883, 1, -3747.370361, -4439.388184, 30.568199, 3.928669);

            -- Learn spell(for trainer) (33883):
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
                VALUES (33884, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33882, 107, 2074, 0, 'Portal: Theramore', 7274526, '', 7274526, 7274508, 983052, -1, 1, 1, 1);
            
            -- Trainer (needs to be portal trainer in theramore only, special NPC needed too?)
                REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (441, 33884, 32000, 50);

            -- Skill Line Ability
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15105, 5875, 237, 33882, 128, 1, 0);

        -- More ranks of Flurry
        -- More ranks of Frost Bomb


    -- Dampen Magic / Amplify Magic (30m dura)
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=604;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=8450;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=8451;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=10173;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=10174;

    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=1008;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=8455;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=10169;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=10170;

-- Rogue
    -- Venomous Wounds (25%/50% chance to gain 10 energy on Garrote / Rupture ticks)
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33498, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 108, 256, 2061, 'Venomous Wounds', 983070, 'Rank 1', 983070, 'Increases the damage done by your Garrote ability by $s1%. Additionally, grants your Garrote and Rupture abilities a $s2% chance to restore $33554s1 Energy when they deal damage against targets suffering from your Deadly Poison.', 983070, 983052, 8, -1, 1);
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=24, `effectBonusCoefficient2`=1, `effectMiscValue1`=22 WHERE  `entry`=33498 AND `build`=4222;

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33499, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 9, 1, -1, -1, 1, 108, 256, 2061, 'Venomous Wounds', 983070, 'Rank 2', 983070, 'Increases the damage done by your Garrote ability by $s1%. Additionally, grants your Garrote and Rupture abilities a $s2% chance to restore $33554s1 Energy when they deal damage against targets suffering from your Deadly Poison.', 983070, 983052, 8, -1, 1);
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=49, `effectBonusCoefficient2`=1, `effectMiscValue1`=22 WHERE  `entry`=33499 AND `build`=4222;

    -- Proc
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33554, 5302, 1, 1, 1, 101, 1, -1, -1, 30, 1, 1, 29, 1, -1, -1, 1, 3, 0, 1677, 'Venomous Wounds Energize', 2031678, 'Rank 1', 2031628, 'Restores $s1 energy.', 2031678, 'You gain $s1 energy.', 2031678, 1, -1, 1, 1, 1);

    -- Blind (60s duration)
    UPDATE `mangos`.`spell_template` SET `durationIndex`=3 WHERE  `entry`=2094 AND `build`=5464;

    -- Mutilate
        -- Rank 1
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
        VALUES (33500, 4878, 327696, 134218240, 0, 16777728, 1, 101, 44, 44, 3, 60, 2, 2, 32768, 121, 31, 80, 1, 1, 1, 1, 1, 1, 134, 199, 1, 1, 1, 0, 6, 6, 6, 155, 2047, 50, 'Mutilate', 2031678, 'Rank 1', 2031678, 'Instantly attacks with both weapons for an additional $33561s1 with each weapon. Deals 50% increased damage to enemies suffering from your Deadly Poison.  Requires a dagger in the main hand and offhand.  Awards 2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 0, 2, 2, -1, 1, 1, 1, 128);
        UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=4294967296 WHERE  `entry`=33500 AND `build`=4878;
        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=100, `effect1`=6, `effect2`=6, `effect3`=0, `effectDieSides2`=1, `effectDieSides3`=0, `effectBaseDice2`=1, `effectBaseDice3`=0, `effectBasePoints1`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectBonusCoefficient1`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName1`=42, `effectApplyAuraName2`=42, `effectItemType1`=0, `effectItemType2`=0, `effectTriggerSpell1`=0, `effectTriggerSpell2`=0, `script_name`='spell_rogue_mutilate'  WHERE  `entry`=33500 AND `build`=4878;

        UPDATE `mangos`.`spell_template` SET `effect1`=77, `effect2`=0, `effectApplyAuraName1`=4, `effectApplyAuraName2`=0 WHERE  `entry`=33500;

        -- MH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33561, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 79, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);

        -- OH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33562, 4878, 327696, 134218240, 16777216, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 79, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);

    -- Rank 2
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
        VALUES (33501, 4878, 327696, 134218240, 0, 16777728, 1, 101, 44, 44, 3, 60, 2, 2, 32768, 121, 31, 80, 1, 1, 1, 1, 1, 1, 134, 199, 1, 1, 1, 0, 6, 6, 6, 155, 2047, 50, 'Mutilate', 2031678, 'Rank 2', 2031678, 'Instantly attacks with both weapons for an additional $33563s1 with each weapon. Deals 50% increased damage to enemies suffering from your Deadly Poison.  Requires a dagger in the main hand and offhand.  Awards 2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 0, 2, 2, -1, 1, 1, 1, 128);
        UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=4294967296 WHERE  `entry`=33501 AND `build`=4878;
        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=100, `effect1`=6, `effect2`=6, `effect3`=0, `effectDieSides2`=1, `effectDieSides3`=0, `effectBaseDice2`=1, `effectBaseDice3`=0, `effectBasePoints1`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectBonusCoefficient1`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName1`=42, `effectApplyAuraName2`=42, `effectItemType1`=0, `effectItemType2`=0, `effectTriggerSpell1`=0, `effectTriggerSpell2`=0, `script_name`='spell_rogue_mutilate'  WHERE  `entry`=33501 AND `build`=4878;
        UPDATE `mangos`.`spell_template` SET `effect1`=77, `effect2`=0, `effectApplyAuraName1`=4, `effectApplyAuraName2`=0 WHERE  `entry`=33501;

        -- MH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33563, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 139, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);

        -- OH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33564, 4878, 327696, 134218240, 16777216, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 139, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);
    
    -- Rank 3
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
        VALUES (33502, 4878, 327696, 134218240, 0, 16777728, 1, 101, 44, 44, 3, 60, 2, 2, 32768, 121, 31, 80, 1, 1, 1, 1, 1, 1, 134, 199, 1, 1, 1, 0, 6, 6, 6, 155, 2047, 50, 'Mutilate', 2031678, 'Rank 3', 2031678, 'Instantly attacks with both weapons for an additional $33564s1 with each weapon. Deals 50% increased damage to enemies suffering from your Deadly Poison.  Requires a dagger in the main hand and offhand.  Awards 2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 0, 2, 2, -1, 1, 1, 1, 128);
        UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=4294967296 WHERE  `entry`=33502 AND `build`=4878;
        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=100, `effect1`=6, `effect2`=6, `effect3`=0, `effectDieSides2`=1, `effectDieSides3`=0, `effectBaseDice2`=1, `effectBaseDice3`=0, `effectBasePoints1`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectBonusCoefficient1`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName1`=42, `effectApplyAuraName2`=42, `effectItemType1`=0, `effectItemType2`=0, `effectTriggerSpell1`=0, `effectTriggerSpell2`=0, `script_name`='spell_rogue_mutilate'  WHERE  `entry`=33502 AND `build`=4878;
        UPDATE `mangos`.`spell_template` SET `effect1`=77, `effect2`=0, `effectApplyAuraName1`=4, `effectApplyAuraName2`=0 WHERE  `entry`=33502;

        -- MH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33565, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 179, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);

        -- OH Attack
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33566, 4878, 327696, 134218240, 16777216, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 179, 1, 0, -1, 6, 6, 0, 2047, 'Mutilate', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 4294967296, 2, 2, -1, 1, 1, 1, 128);

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15061, 5875, 253, 33500, 8, 1, 33501);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15082, 5875, 253, 33501, 8, 1, 33502);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15083, 5875, 253, 33502, 8, 1, 0);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33552, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33501, 107, 2047, 0, 'Mutilate', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33553, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33502, 107, 2047, 0, 'Mutilate', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33500, 0,     33500, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33501, 33500, 33500, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33502, 33501, 33500, 3);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33552, 46000, 50);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33553, 54000, 60);

    -- Swiftblade's Cunning
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`) 
    VALUES (33503, 5464, 6, 65536, 1, 8, 101, 40, 40, 30, 0, 0, 1, -1, 35, 35, 1, 1, 1, 1, 9, 9, 0, 0, -1, 1, 1, 11, 11, 140, 9, 5839, 2060, 'Swiftblade\'s Cunning', 4128830, 'Rank 1', 4128830, 'Increases the melee and ranged attack speed of party members within $a1 yards by $s1%.  Lasts $d.', 4128830, 'Melee and ranged attack speed increased by $s1%.', 4128830, 133, 1500, 1, 1, 1);

    -- Don't remove stealth on use
    UPDATE `mangos`.`spell_template` SET `attributesEx`=32, `attributesEx2`=268451840 WHERE  `entry`=33503 AND `build`=5464; 
    
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15062, 5875, 39, 33503, 8, 1);
    UPDATE `mangos`.`spell_template` SET `startRecoveryTime`=1000 WHERE  `entry`=33503 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `spellFamilyName`=8 WHERE  `entry`=33503 AND `build`=5464;

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33523, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33503, 107, 2040, 0, 'Swiftblade\'s Cunning', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `spellIconId`=247 WHERE  `entry`=33523;
    
    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (26, 33523, 20000, 40);

    -- Cloak and Dagger
        -- Spell
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `auraInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `powerType`, `rangeIndex`, `reagent1`, `reagentCount1`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (33524, 4449, 39, 135594000, 32, 2, 1, 300000, 15367, 101, 41, 40, 40, 3, 1, 5140, 1, -1, -1, 64, 64, 79, 1, 1, 1, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1, 11327, 18461, 155, 2055, 30, 'Cloak and Dagger', 8323102, 'Rank 1', 8323102, 'An instant strike that causes $33578s1% weapon damage, sends you into stealth, and turns off your attack. Also restores 40 Energy.  Awards $33578s2 combo $lpoint:points;.', 2031646, 'Improved stealth.', 2031646, 8, -1, 1, 1, 1, 'spell_rogue_cloak_and_dagger');
        
        UPDATE `mangos`.`spell_template` SET `category`=0, `recoveryTime`=30000, `categoryRecoveryTime`=0, `rangeIndex`=2, `reagent1`=0, `effect2`=58, `effect3`=0, `effectDieSides3`=0, `effectBaseDice3`=0, `effectBasePoints2`=15, `effectBasePoints3`=0, `effectImplicitTargetA2`=6, `effectImplicitTargetA3`=0, `effectTriggerSpell1`=0, `effectTriggerSpell1`=11327, `effectTriggerSpell2`=0 WHERE  `entry`=33524 AND `build`=4449;

        UPDATE `mangos`.`spell_template` SET `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=39, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectMiscValue3`=3, `effectTriggerSpell2`=0 WHERE  `entry`=33524 AND `build`=4449;

        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15012, 5875, 39, 33524, 8, 1);

        -- Damage proc (150% of weapon damage)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33578, 4878, 327696, 134218240, 1024, 1, 101, 1, 1, 2, 2, 173555, 121, 80, 1, 1, 1, 1, 32, 1, 0, -1, 6, 6, 253, 130, 'Cloak and Dagger', 2031678, 'Rank 1', 2031678, 'An instant strike that causes $s1 damage in addition to your normal weapon damage.  Awards $s2 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 2, 2, -1, 1, 1, 1, 128);
        UPDATE `mangos`.`spell_template` SET `effect1`=31, `effectBasePoints1`=149, `description`='An instant strike that causes $s1% weapon damage.  Awards $s2 combo $lpoint:points;.' WHERE  `entry`=33578;
        
        -- +40 energy proc 
        -- TODO: Delete this spell and editing effecttriggerspell2 (make it 0) and test if it works without this spell
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33525, 5302, 1, 1, 1, 101, 1, -1, -1, 30, 1, 1, 39, 1, -1, -1, 1, 3, 86, 1677, 'Cloak and Dagger Energize', 2031678, 2031628, 'Restores 40 energy.', 2031678, 'You gain 40 energy.', 2031678, 1, -1, 1, 1, 1);
        UPDATE `mangos`.`spell_template` SET `effectTriggerSpell2`=33525 WHERE  `entry`=33524 AND `build`=4449;

    -- Axes added to rogue (Also have to edit SkillRaceClassInfo and add another entry for rogue as classmask)
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4544;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4695;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4878;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5086;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5302;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5464;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5875;

-- Druid
    -- Brambles
            -- TODO: Book drop for rank2
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `attributesEx3`, `stances`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue2`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33614, 5302, 3, 0, 1, 327680, 2, 144, 1, 10000, 40, 100, 12, 50, 50, 9, 1, 300, 1, 6, 6, 1, 1, 1, 1, 29, 94, 0, 0.05, -1, 1, 1, 42, 43, 8, 33615, 212, 13, 'Brambles', 2031678, 'Rank 1', 2031678, 'Deals $s2 Nature damage and slows enemies attack speed by $33614s1 when hit.  Every melee hit taken removes a charge. $n charges.', 2031678, 'Reflecting Nature damage, causing a high amount of threat, and slowing attackers attack speed when hit by melee attacks. ', 2031678, 133, 1500, 7, 549755813888, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `recoveryTime`=10000, `categoryRecoveryTime`=0, `equippedItemClass`=-1, `equippedItemSubClassMask`=-1 WHERE  `entry`=33614 AND `build`=5302;

            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33615, 3, 65, 1, 263184, 1, 101, 1, 1, 9, 2, -1, 6, 1, 1, -11, 0, -1, -1, 6, 138, 1484, 13, 50, 'Brambles', 8323198, 8323196, 'Increases the time between an enemy\'s attacks by $s1% for $d.', 4128894, 'Time between attacks increased by $s1%.', 4128894, 7, 549755813888, 2, 2, -1, 1, 1, 1);

            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `attributesEx3`, `stances`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue2`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33616, 5302, 3, 0, 1, 327680, 2, 144, 1, 10000, 40, 100, 12, 50, 50, 9, 1, 300, 1, 6, 6, 1, 1, 1, 1, 29, 129, 0, 0.05, -1, 1, 1, 42, 43, 8, 33617, 212, 13, 'Brambles', 2031678, 'Rank 2', 2031678, 'Deals $s2 Nature damage and slows enemies attack speed by $33617s1 when hit.  Every melee hit taken removes a charge. $n charges.', 2031678, 'Reflecting Nature damage, causing a high amount of threat, and slowing enemies attack speed when hit by melee attacks. ', 2031678, 133, 1500, 7, 549755813888, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `recoveryTime`=10000, `categoryRecoveryTime`=0, `equippedItemClass`=-1, `equippedItemSubClassMask`=-1 WHERE  `entry`=33616 AND `build`=5302;

            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33617, 3, 65, 1, 263184, 1, 101, 1, 1, 9, 2, -1, 6, 1, 1, -11, 0, -1, -1, 6, 138, 1484, 13, 50, 'Brambles', 8323198, 8323196, 'Increases the time between an enemy\'s attacks by $s1% for $d.', 4128894, 'Time between attacks increased by $s1%.', 4128894, 7, 549755813888, 2, 2, -1, 1, 1, 1);

            -- Spell Threat
            REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33614, 100, 1);
            REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33616, 150, 1);

            -- Skill Line Ability
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15093, 5875, 134, 33614, 1024, 1, 33616);
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15094, 5875, 134, 33616, 1024, 1, 0);

            -- Spell Chain
            REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33614, 0,     33614, 1);
            REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33616, 33614, 33614, 2);

            -- Learn spell(for trainer):
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33618, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33614, 107, 13, 0, 'Brambles', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

            -- Trainer
            REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33618, 23000, 50);

        -- Idol of Greased Lightning (Maul / Swipe increases your attack speed, stacking up to 5 times. 30s duration) 
        
            -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
            VALUES (33579, 5464, 4, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
            2048, 33583, 108, 'Idol of Greased Lightning', 4128830, '0', 4128830, 'Your Maul and Swipe abilities increases your attack speed by $33583s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33579, 500);

            -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
            VALUES (33580, 5464, 4, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
            2048, 33584, 108, 'Idol of Greased Lightning', 4128830, '0', 4128830, 'Your Maul and Swipe abilities increases your attack speed by $33584s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33580, 500);

            -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
            VALUES (33581, 5464, 4, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
            2048, 33585, 108, 'Idol of Greased Lightning', 4128830, '0', 4128830, 'Your Maul and Swipe abilities increases your attack speed by $33585s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33581, 500);

            -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
            VALUES (33582, 5464, 4, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
            2048, 33586, 108, 'Idol of Greased Lightning', 4128830, '0', 4128830, 'Your Maul and Swipe abilities increases your attack speed by $33586s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33582, 500);

            -- Proc (This is the actual buff)
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33583, 5464, 4, 0, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 
            2, 0, -1, -1, 1, 9,  4, 10, 2759, 108, 'Idol of Greased Lightning', 4128830, 4128828, 4128828, 'Attack speed increased by $s1%.', 4128830, 3, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `stackAmount`=5 WHERE  `entry`=33583;

            -- Proc (This is the actual buff)
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33584, 5464, 4, 0, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 
            3, 0, -1, -1, 1, 9,  4, 10, 2759, 108, 'Idol of Greased Lightning', 4128830, 4128828, 4128828, 'Attack speed increased by $s1%.', 4128830, 3, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `stackAmount`=5 WHERE  `entry`=33584;

            -- Proc (This is the actual buff)
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33585, 5464, 4, 0, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 
            4, 0, -1, -1, 1, 9,  4, 10, 2759, 108, 'Idol of Greased Lightning', 4128830, 4128828, 4128828, 'Attack speed increased by $s1%.', 4128830, 3, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `stackAmount`=5 WHERE  `entry`=33585;

            -- Proc (This is the actual buff)
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33586, 5464, 4, 0, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 
            5, 0, -1, -1, 1, 9,  4, 10, 2759, 108, 'Idol of Greased Lightning', 4128830, 4128828, 4128828, 'Attack speed increased by $s1%.', 4128830, 3, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `stackAmount`=5 WHERE  `entry`=33586;

    -- Swipe (Weapon damage + X instead of flat damage)
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=1, `effectChainTarget1`=3, 
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.'
    WHERE  `entry`=779;

    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=3, `effectChainTarget1`=3,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=780;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=6, `effectChainTarget1`=3,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=769;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=9, `effectChainTarget1`=3,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=9754;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=18, `effectChainTarget1`=3,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.'
    WHERE  `entry`=9908;

    -- Starfall (TODO: NYI and missing skill line ability)
    REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `attributes`, `attributesEx`, `attributesEx2`, `stances`, `targets`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33496, 3, 571, 65536, 140, 4718592, 1073741824, 64, 1, 90000, 1, 31756, 101, 46, 40, 40, 1, 880, 4, -1, -1, 27, 27, 1, 1, 1, 1, 0.2, 69, -26, 0.03, 0, -1, 28, 28, 14, 14, 3, 138, 1000, 4346, 220, 'Starfall', 4128894, 'Rank 1', 4128894, 'You summon a flurry of stars from the sky dealing $s1 Arcane damage to enemies every $t1 sec.  Lasts $d.', 4128894, '$s1 damage every $t1 seconds.', 4128894, 133, 1500, 7, 4194304, 1, 1, -1, 1, 1, 1);

    -- Cyclone
    REPLACE `mangos`.`spell_template` (`entry`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `targetCreatureType`, `castingTimeIndex`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectMiscValue2`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33505, 6, 1, 17, 1074855936, 262144, 64, 96, 16, 15, 524290, 101, 20, 20, 9, 90, 4, -1, -1, 6, 1, 1, 1, 1, -1, 9, 0, 0, 0, 6, 6, 6, 5, 16372, 21, 131, 82, 50, 'Cyclone', 4128894, 'Rank 1', 4128894, 'Tosses the enemy target into the air, disorienting them for up to $d. Any damage caused will remove the effect. Only one target can be affected by your Cyclone at a time. Only works on Undead and Humanoids.', 4128894, 'Cannot attack or cast spells.', 4128894, 133, 1500, 7, 0, 1, 1, -1, 1, 1, 1, 256);
    UPDATE `mangos`.`spell_template` SET `spellVisual1`=805, `spellIconId`=174 WHERE  `entry`=33505 AND `build`=5875;
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15064, 5875, 574, 33505, 1024, 1);

    -- Starsurge
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `stances`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33540, 4878, 6, 65536, 524288, 1073741824, 1, 20000, 15, 101, 57, 42, 42, 4, -1, -1, 2, 55, 1, 2.3, 279, 1, -1, -1, 6, 1264, 189, 50, 'Starsurge', 2031678, 'Rank 1', 2031678, 'Causes $s1 Arcane damage to the target and restores 100 MP.', 2031678, 2031676, 133, 1500, 7, 4, 1, 1, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `effect2`=30, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=99, `effectImplicitTargetA2`=1, `description`='Causes $s1 Arcane damage to the target and restores $s2 mana.' WHERE  `entry`=33540;

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `stances`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33541, 4878, 6, 65536, 524288, 1073741824, 1, 20000, 15, 101, 60, 58, 58, 4, -1, -1, 2, 55, 1, 2.3, 583, 1, -1, -1, 6, 1264, 189, 50, 'Starsurge', 2031678, 'Rank 2', 2031678, 'Causes $s1 Arcane damage to the target and restores 100 MP.', 2031678, 2031676, 133, 1500, 7, 4, 1, 1, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `effect2`=30, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=149, `effectImplicitTargetA2`=1, `description`='Causes $s1 Arcane damage to the target and restores $s2 mana.' WHERE  `entry`=33541;
    
    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33542, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33540, 107, 189, 0, 'Starsurge', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33543, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33541, 107, 189, 0, 'Starsurge', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    -- Skill line ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15075, 5875, 574, 33540, 1024, 1, 33541);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15076, 5875, 574, 33541, 1024, 1, 0);
    
    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33540, 0,     33540, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33541, 33540, 33540, 2);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33542, 16000, 42);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33543, 32000, 58);

    -- Blessing of the Forest (Druid res)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `stancesNot`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33512, 4449, 1, 268500992, 131072, 134217728, 32768, 7, 15, 101, 10, 10, 4, -1, 113, 1, 1, 499, 1, -1, -1, 135, 41, 2053, 50, 
    'Blessing of the Forest', 2031646, 'Rank 1', 2031646, 'Brings a dead player back to life with $s1 health and $q1 mana.  Cannot be cast when in combat.', 2031646, 2031644, 75, 133, 1500, 7, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=750, `spellVisual1`=344 WHERE  `entry`=33512 AND `build`=4449;
    
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15069, 5875, 573, 33512, 1024, 1);

    -- Thorns (30m dura)
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=467 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=782 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=1075 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=8914 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=9756 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=9910 AND `build`=4878;

    -- Lacerate
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic2`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33519, 4222, 15, 262160, 134218240, 144, 1, 101, 40, 40, 8, 1, 150, 2, 5, -1, 2, 6, 0, 1, 1, 1, 1, 1, 1, 29, 29, 0, 0, 0, 15, 6, 6, 6, 3, 3000, 750, 2052, 
    'Lacerate', 983070, 'Rank 1', 983070, 'Lacerates the enemy target, dealing $s1 damage and making them bleed for $o2 damage over 15 sec and causing a high amount of threat. Damage caused increased by your Attack Power. This effect stacks up to 5 times on the same target.', 983070, 'Bleeding for $s2 damage every $t2 seconds.', 983070, 133, 1500, 7, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=68719476736 WHERE  `entry`=33519 AND `build`=4222;

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic2`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33520, 4222, 15, 262160, 134218240, 144, 1, 101, 40, 40, 8, 1, 150, 2, 5, -1, 2, 6, 0, 1, 1, 1, 1, 1, 1, 39, 39, 0, 0, 0, 15, 6, 6, 6, 3, 3000, 750, 2052, 
    'Lacerate', 983070, 'Rank 2', 983070, 'Lacerates the enemy target, dealing $s1 damage and making them bleed for $o2 damage over 15 sec and causing a high amount of threat. Damage caused increased by your Attack Power. This effect stacks up to 5 times on the same target.', 983070, 'Bleeding for $s2 damage every $t2 seconds.', 983070, 133, 1500, 7, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `spellFamilyFlags`=68719476736 WHERE  `entry`=33520 AND `build`=4222;

    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15010, 5875, 134, 33519, 1024, 1, 33520);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15011, 5875, 134, 33520, 1024, 1, 0);

    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33519, 207, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33520, 261, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33521, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33519, 107, 2052, 0, 'Lacerate', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33522, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33520, 107, 2052, 0, 'Lacerate', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33519, 0,     33519, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33520, 33519, 33519, 2);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33521, 14000, 40);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33522, 26000, 52);

    -- Brutal Slash
    -- Rank 1
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName3`, `effectAmplitude3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33527, 4222, 262160, 134218240, 1, 1, 101, 20, 20, 105, 3, 20, 2, -1, -1, 58, 80, 6, 1, 1, 1, 1, 1, 1, 43, 124, 1, 0, -1, 6, 6, 6, 3, 3000, 3882, 1531, 'Brutal Slash', 7274526, 'Rank 1', 7274526, 'Claw the enemy, causing $s1 additional damage and causing the target to bleed for $s3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 983070, 983052, 133, 1000, 7, 2, 2, -1, 1, 1, 1, 128);

    UPDATE `mangos`.`spell_template` SET `recoveryTime`=30000, `description`='Brutally slash the enemy, causing $s1 additional damage and causing the target to bleed for $s3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', `auraDescription`='Bleeding for $s3 damage every $t3 seconds.', `spellFamilyFlags`=137438953472 WHERE  `entry`=33527 AND `build`=4222;

    -- Rank 2
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName3`, `effectAmplitude3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33528, 4222, 262160, 134218240, 1, 1, 101, 20, 20, 105, 3, 20, 2, -1, -1, 58, 80, 6, 1, 1, 1, 1, 1, 1, 54, 154, 1, 0, -1, 6, 6, 6, 3, 3000, 3882, 1531, 'Brutal Slash', 7274526, 'Rank 2', 7274526, 'Claw the enemy, causing $s1 additional damage and causing the target to bleed for $o3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 983070, 983052, 133, 1000, 7, 2, 2, -1, 1, 1, 1, 128);

    UPDATE `mangos`.`spell_template` SET `recoveryTime`=30000, `description`='Brutally slash the enemy, causing $s1 additional damage and causing the target to bleed for $o3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', `auraDescription`='Bleeding for $s3 damage every $t3 seconds.', `spellFamilyFlags`=137438953472 WHERE  `entry`=33528 AND `build`=4222;

    -- Skill line ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15014, 5875, 134, 33527, 1024, 1, 33528);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15015, 5875, 134, 33528, 1024, 1, 0);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33529, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33527, 107, 1531, 0, 'Brutal Slash', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33530, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33528, 107, 1531, 0, 'Brutal Slash', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33527, 0,     33527, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33528, 33527, 33527, 2);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33529, 14000, 40);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33530, 26000, 52);

    -- Thrash
    -- Rank 1
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectRadiusIndex1`, `effectRadiusIndex3`, `effectApplyAuraName3`, `effectAmplitude3`, `effectChainTarget1`, `effectChainTarget3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33536, 4222, 262160, 134218240, 1, 1, 30000, 101, 46, 46, 105, 3, 20, 2, -1, -1, 58, 80, 6, 1, 1, 1, 1, 1, 1, 43, 124, 1, 0, -1, 54, 1, 54, 14, 14, 3, 3000, 4, 4, 3882, 2058, 'Thrash', 7274526, 'Rank 1', 7274526, 'Thrash up to 4 enemies within 8 yards, causing $s1 additional damage and causing the target to bleed for $o3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 983070, 'Bleeding for $s3 damage every $t3 seconds.', 983052, 133, 1000, 7, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `effectImplicitTargetA2`=6, `effectImplicitTargetA1`=22, `effectImplicitTargetA3`=22, `effectImplicitTargetB1`=15, `effectImplicitTargetB3`=15, `spellFamilyFlags`=274877906944 WHERE  `entry`=33536;

    -- Rank 2
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectRadiusIndex1`, `effectRadiusIndex3`, `effectApplyAuraName3`, `effectAmplitude3`, `effectChainTarget1`, `effectChainTarget3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33537, 4222, 262160, 134218240, 1, 1, 30000, 101, 58, 58, 105, 3, 20, 2, -1, -1, 58, 80, 6, 1, 1, 1, 1, 1, 1, 54, 154, 1, 0, -1, 54, 1, 54, 14, 14, 3, 3000, 4, 4, 3882, 2058, 'Thrash', 7274526, 'Rank 2', 7274526, 'Thrash up to 4 enemies within 8 yards, causing $s1 additional damage and causing the target to bleed for $o3 damage over $d, increased by your Attack Power.  Awards $s2 combo $lpoint:points;.', 983070, 'Bleeding for $s3 damage every $t3 seconds.', 983052, 133, 1000, 7, 2, 2, -1, 1, 1, 1, 128);
    UPDATE `mangos`.`spell_template` SET `effectImplicitTargetA2`=6, `effectImplicitTargetA1`=22, `effectImplicitTargetA3`=22, `effectImplicitTargetB1`=15, `effectImplicitTargetB3`=15, `spellFamilyFlags`=274877906944 WHERE  `entry`=33537;

    -- Skill line ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15073, 5875, 134, 33536, 1024, 1, 33537);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15074, 5875, 134, 33537, 1024, 1, 0);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33538, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33536, 107, 2058, 0, 'Thrash', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33539, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33537, 107, 2058, 0, 'Thrash', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33536, 0,     33536, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33537, 33536, 33536, 2);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33538, 36000, 46);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (17, 33539, 60000, 58);

    -- Genesis (+1%/2%/3% spell damage and healing)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectItemType1`, `effectItemType2`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33533, 5302, 464, 1, 101, 21, 1, -1, 6, 6, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 108, 108, 7, 2097666, 22, 2050, 'Genesis', 2031678, 'Rank 1', 2031678, 'Increases your spell damage by $s2%.', 2031678, 2031676, 7, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectBaseDice3`=1, `effectBasePoints3`=0, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=108, `effectItemType3`=240, `effectMiscValue3`=8 WHERE  `entry`=33533;

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectItemType1`, `effectItemType2`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33534, 5302, 464, 1, 101, 21, 1, -1, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 108, 108, 7, 2097666, 22, 2050, 'Genesis', 2031678, 'Rank 2', 2031678, 'Increases your spell damage by $s2%.', 2031678, 2031676, 7, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectBaseDice3`=1, `effectBasePoints3`=1, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=108, `effectItemType3`=240, `effectMiscValue3`=8 WHERE  `entry`=33534;

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectItemType1`, `effectItemType2`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33535, 5302, 464, 1, 101, 21, 1, -1, 6, 6, 1, 1, 1, 1, 1, 2, 2, 1, 1, 0, 1, 1, 108, 108, 7, 2097666, 22, 1649, 'Genesis', 2031678, 'Rank 3', 2031678, 'Increases your spell damage by $s2%.', 2031678, 2031676, 7, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectBaseDice3`=1, `effectBasePoints3`=2, `effectBonusCoefficient3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=108, `effectItemType3`=240, `effectMiscValue3`=8 WHERE  `entry`=33535;

    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15070, 5875, 573, 33533, 1024, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15071, 5875, 573, 33534, 1024, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15072, 5875, 573, 33535, 1024, 1);

    -- Ironfur (-50% damage taken for 10s, 15m cd)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `stances`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33526, 5464, 262400, 144, 1, 900000, 101, 40, 40, 1, 1, 1, -1, -1, 6, 1, 1, -51, 0, -1, -1, 1, 87, 127, 345, 2051, 50, 'Ironfur', 4128830, 4128828, 'Reduces the damage taken from melee attacks, ranged attacks and spells by $s1% for $d.', 4128830, 'Damage reduced by $s1%.', 4128830, 133, 1500, 8, 2, 2, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `category`=0, `recoveryTime`=900000, `categoryRecoveryTime`=0 WHERE  `entry`=33526;

    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15013, 5875, 134, 33526, 1024, 1);

    -- Add Polearms to druid (Also have to edit SkillRaceClassInfo and add another entry for druids as classmask)
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4222;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4297;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4375;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4449;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4544;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4695;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=4878;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=5086;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=5302;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=5464;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=1031 WHERE  `id`=2928 AND `build`=5875;


-- Crafting recipes

-- Green Dragonscale Breastplate
UPDATE `mangos`.`spell_template` SET `reagent4`=12803, `reagent5`=7076, `reagent6`=7080, `reagent7`=15407, `reagentCount1`=75, `reagentCount2`=100, `reagentCount4`=25, `reagentCount5`=25, `reagentCount6`=25, `reagentCount7`=20 WHERE  `entry`=19050 AND `build`=4222;

-- Green Dragonscale Leggings
UPDATE `mangos`.`spell_template` SET `reagent4`=7080, `reagent5`=12803, `reagent6`=7076, `reagent7`=15407, `reagentCount1`=100, `reagentCount2`=65, `reagentCount4`=20, `reagentCount5`=20, `reagentCount6`=20, `reagentCount7`=15 WHERE  `entry`=19060 AND `build`=4222;

-- Green Dragonscale Gauntlets
UPDATE `mangos`.`spell_template` SET `reagent5`=7080, `reagent6`=12803, `reagent7`=7076, `reagentCount1`=75, `reagentCount2`=50, `reagentCount3`=10, `reagentCount5`=15, `reagentCount6`=15, `reagentCount7`=15 WHERE  `entry`=24655 AND `build`=4878;

-- Blue Dragonscale Breastplate
UPDATE `mangos`.`spell_template` SET `reagent5`=18512, `reagent6`=14227, `reagent7`=12810, `reagentCount1`=125, `reagentCount2`=75, `reagentCount3`=20, `reagentCount5`=25, `reagentCount6`=25, `reagentCount7`=25 WHERE  `entry`=19077 AND `build`=4222;

-- Blue Dragonscale Leggings
UPDATE `mangos`.`spell_template` SET `reagent5`=18512, `reagent6`=14227, `reagent7`=12810, `reagentCount1`=100, `reagentCount2`=65, `reagentCount3`=15, `reagentCount5`=20, `reagentCount6`=20, `reagentCount7`=20 WHERE  `entry`=24654 AND `build`=4878;

-- Blue Dragonscale Shoulders
UPDATE `mangos`.`spell_template` SET `reagent6`=18512, `reagent7`=14227, `reagentCount1`=75, `reagentCount2`=50, `reagentCount3`=15, `reagentCount4`=10, `reagentCount6`=15, `reagentCount7`=15 WHERE  `entry`=19089 AND `build`=4222;

-- Imperial Plate Belt
UPDATE `mangos`.`spell_template` SET `reagent4`=7078, `reagent5`=7082, `reagent6`=12360, `reagentCount1`=50, `reagentCount2`=20, `reagentCount3`=4, `reagentCount4`=6, `reagentCount5`=6, `reagentCount6`=2 WHERE  `entry`=16647 AND `build`=4375;

-- Imperial Plate Boots
UPDATE `mangos`.`spell_template` SET `reagent4`=7078, `reagent5`=7082, `reagent6`=12360, `reagentCount1`=75, `reagentCount2`=6, `reagentCount3`=6, `reagentCount4`=8, `reagentCount5`=8, `reagentCount6`=4 WHERE  `entry`=16657 AND `build`=4375;

-- Imperial Plate Bracers
UPDATE `mangos`.`spell_template` SET `reagent3`=6, `reagent4`=6, `reagent5`=2, `reagentCount1`=50, `reagentCount2`=4, `reagentCount3`=7078, `reagentCount4`=7082, `reagentCount5`=12360 WHERE  `entry`=16649 AND `build`=4375;

-- Imperial Plate Chest
UPDATE `mangos`.`spell_template` SET `reagent3`=7078, `reagent4`=7082, `reagent5`=12360, `reagentCount1`=100, `reagentCount2`=10, `reagentCount3`=25, `reagentCount4`=25, `reagentCount5`=10 WHERE  `entry`=16663 AND `build`=4375;

-- Imperial Plate Helm
UPDATE `mangos`.`spell_template` SET `reagent3`=7078, `reagent4`=7082, `reagent5`=12360, `reagentCount1`=75, `reagentCount2`=8, `reagentCount3`=10, `reagentCount4`=10, `reagentCount5`=6 WHERE  `entry`=16658 AND `build`=4375;

-- Imperial Plate Leggings
UPDATE `mangos`.`spell_template` SET `reagent3`=7078, `reagent4`=7082, `reagent5`=12360, `reagentCount1`=75, `reagentCount2`=10, `reagentCount3`=25, `reagentCount4`=25, `reagentCount5`=10 WHERE  `entry`=16730 AND `build`=4375;

-- Imperial Plate Shoulders
UPDATE `mangos`.`spell_template` SET `reagent4`=7078, `reagent5`=7082, `reagent6`=12360, `reagentCount1`=75, `reagentCount2`=35, `reagentCount3`=8, `reagentCount4`=10, `reagentCount5`=10, `reagentCount6`=6 WHERE  `entry`=16646 AND `build`=4375;

-- New

-- Hand of Reckoning (PLD Taunt)

    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33393, 4222, 82, 327696, 67108864, 1, 10000, 101, 10, 10, 27, 40, 4, -1, -1, 114, 6, 1, 0, -1, 6, 6, 11, 34, 2040, 'Hand of Reckoning', 7274526, 983068, 'Taunts the target to attack you, but has no effect if the target is already attacking you.', 983070, 983052, 4, 32768, 1, 1, -1, 1, 1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15031, 5875, 267, 33393, 2, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33394, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33393, 107, 2040, 0, 'Hand of Reckoning', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33394, 300, 10);

    -- Crusader Strike (Next attack: Restore MP) TODO: Not done, also should prob just change the effect2 to effect1 as bonus damage isn't needed, only MP restore (energize).

    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33395, 4695, 327700, 134217728, 1024, 1, 101, 
    8, 8, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0, 
    19, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 1', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33396, 4695, 327700, 134217728, 1024, 1, 101, 
    16, 16, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0, 
    39, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 2', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33397, 4695, 327700, 134217728, 1024, 1, 101, 
    24, 24, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0,
    79, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 3', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33398, 4695, 327700, 134217728, 1024, 1, 101, 
    32, 32, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0,
    139, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 4', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33399, 4695, 327700, 134217728, 1024, 1, 101, 
    40, 40, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0,
    179, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 5', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33400, 4695, 327700, 134217728, 1024, 1, 101, 
    48, 48, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0,
    199, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 6', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`,  `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33401, 4695, 327700, 134217728, 1024, 1, 101, 
    56, 56, 0, 0, 2, 2, 173555, 30, 58, 1, 0, 1, 0,
    219, 0, -1, -1, -1, 1, 6, 39, 2038, 50, 'Crusader Strike', 2031678, 'Rank 7', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15032, 5875, 184, 33395, 2, 1, 33396);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15033, 5875, 184, 33396, 2, 1, 33397);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15034, 5875, 184, 33397, 2, 1, 33398);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15035, 5875, 184, 33398, 2, 1, 33399);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15036, 5875, 184, 33399, 2, 1, 33400);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15037, 5875, 184, 33400, 2, 1, 33401);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15038, 5875, 184, 33401, 2, 1, 0);


    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33402, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33395, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33403, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33396, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33404, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33397, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33405, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33398, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33406, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33399, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33407, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33400, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 6', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33408, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33401, 107, 2038, 122, 'Crusader Strike', 7274526, 'Rank 7', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33395, 0,     33395, 1);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33396, 33395, 33395, 2);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33397, 33396, 33395, 3);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33398, 33397, 33395, 4);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33399, 33398, 33395, 5);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33400, 33399, 33395, 6);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33401, 33400, 33395, 7);
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33395;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33396;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33397;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33398;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33399;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33400;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33401;

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33402, 200, 8);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33403, 2000, 16);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33404, 8000, 24);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33405, 14000, 32);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33406, 22000, 40);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33407, 40000, 48);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33408, 58000, 56);

-- Holy Strike (Converts next attack into holy damage, adds holy damage to attack, an generates additional thraet)

    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33409, 4695, 1, 327700, 134217728, 1024, 1, 101, 6, 6, 40, 2, 2, 173555, 58, 1, 1, 
    10, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 1', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33410, 4695, 1, 327700, 134217728, 1024, 1, 101, 16, 16, 50, 2, 2, 173555, 58, 1, 1, 
    15, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 2', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33411, 4695, 1, 327700, 134217728, 1024, 1, 101, 26, 26, 60, 2, 2, 173555, 58, 1, 1, 
    21, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 3', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33412, 4695, 1, 327700, 134217728, 1024, 1, 101, 36, 36, 70, 2, 2, 173555, 58, 1, 1, 
    28, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 4', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33413, 4695, 1, 327700, 134217728, 1024, 1, 101, 46, 46, 140, 2, 2, 173555, 58, 1, 1, 
    54, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 5', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33414, 4695, 1, 327700, 134217728, 1024, 1, 101, 56, 56, 150, 2, 2, 173555, 58, 1, 1, 
    68, 1, -1, -1, 6, 39, 2045, 50, 'Holy Strike', 2031678, 'Rank 6', 2031678, 'A strong attack that converts your attack into Holy damage and adds $s1 Holy damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15039, 5875, 184, 33409, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15040, 5875, 184, 33410, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15041, 5875, 184, 33411, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15042, 5875, 184, 33412, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15043, 5875, 184, 33413, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15044, 5875, 184, 33414, 2, 1);

    -- Spell Threat (Bonus threat)
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33409, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33410, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33411, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33412, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33413, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33414, 0, 1);


    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33415, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33409, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33416, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33410, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33417, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33411, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33418, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33412, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33419, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33413, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33420, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33414, 107, 856, 0, 'Holy Strike', 7274526, 'Rank 6', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33409, 0,     33409, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33410, 33409, 33409, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33411, 33410, 33409, 3);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33412, 33411, 33409, 4);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33413, 33412, 33409, 5);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33414, 33413, 33409, 6);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (28, 33415, 100,   6);

    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33415, 100,   6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33416, 3000,  16);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33417, 6000,  26);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33418, 14000, 36);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33419, 24000, 46);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33420, 42000, 56);

-- Holy Radiance 
    -- Spell
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx2`, `stances`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `effectRadiusIndex1`, `targets`) 
    VALUES (33421, 5302, 1, 1, 65536, 524288, 2147483648, 134217728, 5, 8, 101, 60, 60, 27, 1070, 1, -1, -1, 35, 1, 1, 
    366, 0.286, -1, -1, 1, 8, 1000, 280, 2039, 50, 'Holy Radiance', 2031678, 'Rank 1', 2031678, 'Heals party members within 40 yards of $o1 damage over $d.', 2031678, 'Healing $s1 damage every $t1 seconds.', 2031678, 133, 1500, 6, 64, 1, 1, -1, 1, 1, 1, 23, 0);
    
    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15045, 5875, 594, 33421, 2, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33422, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33421, 107, 2039, 122, 'Holy Radiance', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33422, 46000, 60);

-- Eye of Tyr (AOE -25% damage done by enemies for 6s, 1m cd)
    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx`, `attributesEx3`, `stances`, `stancesNot`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33423, 5086, 1, 1, 327680, 0, 0, 0, 0, 1, 60000, 0, 101, 50, 50, 32, 300, 1, 4, 64, 6, 1, 1, 1, 
    -26, 0, 1, -1, 22, 15, 13, 79, 42, 2037, 50, 'Eye of Tyr', 2031678, 'Rank 1', 2031678, 'Releases a blinding flash from your shield to all enemies within 8 yds, reducing all damage they deal by 25% for 6 sec.', 2031678, 'Damage dealt is reduced by $s1%.', 2031676, 133, 1500, 4, 2048, 2, 2, -1, 1, 1, 1, 128);

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15046, 5875, 267, 33423, 2, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33424, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33423, 107, 2037, 122, 'Eye of Tyr', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33424, 28000, 50);

-- Wake of Ashes
    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33425, 5464, 1, 50, 1, 65536, 136, 1, 45000, 8, 101, 60, 40, 40, 105, 350, 1, -1, -1, 6, 2, 1, 11, 1, 1, 0.8, 
    99, 299, 0.129, 0.129, -1, 24, 24, 13, 13, 3, 3000, 324, 2041, 50, 'Wake of Ashes', 4128830, 'Rank 1', 4128830, 'Targets in a cone in front of the caster take $s2 Holy damage and then burn for an additional $o1 Fire damage for $d.', 4128830, '$s1 Fire damage every $t1 seconds.', 4128830, 133, 1500, 3, 1573376, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=3, `effectRealPointsPerLevel2`=3 WHERE  `entry`=33425;

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15047, 5875, 184, 33425, 2, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33426, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33425, 107, 2041, 122, 'Wake of Ashes', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33426, 20000, 40);

-- Shield of the Righteous
    -- Spell:
        REPLACE `mangos`.`spell_template` (
            `entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, 
            `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, 
            `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, 
            `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, 
            `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, 
            `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, 
            `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, 
            `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, 
            `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, 
            `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, 
            `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`
        ) 
        VALUES (
            33427, 5464, 1, 971, 327696, 134218240, 1, 10000, 101, 30, 30, 1, 125, 2, 4, 64,
            6, 2, 1, 1, 1, 1, 19, 0, -1, -1, 1, 6, 101, 0, 1, 1, 42, 2036, 'Shield of the Righteous', 
            4128830, 'Rank 1', 4128830, 'Slam the target with your shield, causing $s2 Holy damage, modified by your shield block value and increasing your armor by 20% for 10 seconds.', 
            2031678, 4128812, 133, 1500, 4, 4328521728, 2, 2, 1, 1, 1, 128
        );
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=149, `effectMiscValue2`=0, `auraDescription`='Armor increaed by $s1%.' WHERE  `entry`=33427 AND `build`=5464;

        REPLACE `mangos`.`spell_template` (
            `entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, 
            `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, 
            `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, 
            `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, 
            `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, 
            `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, 
            `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, 
            `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, 
            `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, 
            `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, 
            `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`
        ) 
        VALUES (
            33429, 5464, 1, 971, 327696, 134218240, 1, 10000, 101, 38, 38, 1, 150, 2, 4, 64,
            6, 2, 1, 1, 1, 1, 19, 0, -1, -1, 1, 6, 101, 0, 1, 1, 42, 2036, 'Shield of the Righteous', 
            4128830, 'Rank 2', 4128830, 'Slam the target with your shield, causing $s2 Holy damage, modified by your shield block value and increasing your armor by 20% for 10 seconds.', 
            2031678, 4128812, 133, 1500, 4, 4328521728, 2, 2, 1, 1, 1, 128
        );
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=199, `effectMiscValue2`=0, `auraDescription`='Armor increaed by $s1%.' WHERE  `entry`=33429 AND `build`=5464;

        REPLACE `mangos`.`spell_template` (
            `entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, 
            `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, 
            `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, 
            `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, 
            `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, 
            `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, 
            `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, 
            `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, 
            `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, 
            `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, 
            `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`
        ) 
        VALUES (
            33430, 5464, 1, 971, 327696, 134218240, 1, 10000, 101, 46, 46, 1, 175, 2, 4, 64,
            6, 2, 1, 1, 1, 1, 19, 0, -1, -1, 1, 6, 101, 0, 1, 1, 42, 2036, 'Shield of the Righteous', 
            4128830, 'Rank 3', 4128830, 'Slam the target with your shield, causing $s2 Holy damage, modified by your shield block value and increasing your armor by 20% for 10 seconds.', 
            2031678, 4128812, 133, 1500, 4, 4328521728, 2, 2, 1, 1, 1, 128
        );
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=249, `effectMiscValue2`=0, `auraDescription`='Armor increaed by $s1%.' WHERE  `entry`=33430 AND `build`=5464;

        REPLACE `mangos`.`spell_template` (
            `entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, 
            `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, 
            `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, 
            `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, 
            `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, 
            `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, 
            `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, 
            `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, 
            `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, 
            `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, 
            `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`
        ) 
        VALUES (
            33431, 5464, 1, 971, 327696, 134218240, 1, 10000, 101, 52, 52, 1, 200, 2, 4, 64,
            6, 2, 1, 1, 1, 1, 19, 0, -1, -1, 1, 6, 101, 0, 1, 1, 42, 2036, 'Shield of the Righteous', 
            4128830, 'Rank 4', 4128830, 'Slam the target with your shield, causing $s2 Holy damage, modified by your shield block value and increasing your armor by 20% for 10 seconds.', 
            2031678, 4128812, 133, 1500, 4, 4328521728, 2, 2, 1, 1, 1, 128
        );
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=299, `effectMiscValue2`=0, `auraDescription`='Armor increaed by $s1%.' WHERE  `entry`=33431 AND `build`=5464;

        REPLACE `mangos`.`spell_template` (
            `entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, 
            `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, 
            `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, 
            `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, 
            `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, 
            `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, 
            `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, 
            `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, 
            `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, 
            `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, 
            `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`
        ) 
        VALUES (
            33432, 5464, 1, 971, 327696, 134218240, 1, 10000, 101, 58, 58, 1, 225, 2, 4, 64,
            6, 2, 1, 1, 1, 1, 19, 0, -1, -1, 1, 6, 101, 0, 1, 1, 42, 2036, 'Shield of the Righteous', 
            4128830, 'Rank 5', 4128830, 'Slam the target with your shield, causing $s2 Holy damage, modified by your shield block value and increasing your armor by 20% for 10 seconds.', 
            2031678, 4128812, 133, 1500, 4, 4328521728, 2, 2, 1, 1, 1, 128
        );
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=349, `effectMiscValue2`=0, `auraDescription`='Armor increaed by $s1%.' WHERE  `entry`=33432 AND `build`=5464;

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15048, 5875, 267, 33427, 2, 1, 33429);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15049, 5875, 267, 33429, 2, 1, 33430);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15050, 5875, 267, 33430, 2, 1, 33431);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15051, 5875, 267, 33431, 2, 1, 33432);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15052, 5875, 267, 33432, 2, 1, 0);
   
   -- Spell Threat (Bonus threat)
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33427, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33429, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33430, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33431, 0, 1);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`, `multiplier`) VALUES (33432, 0, 1);
    
    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33428, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33427, 107, 2036, 122, 'Shield of the Righteous', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33433, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33429, 107, 2036, 122, 'Shield of the Righteous', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33434, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33430, 107, 2036, 122, 'Shield of the Righteous', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33435, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33431, 107, 2036, 122, 'Shield of the Righteous', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33436, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33432, 107, 2036, 122, 'Shield of the Righteous', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33427, 0,     33427, 1);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33429, 33427, 33427, 2);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33430, 33429, 33427, 3);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33431, 33430, 33427, 4);
    -- REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33432, 33431, 33427, 5);
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33427;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33429;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33430;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33431;
    DELETE FROM `mangos`.`spell_chain` WHERE  `spell_id`=33432;

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33428, 11000, 30);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33433, 11000, 38);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33434, 11000, 46);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33435, 11000, 52);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33436, 11000, 58);

-- Bleesing of Kings made baseline
    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33452, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 20217, 107, 332, 0, 'Blessing of Kings', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33452, 4000, 20);

-- Consecration made baseline
    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33437, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 26573, 107, 51, 0, 'Consecration', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33437, 4000, 20);

-- Eternal Flame
    -- Spell: (Visual: 280, spellIconId: 2042)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33438, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 29, 24, 24, 86, 
    200, 5, -1, -1, 10, 6, 35, 1, 1, 1, 3.1, 
    239, 36, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 1', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33439, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 35, 30, 30, 86, 280, 5, -1, -1, 10, 6, 43, 1, 1, 1, 3.6, 
    317, 48, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 2', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33440, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 41, 36, 36, 86, 
    360, 5, -1, -1, 10, 6, 53, 1, 1, 1, 4.1, 
    404, 60, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 3', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33441, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 47, 42, 42, 86, 
    440, 5, -1, -1, 10, 6, 65, 1, 1, 1, 4.7, 
    510, 77, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 4', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33442, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 53, 48, 48, 86, 
    535, 5, -1, -1, 10, 6, 79, 1, 1, 1, 5.3, 
    645, 97, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 5', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33443, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 59, 54, 54, 86, 
    660, 5, -1, -1, 10, 6, 97, 1, 1, 1, 6, 
    808, 122, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 6', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `stancesNot`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33444, 4878, 1, 1, 65536, 1073741824, 5, 15, 101, 65, 60, 60, 86, 
    800, 5, -1, -1, 10, 6, 117, 1, 1, 1, 6.8, 
    1002, 151, 0.286, 0.071, -1, 21, 21, 8, 3000, 280, 2042, 'Eternal Flame', 2031678, 'Rank 7', 2031678, 'Heals a friendly target for $s1 and another $o2 over $d.', 2031678, 'Heals $s2 every $t2 seconds.', 2031678, 133, 1500, 7, 64, 1, 1, -1, 1, 1, 1);

    
    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15053, 5875, 594, 33438, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15054, 5875, 594, 33439, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15055, 5875, 594, 33440, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15056, 5875, 594, 33441, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15057, 5875, 594, 33442, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15058, 5875, 594, 33443, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15059, 5875, 594, 33444, 2, 1);

    -- Spell Threat (Bonus threat)
    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33445, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33439, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33446, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33440, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33447, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33441, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33448, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33442, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33449, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33443, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 6', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33450, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33444, 107, 2042, 122, 'Eternal Flame', 7274526, 'Rank 7', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33438, 0,     33438, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33439, 33438, 33438, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33440, 33439, 33438, 3);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33441, 33440, 33438, 4);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33442, 33441, 33438, 5);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33443, 33442, 33438, 6);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES (33444, 33443, 33438, 7);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33445, 200, 30);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33446, 200, 36);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33447, 200, 42);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33448, 200, 48);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33449, 200, 54);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33450, 200, 60);

-- Hammer of the Righteous
    -- Spell:
    -- REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `recoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`, `customFlags`) 
    -- VALUES (33453, 5464, 1, 1, 65536, 512, 67108864, 1, 8000, 139944, 100, 2, 40, 40, 2, -1, 19, 0, 0, -1, 6, 8, 7660, 2044, 'Hammer of the Righteous', 4128830, 'Rank 1', 4128830, 'Gives you an extra attack that deals Holy damage.', 4128830, 4128830, 133, 1500, 2, 2, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `recoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33453, 4297, 1, 262160, 1, 8000, 101, 1, 1, 2, 2, 41105, 58, 1, 1, 2, 1, 1, -1, -1, 6, 322, 2044, 'Hammer of the Righteous', 983070, 983068, 'Gives you an extra attack that deals Holy damage.', 983070, 983068, 12 , 133, 1, 1, -1, 1, 1, 1);
    UPDATE `mangos`.`spell_template` SET `nameSubtext`='Rank 1' WHERE  `entry`=33453;
    UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.30 WHERE  `entry`=33453;

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`, `superseded_by_spell`) VALUES (15060, 5875, 267, 33453, 2, 1, 0);

    -- Spell Threat (Bonus threat)
    -- Learn spell(for trainer):
    -- Spell Chain
    -- Trainer

-- Template:
-- Name
    -- Spell:
    -- Skill line ability:
    -- Spell Threat (Bonus threat)
    -- Learn spell(for trainer):
    -- Spell Chain
    -- Trainer

    -- Creature spells
        -- Emilius
            -- Single target fear (Stun - works like intimidating shout main target)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `castingTimeIndex`, `auraInterruptFlags`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33558, 5464, 5, 1, 2, 20, 20, 31, 1, 7, -1, -1, 6, 1, 1, -1, 0, -1, -1, 6, 12, 7518, 148, 50, 'Absolute Terror', 2031678, 2031628,  2031628, 'Cowering in fear.', 2031678, 4, 262144, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `description`='Fears the target in place for $d.' WHERE  `entry`=33558 AND `build`=5464;

            -- AOE Silence (45 yards)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33559, 5302, 5, 1, 5, 16, 136, 4, 5, 101, 62, 62, 1, 1, -1, 6, 1, 1, 1, -1, -1, 22, 15, 11, 27, 179, 232, 'Horrid Roar', 2031678, 2031676, 'Silences enemies within a $a1 yard radius for $d.', 2031678, 'Silenced.', 2031678, 1, 1, 1, 1, 1);

            -- AOE Disarm (45 yards)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33560, 5302, 5, 0, 5, 16, 136, 4, 5, 101, 62, 62, 1, 1, -1, 6, 1, 1, 1, -1, -1, 22, 15, 11, 67, 398, 560, 'Dropped Weapon', 2031678, 2031676, 'Disarms enemies within a $a1 yard radius for $d.', 2031678, 'Disarmed!', 2031678, 1, 1, 1, 1, 1);

            -- Dragon Breath (1k Conal fire damage)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33608, 5302, 2, 50, 65536, 136, 5, 15, 101, 1, 1, 2, -1, -1, 2, 1, 1, 999, 1, -1, -1, 24, 14, 1483, 11, 50, 'Dragon Breath', 2031678, 2031676, 'Inflicts $s1 Fire damage to enemies in a cone in front of the caster.', 2031678, 2031676, 133, 1, 1, -1, 1, 1, 1);

        -- Caliph Scorpidsting
            -- -100% Armor
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33619, 5086, 36, 263184, 1, 101, 1, 1, 18, 2, -1, 6, 1, 1, -101, 0, -1, -1, 6, 101, 1, 843, 147, 'Pierce Armor', 2031678, 2031676, 'Reduces an enemy\'s armor by $s1% for $d.', 2031678, 'Armor reduced by $s1%.', 2031678, 2, 2, -1, 1, 1, 1);

            -- Holy Light (100% HP healed)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33620, 5086, 5, 589824, 6, 15, 101, 20, 20, 0, 5, -1, -1, 10, 313, 1, 999999, 1, -1, -1, 21, 3057, 70, 'Shadow Mending', 2031678, 2031676, 'Calls upon Shadow magic to fully heal an ally.', 2031678, 2031676, 133, 1, 1, -1, 1, 1, 1);

        -- Andre Firebeard
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33626, 4375, 21, 1, 262160, 1, 101, 30, 30, 9, 1, -1, -1, 6, 1, 1, 99, 0, -1, -1, 1, 28, 1, 127, 99, 'Spell Reflection', 8323102, 8323100, 'Gives the caster $s1% chance to reflect harmful spells for $d.', 2031646, '$s1% chance to reflect spells.', 2031646, -1, 1, 1, 1);


            -- Pulsing -hit rate % aura (-15%)
                -- Aura
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33623, 5302, 4, 0, 671088640, 1, 15, 101, 41, 41, 41, 21, 4, -1, -1, 6, 1, 1, 19, 0, -1, -1, 1, 23, 3000, 33624, 2207, 31, 50, 'Blinding Shield', 2031678, 2031676, 'Blinds nearby enemies, reducing their chance to hit with physical attacks by $33624s1 within a $33624a1 yard radius around the caster every 3 seconds for $d', 2031678, 'Blinds nearby enemies, reducing their chance to hit with physical attacks by $33623s1 within a $33624a1 yard radius around the caster every 3 seconds for $d', 2031678, 1, -1, 1, 1, 1);

                -- Proc
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33624, 5302, 2, 262144, 136, 1, 101, 45, 37, 37, 1, -1, -1, 6, 1, 1, -16, 1, -1, -1, 22, 15, 13, 54, 1465, 31, 'Blinding Burst', 8323134, 8323132, 'Reduces the targets chance to hit with Physical attacks by $s1%.', 8323132, 'Chance to hit reduced by $s1%.', 2031676, 1, 1, -1, 1, 1, 1);
                UPDATE `mangos`.`spell_template` SET `durationIndex`=27 WHERE  `entry`=33624 AND `build`=5302;

            -- Physical Thorns (150 damage)
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33625, 5086, 65536, 1, 101, 20, 20, 9, 4, -1, -1, 6, 1, 1, 149, 0, -1, -1, 1, 15, 201, 53, 'Damage Spikes', 2031678, 2031660, 'Thorns sprout from the friendly target causing $s1 Physical damage to attackers when hit.  Lasts $d.', 2031678, 'Causes $s1 Physical damage to attackers.', 2031678, 133, 1500, 1, 1, -1, 1, 1, 1);

        -- Lord Shalzaru
            -- Icy Tomb (AoE Stun - 10 yards)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33631, 5302, 5, 1, 5, 16, 136, 4, 5, 101, 62, 62, 1, 1, -1, 6, 1, 1, 1, -1, -1, 22, 15, 13, 12, 4340, 35, 'Icy Tomb', 2031678, 2031676, 'Stuns nearby enemies for $d.', 2031678, 'Stunned.', 2031678, 1, 1, 1, 1, 1);

            -- Ray of Frost
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `mechanic`, `attributes`, `attributesEx`, `castingTimeIndex`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33632, 5464, 4, 11, 524288, 16388, 1, 15, 31788, 101, 20, 20, 27, 60, 3, -1, 6, 6, 1, 1, 1, 1, 149, -51, 0.1, 0, -1, 6, 6, 3, 33, 1000, 707, 193, 'Ray of Frost', 4128830, 4128828, 'Inflicts Frost damage to an enemy and reduces its movement speed for $d.', 4128830, 'Frost damage inflicted over $d.\r\nReduced movement speed.', 4128830, 6, 8388608, 1, 1, -1, 1, 1);

            -- Hailstorm (Blizzard that isn't channeled)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributesEx`, `attributesEx2`, `attributesEx3`, `targets`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33633, 5464, 4, 136, 4, 256, 64, 1, 101, 62, 62, 1, 36, -1, -1, 27, 27, 50, 1, 1, 1, 124, -31, 0, 1, -1, 28, 28, 13, 13, 3, 33, 2000, 259, 285, 'Hailstorm', 4128830, 4128812, 'Ice shards pelt the target area doing $o1 Frost damage over $d.', 4128830, '$s1 Frost damage every $t1 $lsecond:seconds;.\r\nMovement speed reduced by $s2%.', 4128830, 1, 1, -1, 1, 1, 1);

            -- Frost Strike (Frost damage instant attack Weapon damage + 135)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33634, 4695, 4, 327696, 134217728, 1024, 1, 101, 6, 6, 40, 2, -1, -1, 58, 1, 1, 134, 1, -1, -1, 6, 39, 193, 50, 'Frost Strike', 2031678, 2031678, 'A strong attack that converts your attack into Frost damage and adds $s1 Frost damage.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

            -- Hailstorm Shield (Pulsing Chilled from Mages Ice Armor)
            -- Aura
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33635, 5302, 4, 671088640, 1, 15, 101, 41, 41, 41, 21, 4, -1, -1, 6, 1, 1, 19, 0, -1, -1, 1, 23, 3000, 33636, 706, 181, 50, 'Hailstorm Shield', 2031678, 2031676, 'Chills nearby enemies, causing their movement to be slowed and time between attacks increased by $33636s1% within a $33636a1 yard radius around the caster every 3 seconds for $d', 2031678, 'Chills nearby enemies, causing their movement to be slowed and time between attacks increased by $33636s1% within a $33636a1 yard radius around the caster every 3 seconds for $d', 2031678, 1, -1, 1, 1, 1);
                
                -- Proc
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33636, 5302, 4, 262144, 136, 1, 101, 45, 37, 37, 27, 1, -1, -1, 6, 6, 1, 1, 1, 1, -51, 49, 1, -1, -1, 22, 22, 15, 15, 13, 138, 33, 675, 181, 'Chilled', 8323134, 8323132, 'Reduces the targets movement by $s2% and time between attacks by $s1%.', 8323132, 'Movement slowed by $s2% and time between attacks increased by $s1%.', 2031676, 1, 1, -1, 1, 1, 1);

        -- Zhi'Mun
            -- Summon Skeleton (GUARDIAN Summons 3 skeletons)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMultipleValue1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33669, 4222, 16, 5, 9, 101, 20, 20, 3, 1, -1, 42, 1, 1, 2, -1, -1, -1, 32, 8, 0, 90049, 74, 61, 'Summon Skeletons', 983070, 983052, 'Summons $s1 $lSkeleton:Skeletons; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

            -- Cripple (-50% move speed, -100% attack speed, -50% str, 45s duration)
            REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33670, 5, 22, 1, 65536, 14, 15, 101, 1, 1, 1, 22, 4, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, -51, -101, -51, 0, 0, 0, 11, 6, 6, 6, 33, 138, 137, 351, 96, 'Cripple', 4128894, 4128892, 'Increases the time between an enemy\'s attacks by $s2% and its movement by $s1%, in addition to reducing its Strength by $s3%. Lasts $d.', 4128894, 'Movement speed reduced by $s1%.\r\nTime between attacks increased by $s2%.\r\nStrength reduced by $s3%.', 4128894, 8, 1, 1, -1, 1, 1, 1);

            -- Decimating Bolt (-20% Max Health)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `speed`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33671, 4222, 5, 1, 589824, 14, 15, 101, 0, 0, 9, 90, 5, 24, 5, -1, -1, 2, 6, 29, 1, 1, 1, 125, -11, -1, 0, -1, 6, 6, 133, 64, 213, 50, 'Decimating Bolt', 983070, 983052, 'Hurls a bolt of dark magic at an enemy, inflicting $s1 Shadow damage and reducing the target\'s max Health by $s2%.', 983070, 'Health reduced by $s2%.', 983052, 133, 1500, 1, 1, -1, 1, 1, 1, 128);

        -- Giant Green Slime
           -- TODO: Quest rewards
           -- AoE Slow (-50% Attack Speed, -50% Move Speed, -50% Cast Speed)
            REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `mechanic`, `attributes`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33685, 3, 51, 1, 11, 65536, 19, 10000, 8, 101, 28, 28, 23, 140, 4, -1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, -51, -51, -51, 0, 0, -1, 6, 6, 6, 138, 33, 65, 68, 27, 50, 'Slowga', 4128894, '', 4128894, 'Slows enemy\'s within a $a1 yard radius movement by $s2% and their attack speed by $s1% and increases the casting time of all their spells by $s3% for $d.', 4128894, 'Reduces movement by $s2%, attack speed by $s1% and casting time of spells by $s3%.', 4128894, 133, 1500, 1, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `rangeIndex`=1, `effectImplicitTargetA1`=22, `effectImplicitTargetA2`=22, `effectImplicitTargetA3`=22, `effectImplicitTargetB1`=15, `effectImplicitTargetB2`=15, `effectImplicitTargetB3`=15, `effectRadiusIndex1`=11, `effectRadiusIndex2`=11, `effectRadiusIndex3`=11 WHERE  `entry`=33685 AND `build`=5875;

            -- Summon Slimes (WILD Summons 3 Slimes)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33686, 4222, 16, 1, 9, 101, 20, 20, 3, 1, -1, 41, 1, 1, 2, -1, -1, -1, 32, 8, 90051, 74, 61, 'Summon Slimes', 983070, 983052, 'Summons $s1 $lSlime:Slimes; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

            -- Max HP Down Reflect (-10%, stacks up to 10 times, 10s duration)
                -- Aura
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `attributesEx3`, `stances`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue2`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33687, 5302, 3, 0, 1, 327680, 2, 0, 1, 10000, 40, 50, 0, 50, 50, 21, 0, 0, 1, 6, 6, 1, 1, 1, 1, 29, 94, 0, 0.05, -1, 1, 1, 42, 43, 8, 33688, 212, 13, 'Acid Armor', 2031678, '', 2031678, 'When hit, has a $h% chance to deal $s2 Nature damage and reduces attackers max Health by $33688s1%. Stacks up to 9 times.', 2031678, 'Reflecting Nature damage and lowering attackers max Health when hit by melee attacks. ', 2031678, 133, 1500, 0, 0, 1, 1, -1, 1, 1, 1);
                UPDATE `mangos`.`spell_template` SET `recoveryTime`=0, `categoryRecoveryTime`=0, `equippedItemClass`=-1, `equippedItemSubClassMask`=-1 WHERE  `entry`=33687 AND `build`=5302;

                -- Proc
                REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33688, 3, 65, 1, 67108864, 1, 101, 0, 0, 1, 2, 9, -1, 6, 1, 1, -11, 0, -1, -1, 6, 133, 1484, 13, 50, 'Acid Armor', 8323198, 8323196, 'Reduces target\'s max Health by $s1%', 4128894, 'Health reduced by $s1%.', 4128894, 0, 0, 2, 2, -1, 1, 1, 1);

            -- General Narka
                -- 10% Double Attack (On "Aura" for creature_template)
                -- Recklessness (30s Duration)
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `stances`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectMiscValue2`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33689, 5464, 132, 327696, 229376, 262144, 1, 1800000, 101, 50, 50, 9, 1, 1, -1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, 99, 19, -1, 0, 0, 1, 1, 1, 1, 52, 87, 77, 127, 5, 236, 138, 'Recklessness', 4128830, 4128828, 'User will cause critical hits with most attacks and will be immune to Fear effects for the next $d, but all damage taken is increased by $s2%.', 4128830, 'Immune to Fear effects, most attacks do critical hits, but all damage taken is increased by $s2%.', 4128830, 133, 1500, 4, 16, 2, 2, -1, 1, 1, 1);
                -- AoE -50% Physical Damage / Magic Damage done for 60s
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33690, 5302, 5, 2, 5, 16, 136, 4, 5, 101, 3, 1, -1, 6, 1, 1, -51, 1, -1, -1, 22, 15, 11, 79, 127, 210, 282, 'Sonic Boom', 2031678, 2031676, 'Reduces all damage done by enemies within a $a1 yard radius by $s1% for $d.', 2031678, 'All damage done reduced by $s1%.', 2031678, 1, 1, 1, 1, 1);

            -- Shadow Lord Fel'dan
                -- TODO: Quest rewards
                -- AoE Drain Life
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx`, `castingTimeIndex`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `manCostPerLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectAmplitude1`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33691, 4222, 5, 1, 65536, 16388, 1, 15, 31788, 101, 0, 0, 28, 75, 5, 3, -1, -1, 6, 1, 1, 0, 95, 0, -1, -1, 22, 15, 9, 53, 1000, 1, 177, 546, 'Drain Life', 983070, 983052, 'Drains $o1 health from all enemies within a $a1 yard radius around the caster over $d., transferring it to the caster.', 983054, '$o1 health leeched over $d.', 983054, 133, 1500, 1, 1, -1, 1, 1, 1, 128);
                -- Summon Infernal (WILD Summon)
                    -- Spell
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMultipleValue1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33669, 4222, 16, 5, 9, 101, 20, 20, 3, 1, -1, 41, 1, 1, 0, -1, -1, -1, 32, 8, 0, 90052, 74, 61, 'Summon Infernal', 983070, 983052, 'Summons $s1 $lInfernal:Infernals; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);
                    -- Creature
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `loot_id`, `spell_list_id`, `movement_type`, `inhabit_type`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`) VALUES (90052, 'Infernal', 57, 57, 90, 10906, 3, 1, 1.15, 2, 1.32, 2200, 90, 4676, 46760, 1, 1, 16384, 4, 32);

            -- Hitah'ya the Keeper
                -- AOE 45 yard Poly(Frog)
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `mechanic`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33705, 5086, 3, 2, 17, 65536, 1, 15, 101, 30, 30, 1, 120, 3, -1, -1, 6, 6, 1, 1, -1, 0, 0, -1, 22, 22, 15, 15, 11, 11, 56, 5, 7552, 2295, 82, 50, 'Hex', 2031678, 2031676, 'Transforms all enemies within a $a1 yard radius around the caster into a frog, rendering it unable to attack or cast spells for $d.', 2031678, 'Hexed.', 2031678, 133, 1500, 1, 1, -1, 1, 1, 1);

            -- 100% proc Shadow Damage autoattack('Auras' on creature)
                -- Aura
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33706, 5302, 5, 384, 268435456, 1, 20, 100, 45, 45, 21, 1, -1, -1, 6, 1, 0, -1, -1, 1, 42, 33707, 185, 'Endark', 2031678, 2031678, 'Deals $33707s1 Shadow damage when striking the enemy.', 2031678, 2031676, 1, -1, 1, 1, 1);

                -- Proc Effect
                REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33707, 4297, 5, 1, 8000, 101, 30, 30, 80, 4, -1, -1, 2, 11, 1, 49, 0, -1, -1, 6, 4209, 213, 50, 'Endark', 983070, 983068, 'Blasts a target for $s1 Shadow damage.', 983070, 983068, 1500, 3, 1, -1, 1, 1, 1, 128);

                -- Spell proc event
                REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33707, 500);

            -- -50% ST Healing curse
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33708, 5464, 5, 2, 5, 31, 101, 1, 1, 4, 7, -1, 6, 1, 1, -51, 1, -1, -1, 6, 118, 127, 1265, 173, 'Curse of the Vilebranch', 4128830, 4128828, 'Reduces healing effects for an enemy by $s1% for $d.', 4128830, 'Healing effects reduced by $s1%.', 4128830, 1, 1, -1, 1);

            -- 2k damage Shadow damage tank buster
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33709, 5464, 5, 65536, 1, 15, 101, 2, 20, -1, -1, 2, 1, 1, 1999, 0, -1, -1, 6, 4209, 213, 'Shadow Blast', 4128830, '', 4128830, 'Blasts the target for $s1 Shadow damage.', 4128830, 4128828, 133, 1500, 11, 1, 1, 1, -1, 1, 1, 1, 128);

        -- Lar'korwi (9684)
        -- Conal Nature Breath(750 damage) + Stun (10s)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributesEx`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33710, 5302, 3, 136, 1, 101, 1, 2, 10, -1, 6, 2, 1, 1, 1, 1, 749, 0, 0, -1, 24, 24, 13, 13, 12, 2619, 636, 'Acid Breath', 2031678, 8323132, 'Inflicts $s2 Nature damage and and stuns enemies in a cone in front of the caster. Lasts $d.', 2031678, 'Stunned.', 2031678, 1, 1, -1, 1, 1, 1);

        -- Conal silence (18s)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributesEx`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33711, 4878, 3, 128, 1, 101, 1, 1, 8, 2, 99, -1, 6, 1, 1, 0, 0, -1, 24, 9, 9, 27, 7302, 1577, 'Silencing Screech', 2031678, 2031660, 'Silences enemies in a cone in front of the caster. Lasts $d.', 2031678, 'Silenced.', 2031678, 1, 1, -1, 1, 1, 1);
        
        -- AoE intimidation "Fear" 10yd
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `mechanic`, `castingTimeIndex`, `auraInterruptFlags`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33712, 5464, 5, 1, 2, 20, 20, 31, 1, 7, -1, -1, 6, 1, 1, -1, 0, -1, -1, 22, 15, 13, 12, 7518, 148, 50, 'Absolute Terror', 2031678, 2031628, 'Fears all enemies within a $a1 yard radius around the caster for $d.', 2031628, 'Cowering in fear.', 2031678, 4, 262144, -1, 1, 1, 1);

        -- 350 Physical damage + self heals for same dmg (SPELL_EFFECT_HEALTH_LEECH = 9)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33713, 4222, 2, 262160, 1, 101, 2, -1, -1, 9, 1, 1, 1499, 0, -1, -1, 6, 1.0, 349, 147, 'Bloody Fangs', 7274526, 7274508, 'Drains $s1 health from an enemy, healing the caster for up to 100% of that amount.', 983054, 983052, -1, 1, 1, 1);

        -- ZNM
            -- Summon Acolyte (GUARDIAN Summons 1 Healer Acyolte)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMultipleValue1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33841, 4222, 16, 5, 9, 101, 20, 20, 3, 1, -1, 42, 1, 1, 0, -1, -1, -1, 32, 8, 0, 90068, 74, 61, 'Summon Acolyte', 983070, 983052, 'Summons $s1 $Acolyte:Acolyte; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

            -- Banshee Curse (-66% hit rate Curse 100 yards AOE)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33842, 5302, 2, 2, 262144, 136, 1, 101, 45, 37, 37, 4, 1, -1, -1, 6, 6, 1, 1, 1, 1, -67, -67, 1, 1, -1, 22, 22, 15, 15, 12, 12, 54, 55, 183, 155, 'Banshee Curse', 8323134, 8323132, 'Reduces the targets chance to hit with physical attacks and spells by $s1%.', 8323132, 'Chance to hit reduced by $s1%.', 2031676, 1, 1, -1, 1, 1, 1);

            -- Flamecrack (AOE 5500 damage + stun 10 yards 10s cast)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `mechanic`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect3`, `effectDieSides1`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex3`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `manaCostPercentage`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33850, 4695, 2, 12, 7, 15, 101, 1, -1, 2, 98, 1, 1, 1, 1, 5499, 74, 1, -1, 1, 18, 18, 16, 16, 13, 13, 125, 3781, 11, 'Flamecrack', 2031678, 2031644, 'Inflicts $s1 Fire damage to all enemies in a selected area, knocking them back and stunning them for $d.', 2031678, 2031660, 25, 1, 1, -1, 1, 1, 1);

            -- Summon Spiderlings
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33862, 4222, 16, 5, 9, 101, 20, 20, 3, 1, -1, 42, 1, 1, 7, -1, -1, -1, 32, 8, 90070, 74, 61, 'Summon Spiderlings', 983070, 983052, 'Summons $s1 $Spiderling:Spiderling; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

            -- Greater Plague Mind (100 MP leeched every 10s, 45 yard range, AOE, Disease)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33863, 5086, 5, 3, 15, 15, 101, 30, 30, 6, 3, -1, -1, 6, 1, 1, 99, 0, 0, -1, 22, 15, 11, 64, 10000, 1083, 1614, 50, 'Greater Plague Mind', 2031678, 2031676, 'Diseases an enemy for $d., draining $s1 mana every $t1 sec. and transferring it to the caster.', 2031678, '$s1 mana leeched every $t1 sec.', 2031678, 133, 1500, 1, 1, -1, 1, 1, 1);

            -- Acid Spit (Nature damage + DOT + -25% defense down, Conal, 30s duration)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName3`, `effectAmplitude1`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33864, 5302, 3, 524288, 136, 1, 101, 20, 20, 9, 2, 0, -1, 6, 2, 6, 1, 1, 1, 1, 1, 1, 14, 119, -26, 0.1, 1, 1, 24, 24, 24, 9, 9, 9, 3, 101, 5000, 1, 4419, 636, 'Acidic Spit', 2031678, 8323132, 'Shoots a cloud of acidic breath at enemies in a cone in front of the caster, reducing their armor and inflicting Nature damage every $t1 sec. for $d.', 2031678, 'Reduced armor.\r\nNature damage inflicted every $t1 sec.', 2031678, 1, 1, -1, 1, 1, 1);

            -- Slowga (-100% Cast and Attack Speed, 100 yard, AOE, 15m duration)
            REPLACE `mangos`.`spell_template` (`entry`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33865, 5, 16, 1, 15, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, -99, -99, 0, 0, -1, 22, 22, 15, 15, 12, 12, 65, 138, 68, 27, 'Slowga', 4128894, 4128892, 'Reduces the casting speed of nearby enemies by $s1%, and increases the time between their attacks by $s2%. Lasts $d.', 4128894, 'Casting speed reduced by $s1%.\r\nTime between attacks increased by $s2%.', 4128894, -1, 1, 1, 1);

            -- Cleave + Knockback
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectChainTarget1`, `effectChainTarget2`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33866, 5464, 85, 262164, 1, 101, 10, 10, 2, -1, 58, 98, 1, 87, 1, 1, 5, 249, 131, 1, 0, -1, 6, 6, 10, 10, 125, 7542, 277, 50, 'Cleaving Knock Away', 4128830, 4128780, 'Inflicts normal damage plus $s1 to an enemy and its nearest allies, affecting up to $x1 targets.', 4128830, 4128780, 2, 2, -1, 1, 1, 1, 128);

            -- +100% Attack Speed, -25% Move Speed, -100 Physical damage
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33867, 5464, 1, 25000, 15, 101, 35, 31, 1, -1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, 99, -26, -100, 0, 0, 0, 1, 1, 1, 138, 33, 13, 1, 63, 95, 'Enraging Memories', 8323134, 8323132, 'Drives the caster into a maddened frenzy for $d. Increases the caster\'s attack speed by $s1%, but slows its movement by $s2% and reduces the Physical damage it deals by $s3.', 4128830, 'Attack speed increased by $s1%.\r\nPhysical damage dealt is reduced by $s3.\r\nMovement speed reduced by $s2%.', 4128830, -1, 1, 1, 1);

            -- 10s stun. AOE. 45 yards.
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33868, 5302, 32, 536870928, 136, 1, 101, 1, 1, -1, 6, 0, -1, -1, 22, 15, 11, 12, 858, 66, 'Ground Stomp', 8323134, 8323132, 8323132, 'Stunned.', 2031678, -1, 1, 1, 1);

            -- Summon Acolyte (GUARDIAN Summons 1 Acolyte that spams AOE fear)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33869, 4222, 16, 5, 9, 101, 20, 20, 3, 1, -1, 42, 1, 1, -1, -1, -1, 32, 8, 90071, 74, 61, 'Summon Acolyte', 983070, 983052, 'Summons $s1 $Acolyte:Acolyte; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

            -- Paralysis (Chains to 10 targets, applies a debuff that occasionally stuns target)
            -- TODO: Code into spell_special.cpp and remove from epl.cpp
                -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributesEx`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectChainTarget1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (33870, 4222, 5, 2048, 1, 101, 26, 26, 25, 2, -1, 6, 0, -1, -1, 6, 4, 10, 185, 165, 'Paralysis', 7274526, 7274508, 7274508, 'Occasionally stunned.', 983070, 1, 1, -1, 1, 1, 1, 'spell_paralysis');

                -- Proc
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `mechanic`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33871, 4222, 5, 12, 218103808, 1, 101, 26, 26, 28, 1, -1, 6, 2, 1, 25, 1, 1, -1, 7, 0, 1, -1, 1, 1, 12, 517, 165, 'Paralyzed', 7274526, 7274508, 7274508, 'Stunned.', 983070, -1, 1, 1, 1);

            -- Lightning Cloud (Lingering Nature Damage cloud on ground, 15s duration)
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributesEx`, `targets`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33872, 5302, 3, 35, 268435592, 64, 14, 40000, 31, 101, 13, 13, 8, 60, 4, -1, -1, 2, 27, 5, 7, 1, 1, 1.3, 1.3, 269, 321, 1, 1, -1, 16, 28, 13, 13, 3, 5000, 986, 141, 'Lightning Cloud', 2031678, 2031676, 'Creates a cloud of lightning that lasts $d., blasting all enemies in a selected area for $s1 Nature damage and inflicting $s2 additional damage every $t2 sec.', 2031678, 2031676, 1, 1, -1, 1, 1, 1);

            -- 500 dmg/20s DOT. 2 minute duration. Physical. 100 yard range AOE
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributesEx`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33873, 5086, 5, 2, 2048, 5, 13, 101, 1, 1, 3, 2, -1, 6, 1, 1, 10, 9, 0, -1, -1, 6, 3, 60000, 183, 55, 'Call of the Grave', 2031678, 2031676, 'Inflicts $s1 Shadow damage to an enemy after $t1 sec.', 2031678, '$s1 Shadow damage inflicted after $t1 sec.', 2031678, 1, 1, -1, 1, 1, 1);

            UPDATE `mangos`.`spell_template` SET `dispel`=0, `castingTimeIndex`=1, `durationIndex`=4, `effectRealPointsPerLevel1`=0, `effectBasePoints1`=499, `effectImplicitTargetA1`=22, `effectImplicitTargetB1`=15, `effectRadiusIndex1`=11, `effectAmplitude1`=20000, `spellVisual1`=121, `spellIconId`=243, `name`='Deep Cut', `description`='Inflicts $s1 Physical damage to an enemy after $t1 sec.', `auraDescription`='$s1 Physical damage inflicted after $t1 sec.' WHERE  `entry`=33873 AND `build`=5086;

            -- -10% Defense stacks up to 10 times. Conal.
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName3`, `effectAmplitude1`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33874, 5302, 3, 524288, 136, 1, 101, 20, 20, 9, 2, 10, -1, 6, 2, 6, 1, 1, 1, 1, 1, 1, 14, 119, -9, 0.1, 1, 1, 24, 24, 24, 9, 9, 9, 3, 101, 5000, 1, 7572, 636, 'Acid Spray', 2031678, 8323132, 'Shoots a cloud of acidic breath at enemies in a cone in front of the caster, reducing their armor and inflicting Nature damage every $t1 sec. for $d. Stacks up to 10 times.', 2031678, 'Reduced armor.\r\nNature damage inflicted every $t1 sec.', 2031678, 1, 1, -1, 1, 1, 1);

        -- -10% hit rate Curse 100 yards AOE
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33875, 5302, 2, 262144, 136, 1, 101, 45, 37, 37, 4, 1, -1, -1, 6, 6, 1, 1, 1, 1, -9, -9, 1, 1, -1, 22, 22, 15, 15, 12, 12, 54, 55, 183, 155, 'Hit Rate Down', 8323134, 8323132, 'Reduces the targets chance to hit with physical attacks and spells by $s1%.', 8323132, 'Chance to hit reduced by $s1%.', 2031676, 1, 1, -1, 1, 1, 1);

        -- 1000 Shadow damage + HP drain single target
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33876, 5302, 5, 16, 1, 4, 100, 2, -1, 9, 1, 1, 999, 1, -1, -1, 6, 1, 4322, 55, 'Draining Blow', 2031678, 2031676, 'Drains $s1 health from an enemy, transferring it to the caster.', 2031678, 2031676, 1);

        -- -50% damage taken, -50% damage done
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33877, 5302, 47, 327696, 268435456, 1, 180000, 139944, 100, 10, 10, 9, 1, -1, 6, 6, 1, 1, 1, 1, -51, -51, 0, 0, -1, 1, 1, 87, 79, 127, 127, 44, 276, 50, 'Defensive Stance', 8323134, 2031676, 'Assumes a defensive stance that reduces damage taken by $s1% and damage done by $s2%. Lasts $d.', 2031678, 'Damage taken reduced by $s1% and damage done reduced by $s2%.', 2031676, -1, 1, 1, 1);

        -- +50% damage taken, +50% damage done
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33878, 5302, 47, 327696, 268435456, 1, 180000, 139944, 100, 10, 10, 9, 1, -1, 6, 6, 1, 1, 1, 1, 49, 49, 0, 0, -1, 1, 1, 87, 79, 127, 127, 4053, 84, 50, 'Berserker Stance', 8323134, 2031676, 'Assumes an offensive stance that reduces damage taken by $s1% and damage done by $s2%. Lasts $d.', 2031678, 'Damage taken reduced by $s1% and damage done reduced by $s2%.', 2031676, -1, 1, 1, 1);

        -- Death Coil (1k damage)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `speed`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic2`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33879, 5086, 5, 633, 1, 65536, 1, 120000, 8, 101, 64, 58, 58, 27, 565, 4, 24, -1, 9, 6, 1, 1, 1, 1, 999, -1, 0, 0, -1, 24, 6, 6, 7, 1, 64, 88, 50, 'Death Coil', 2031678, 2031678, 'Causes the enemy target to run in horror for $d and causes $s1 Shadow damage.  The caster gains 100% of the damage caused in health.', 2031678, 'Horrified.', 2031678, 133, 1500, 5, 524288, 1, 1, -1, 1, 1, 1, 128);

        -- Summons 2 GUARDIAN Gargoyles (Infinite duration)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33889, 4222, 16, 5, 9, 101, 20, 20, 21, 1, -1, 42, 1, 1, 1, -1, -1, -1, 32, 8, 90073, 74, 61, 'Summon Gargoyle', 983070, 983052, 'Summons $s1 $Gargoyle:Gargoyle; to aid the caster in battle for $d.', 983054, 983052, -1, 1, 1, 1);

        -- Chains of Ice (+100% resource costs, AOE, 10s duration)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributesEx`, `attributesEx2`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetB1`, `effectRadiusIndex1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33890, 5302, 4, 136, 4, 1, 101, 62, 62, 1, 1, -1, 6, 1, 1, 99, 1, -1, -1, 22, 15, 11, 72, 127, 14, 180, 'Chains of Ice', 2031678, 2031676, 'Inflicts nearby enemies with chains made of ice, increasing the costs of their spells and abilities by $s1% for $d. This cost increase applies to all spells and abilities, whether they cost mana, rage, or energy.', 2031678, 'Spell and ability costs are increased by $s1%.', 2031678, 1, 1, 1);

        -- Cripple (-50% Move Speed, -100% Attack Speed, -50% Strength, AOE)
        REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33891, 5, 22, 1, 65536, 14, 15, 101, 1, 1, 1, 8, 2, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, -51, -101, -51, 0, 0, 0, 11, 22, 22, 22, 15, 15, 15, 33, 138, 137, 351, 96, 'Cripple', 4128894, 4128892, 'Increases the time between an enemy\'s attacks by $s2% and its movement by $s1%, in addition to reducing its Strength by $s3%. Lasts $d.', 4128894, 'Movement speed reduced by $s1%.\r\nTime between attacks increased by $s2%.\r\nStrength reduced by $s3%.', 4128894, 8, 1, 1, -1, 1, 1, 1);

        -- Plague Strike (Shadow Damage + stacking disease -10% per stack. Max 7 stacks.)
            -- Spell
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33892, 4695, 5, 327696, 134217728, 1024, 1, 340, 100, 6, 6, 40, 2, -1, -1, 58, 64, 1, 1, 1, 1, 134, 1, 0, -1, 6, 6, 0, 33893, 39, 1737, 50, 'Plague Strike', 2031678, 2031678, 'A strong attack that converts your attack into Shadow damage and adds $s1 Shadow damage. Additionally, inflcits your target with a disease that lowers the amount of healing taken. Stacks up to 8 times.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributesEx`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `preventionType`, `dmgMultiplier1`) VALUES (33893, 5302, 3, 3, 136, 1, 101, 3, 1, 7, -1, 6, 1, 1, -11, 1, -1, -1, 6, 118, 127, 561, 1737, 'Plague Strike', 2031678, 2031676, 'Reduces healing effects on the target by $s1% for $d.', 2031678, 'Healing effects reduced by $s1%.', 2031678, 1, 1, 1);


    -- Items / Gear
        -- +1 Fire weapon damage to attacks
            -- Aura
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33621, 5302, 448, 1, 20, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 33622, 1, 'Add Fire Dam - Weap 01', 8323134, 8323132, 'Adds $33622s1 fire damage to your weapon attack.', 2031678, 2031676, -1, 1, 1, 1);

            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33622, 4695, 2, 1, 15, 101, 1, 1, 4, -1, -1, 2, 1, 1, 0, -1, -1, 6, 213, 'Fire Strike', 2031678, 8323100, 'Does $s1 additional Fire damage to the target.', 2031678, 2031644, 1, -1, 1, 1, 1, 128);

        -- Minor Orb of Fire
            -- Aura
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33609, 5302, 2, 384, 268435456, 1, 20, 100, 45, 45, 21, 1, -1, -1, 6, 1, 0, -1, -1, 1, 42, 33610, 185, 'Minor Orb of Fire', 2031678, '', 2031678, 'Deals $33610s1 Fire damage when striking the enemy.', 2031678, 2031676, 1, -1, 1, 1, 1);

            -- Proc Effect
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33610, 4297, 2, 1, 8000, 101, 30, 30, 80, 4, -1, -1, 2, 11, 1, 24, 0, -1, -1, 6, 143, 12, 50, 'Firebolt', 983070, 983068, 'Blasts a target for $s1 Fire damage.', 983070, 983068, 1500, 3, 1, -1, 1, 1, 1, 128);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33609, 2000);

        -- Draconic Insignia
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33611, 4222, 66, 65552, 1, 40, 100, 2, 8, 8, 8, 3, 1, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 49, 72, 178, 'Draconic Agility', 7274526, 983052, 'Increases your chance to dodge by $s1%. Each dodged attack will remove 1 charge. Lasts for $d or until $n charges are used. $n charges.', 983070, 'Chance to dodge increased by $s1%.', 983070, -1, 1, 1, 1);

            -- Spell proc event
            REPLACE `mangos`.`spell_proc_event` (`entry`, `procEx`) VALUES (33611, 16);

        -- Draconic Heart
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33612, 5302, 0, 0, 262144, 1, 15, 81920, 100, 2, 60, 60, 3, 5, -1, 6, 1, 1, -251, 0, -1, -1, 1, 73, 126, 158, 1840, 50, 'Draconic Power', 2031678, 'Rank 1', 2031678, 'Reduces mana cost of all spells by $s1 for $d. Each cast expends 1 charge. $n charges.', 2031678, 'Spell mana costs reduced by $s1.', 2031678, 133, 1, -1, 1, 1, 1);

        -- Minor orb of Venom
            -- Aura
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33627, 5302, 2, 384, 268435456, 1, 20, 100, 45, 45, 21, 1, -1, -1, 6, 1, 0, -1, -1, 1, 42, 33628, 185, 'Minor Orb of Venom', 2031678, '', 2031678, 'Deals $33628s1 Nature damage, then an additional $33628s2 damage every $33628t2 sec. for $33628d, when striking the enemy.', 2031678, 2031676, 1, -1, 1, 1, 1);

            -- Proc Effect
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `durationIndex`, `rangeIndex`, `speed`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33628, 5086, 3, 18, 4, 16, 1, 15, 101, 31, 4, 40, 1, -1, -1, 2, 6, 11, 1, 1, 1, 9, 24, 1, -1, -1, 6, 6, 3, 3000, 809, 68, 'Venombolt', 2031678, 2031676, 'Blasts a target for $s1 Nature damage, then an additional $s2 damage every $t2 sec. for $d.', 2031678, '$s1 Nature damage inflicted every $t2 sec.', 2031678, -1, 1, 1, 1);

            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33627, 2000);

        -- Minor Charm of Vengeance
            -- Aura
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33629, 5302, 448, 1, 40, 100, 1, 1, 21, 1, -1, -1, 6, 1, 1, 0, -1, -1, 1, 42, 33630, 1672, 'Minor Charm of Vengance', 2031678, 2031678, 'Increases your Attack Power by $33630s1 when struck in combat for $21970d1. Stacks up to 25 times.', 2031678, 2031676, -1, 1, 1, 1);
            
            -- Proc Effect
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33630, 5302, 6, 28, 0, 262144, 1, 15, 101, 1, 1, 3, 1, 25, -1, 6, 1, 1, 2, 0, -1, -1, 1, 99, 212, 1672, 50, 'Minor Charm of Vengeance Effect', 2031678, 2031678, 'Increases Attack Power by $s1 for $d.', 2031678, 'Increases Attack Power by $s1.', 2031678, 133, 1, -1, 1, 1, 1);

        -- Minor orb of Frost
            -- Aura
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33665, 5302, 2, 384, 268435456, 1, 20, 100, 45, 45, 21, 1, -1, -1, 6, 1, 0, -1, -1, 1, 42, 33666, 185, 'Minor Orb of Frost', 2031678, '', 2031678, 'Launches a bolt of frost at the enemy causing $33666s2 Frost damage and slowing movement speed by $33666s1% for $33666d when striking the enemy.', 2031678, 2031676, 1, -1, 1, 1, 1);

            -- Proc Effect
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33666, 5464, 4, 1, 65536, 16, 101, 30, 30, 28, 25, 4, 28, -1, -1, 6, 2, 1, 16, 1, 1, -16, 9, 0, 0, -1, 11, 6, 6, 33, 13, 188, 50, 'Frostbolt', 4128830, 4128828, 'Launches a bolt of frost at the enemy causing $s2 Frost damage and slowing movement speed by $s1% for $d.', 4128830, 'Movement slowed by $s1%.', 4128830, 133, 1500, 3, 1, -1, 1, 1, 1, 128);


            -- Spell proc event
            REPLACE`mangos`.`spell_proc_event` (`entry`, `Cooldown`) VALUES (33665, 2000);
        
        -- Khadgar's Blessing
            -- TODO: Readd this spell and make it work
            -- Aura
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33667, 5302, 0, 262144, 0, 1, 16384, 100, 45, 45, 3, 1, -1, -1, 6, 1, 0, -1, -1, 1, 42, 33668, 241, 'Khadgar\'s Blessing', 2031678, '', 2031678, 'Your next Healing spell grants your target $33668s1 increased Attack Power and damage done by magical spells and effects by up to $33668s3 for $33668d.', 2031678, 2031676, 1, -1, 1, 1, 1);
            UPDATE `mangos`.`spell_template` SET `auraDescription`='Your next healing spell increases your target\'s Attack Power and Spell Power.' WHERE  `entry`=33667 AND `build`=5302;

            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectMiscValue3`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33668, 4222, 192, 1, 101, 9, 1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, 99, 99, 49, 0, 0, -1, 1, 1, 1, 99, 124, 13, 126, 241, 'Khadgar\'s Blessing', 983070, 983052, 'Increases Attack Power by $s1 and damage done by magical spells and effects by up to $s3.', 983070, 'Attack Power increased by $s1 and Spell Power by $s2.', 983052, -1, 1, 1, 1);

        -- Combusting Device
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributes`, `attributesEx`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic2`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33682, 5464, 2, 250, 65536, 136, 1, 45000, 101, 36, 30, 30, 32, 1, -1, -1, 2, 6, 33, 1, 1, 1, 249, -21, 0, 0, -1, 11, 22, 22, 15, 15, 13, 13, 33, 963, 292, 50, 'Combusting Device', 4128830, '0', 4128830, 'Deal $s1 Fire damage and dazes foes for $d around the caster.', 4128830, 'Dazed.', 4128830, 133, 1500, 1, 1, -1, 1, 1, 1);

        -- Arquebus (-100 Armor, stacks up to 5 times)
            -- Aura
                REPLACE `mangos`.`spell_template` (`entry`, `attributes`, `attributesEx`, `castingTimeIndex`, `procFlags`, `procChance`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33698, 192, 268435456, 1, 320, 100, 1, 21, 1, -1, 6, 0, -1, -1, 1, 42, 33693, 502, 50, 'Penetrating Rounds', 4128894, 4128844, 'Chance to reduce your ranged targets armor by $33693s1 for $33693d. Stacks up to 5 times.', 4128894, 4128844, 1, -1, 1, 1, 1);

                -- Spell Proc Event
                REPLACE `mangos`.`spell_proc_event` (`entry`, `CustomChance`, `Cooldown`) VALUES (33698, 100, 500);
            -- Proc
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `speed`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33693, 5086, 1, 101, 30, 30, 18, 13, 19, 5, -1, -1, 6, 1, 1, -101, 1, -1, -1, 6, 22, 1, 557, 219, 'Penetrating Rounds', 2031678, 8323132, 'Reduces targets armor by $s1 for $d. Stacks up to 5 times.', 2031678, 'Armor reduced by $s1.', 2031678, 2, -1, 1, 1, 1);

                -- Spell Proc Event
                REPLACE `mangos`.`spell_proc_event` (`entry`, `CustomChance`, `Cooldown`) VALUES (33693, 100, 500);


        -- Rune Staff (MP/5 on Offensive spell cast, stacks up to 5 times)
            -- Aura
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33694, 5302, 192, 1, 65536, 100, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 42, 33695, 44, 'Rune Staff', 2031678, 2031660, 'Increases your mana regen by $33695s1 on a successful offensive spell cast for $33695d. Stacks up to 5 times.', 2031678, 2031660, 1);
            -- Proc
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectAmplitude1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`) VALUES (33695, 5302, 1, 100, 8, 1, 5, -1, 6, 1, 1, 4, 1, -1, -1, 1, 85, 0, 44, 'Rune Staff Effect', 2031678, 2031660, 'Increases your mana regen by $s1 on a successful offensive spell cast for $d. Stacks up to 5 times.', 2031678, 'Restores $s1 mana per 5 sec.', 2031678, 1);

            -- Wize Wizard\'s Anelace
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName3`, `effectTriggerSpell3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`, `script_name`) VALUES (33696, 5464, 4, 1, 65536, 22, 15, 0, 101, 60, 56, 56, 105, 670, 4, 28, -1, -1, 6, 2, 77, 1, 35, 1, 1, 3.5, -41, 428, 0, 1.0, 0, 11, 6, 6, 6, 33, 4, 0, 13, 188, 50, 'Frostfire Bolt', 4128830, '', 4128830, 'Launches a bolt of frostfire at the enemy, causing $s2 Frost damage, $33697s1 Fire damage, an additional $33697s2 over $33697d and slowing movement speed by $s1% for $d. Benefits from modifiers to Frostbolt and Fireball.', 4128830, 'Movement slowed by $s1%.', 4128830, 133, 1500, 3, 1075314720, 1, 1, -1, 1, 1, 1, 128, 'spell_mage_frostfire_bolt');

            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectAmplitude2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33697, 5464, 2, 65536, 1, 15, 101, 64, 60, 60, 31, 35, 24, -1, -1, 2, 6, 165, 1, 1, 1, 4.0, 595, 180, 1, 0, -1, 6, 6, 3, 2000, 67, 185, 50, 'Frostfire Bolt', 4128830, 4128830, 'Hurls a fiery ball that causes $s1 Fire damage and an additional $o2 Fire damage over $d. Benefits from modifiers to Frostbolt and Fireball.', 4128830, '$s2 Fire damage every $t2 seconds.', 4128830, 133, 1500, 3, 1073741825, 1, 1, -1, 1, 1, 1, 128);

        -- Demonologist\'s Blade
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `durationIndex`, `maxLevel`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectMultipleValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33699, 4222, 5, 65536, 22, 15, 101, 22, 65, 60, 60, 750, 4, 20, -1, -1, 2, 42, 53, 1, 1, 1, 3, 454, 1.0, 0, -1, 6, 1, 1, 90053, 64, 213, 'Hand of Gul\'dan', 983070, '0', 983070, 'Sends a shadowy bolt at the enemy, causing $s1 Shadow damage and summons a Doom Guard to aid you in combat for $d.', 983070, 983052, 133, 1500, 1, 1, -1, 1, 1, 1, 128);

            -- Creature
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `ranged_attack_time`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `ai_name`, `movement_type`, `static_flags1`, `script_name`) VALUES (90053, 7, 'Doomguard', 60, 60, 115, 1912, 3, 2, 1.85, 0.77, 2, 3, 1551, 240, 0, 0, 0, 0, 'EventAI', 1, 67108870, 'npc_doomguard');

        -- Fallen God\'s Tooth
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `stances`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33700, 4222, 5, 65536, 524288, 134217728, 19, 15, 101, 63, 58, 58, 4, -1, -1, 2, 64, 29, 1, 2.6, 502, 1.0, -1, -1, 6, 1, 0, 33701, 3057, 95, 'Void Blast', 983070, '0', 983070, 'Blasts the target for $s1 Shadow damage and restores $33701s1 mana.', 983070, 983052, 133, 1500, 1, 1, -1, 1, 1, 1, 128);

            -- Proc (Restores 600-700 mana)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33701, 4222, 4, 671088640, 1, 60000, 101, 1, -1, -1, 30, 101, 1, 599, 0, -1, -1, 1, 0, 1, 'Restore Mana', 983070, 983052, 'Restores $s1 mana.', 983070, 983052, 13, -1, 1, 1, 1);

        -- Claw of Molten Fury
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (33702, 4222, 2, 589824, 19, 15, 101, 370, 4, -1, -1, 2, 44, 1, 456, 1, -1, -1, 6, 305, 11, 'Lava Burst', 983070, 983052, 'Blasts the target with magma, dealing $s1 Fire damage.', 983070, 983052, 133, 1500, 1, 1, -1, 1, 1, 1, 128);

        -- Sword of the Holy Protector
            -- Spell (Restores 25-35 mana)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33703, 4222, 4, 671088640, 1, 60000, 100, 1, -1, -1, 30, 16, 1, 24, 0, -1, -1, 1, 0, 1, 'Restore Mana', 983070, 983052, 'Restores $s1 mana.', 983070, 983052, 13, -1, 1, 1, 1);
           
            -- Spell Proc Event
            REPLACE `mangos`.`spell_proc_event` (`entry`, `CustomChance`, `Cooldown`) VALUES (33703, 100, 500);

        -- Viking Axe
            -- Spell (+25 damage, +30% Attack Speed)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33704, 5464, 21, 262160, 268435456, 1, 100, 9, 1, -1, -1, 6, 6, 6, 1, 1, 1, 1, 1, 1, 24, 29, 24, 0, 0, 0, 1, 1, 1, 79, 138, 61, 127, 7481, 95, 'Berserk', 4128830, 4128812, 'Increases you attack speed by $s2% and the Physical damage you deal by $s1 for $d.', 4128830, 'Physical damage dealt is increased by $s1.\r\nAttack speed increased by $s2%.', 4128830, -1, 1, 1, 1);


        -- Badge of Stormwind
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33831, 5302, 6, 1, 262144, 1, 15, 101, 60, 60, 9, 5, -1, 6, 1, 1, -21, 0, -1, -1, 1, 73, 126, 158, 1156, 50, 'Badge of Stormwind', 2031678, 'Rank 1', 2031678, 'Reduces mana cost of all spells by 20 for $d.', 2031678, 'Reduced mana cost.', 2031678, 133, 1, -1, 1, 1, 1);

        -- Badge of Ironforge
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect3`, `effectDieSides1`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectApplyAuraName3`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33832, 5302, 16, 1, 101, 18, 1, -1, 6, 6, 1, 1, 1, 1, 44, 44, 1, -1, 1, 1, 1, 99, 124, 3160, 263, 'Badge of Ironforge', 2031678, 2031660, 'Increases your melee and ranged attack power by $s1.  Effect lasts for $d.', 2031678, 'Increases melee and ranged attack power by $s1.', 2031678, 1, 1, 1);

        -- Badge of Gnomergan
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33833, 5302, 6, 1, 101, 8, 5, -1, 6, 6, 1, 1, 1, 1, 24, 34, 1, 1, -1, 1, 1, 13, 135, 126, 126, 969, 502, 50, 'Badge of Gnomergan', 2031678, 2031628, 'Increases your spell damage by up to $s1 and your healing by up to $s2 for $d.', 2031678, 'Spell damage increased by up to $s1.\r\nHealing increased by up to $s2.', 2031678, 1, -1, 1, 1, 1);

        -- Badge of Darnassus
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `dispel`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMultipleValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33834, 5464, 1, 1, 101, 45, 45, 8, 1, -1, 6, 6, 1, 1, 1, 1, 9, 9, 0, 0, -1, 1, 1, 138, 140, 1, 1508, 1899, 50, 'Badge of Darnassus', 4128830, 4128780, 'Increases your attack speed by $s1% for $d1.', 4128830, 'Increased attack speed.', 4128830, 1, -1, 1, 1, 1);
                    

    -- Libram of the Consecrated
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33454, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -51, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33455, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -76, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33456, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -101, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33457, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -126, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);

    -- Libram of Judgement
        -- Spell (This is the aura that procs the actual buff)
            REPLACE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) 
            VALUES (33458, 4695, 1, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8388608, 0, 0, 0, 0, 0, 33459, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 'Libram of Judgement', 2031678, '', 2031628, 'Increases your attack power by 50 after casting Judgement, stacking up to 4 times.', 2031646, '', 2031628, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '');

        -- Proc (This is the actual buff)
            REPLACE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) 
            VALUES (33459, 5302, 1, 0, 0, 1, 0, 671088640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 40, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 126, 0, 0, 0, 0, 0, 0, 0, 969, 0, 1677, 0, 0, 'Libram of Judgement', 2031678, '', 2031628, 'Increases attack power by $s1, stacking up to 4 times.', 2031678, 'Increases attack power by $s1, stacking up to 4 times.', 2031678, 0, 0, 0, 0, 0, 10, 0, 0, 1, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');

    -- Libram of Mending
        -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
            VALUES (33484, 4695, 1, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2147483648, 33485, 156, 'Libram of Mending', 2031678, 2031628, 'Your Holy Light spell grants $33485s1 mana per 5 sec. for 30 sec.', 2031646, 2031628, 10, 1);
        
        -- Proc (This is the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33485, 5302, 1, 1, 671088640, 1, 101, 40, 9, 1, -1, -1, 6, 1, 1, 19, 0, 0, -1, 1, 85, 0, 0, 4370, 1754, 'Libram of Mending', 2031678, 2031628, 'Your Holy Light grants $s1 mana per 5 sec. for 30 sec.', 2031678, 'Regenerate $s1 mana per 5 sec.', 2031678, 10, 1, -1, 1, 1, 1);

    -- Burning Heart (Fire Blast stacking Spirit buff)

        -- Spell (This is the aura that procs the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
        VALUES (33486, 4695, 2, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2, 33487, 156, 'Burning Heart', 2031678, 2031628, 'Your Fire Blast spell grants $33487s1 Spirit for 30 seconds, stacking up to 5 times.', 2031646, 2031628, 3, 1);

        -- Proc (This is the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33487, 5302, 2, 1, 671088640, 1, 101, 40, 9, 1, 5, -1, -1, 6, 1, 1, 9, 0, 0, -1, 1, 29, 4, 969, 876, 'Burning Heart', 2031678, 2031628, 'Your Fire Blast spell grants $s1 Spirit for 30 seconds, stacking up to 5 times.', 2031678, 'Spirit increased by $s1.', 2031678, 10, 1, -1, 1, 1, 1);

    -- Arcane Brand (Arcane Missles +Spell dmg taken % debuff)

        -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
            VALUES (33488, 4695, 6, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2048, 33489, 156, 'Arcane Brand', 2031678, 2031628, 'Your Arcane Missles spell causes the target to take $33489s1% additional spell damage for 60 seconds.', 2031646, 2031628, 3, 1);

        -- Proc (This is the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33489, 5302, 6, 1, 671088640, 1, 101, 40, 3, 1, -1, -1, 6, 1, 1, 9, 0, 0, -1, 6, 87, 126, 969, 191, 'Arcane Branding', 2031678, 2031628, 'Your Arcane Missles spell causes the target to take $s1% additional spell damage for 60 seconds.', 2031678, 'Spell damage taken increased by $s1%.', 2031678, 10, 1, -1, 1, 1, 1);

    -- Inflame (Scorch stacking spell power buff)

        -- Spell (This is the aura that procs the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
            VALUES (33490, 4695, 2, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 16, 33491, 156, 'Inflame', 2031678, 2031628, 'Your Scorch spell increases your spell damage by $33491s1 for 30 seconds, stacking up to 5 times.', 2031646, 2031628, 3, 1);

        -- Proc (This is the actual buff)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
            VALUES (33491, 5302, 2, 1, 671088640, 1, 101, 40, 9, 1, 5, -1, -1, 6, 1, 1, 19, 0, 0, -1, 1, 13, 126, 335, 816, 'Inflame', 2031678, 2031628, 'Your Scorch spell increases your spell damage by $s1 for 30 seconds, stacking up to 5 times.', 2031678, 'Spell power increased by $s1.', 2031678, 10, 1, -1, 1, 1, 1);

    -- Freezing Desire (Fireball proc to make next Frostbolt deal 100% more damage)
        -- Spell (This is the aura that procs the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33492, 5464, 4, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 1, 33493, 173, 'Freezing Desire', 4128830, '0', 4128830, 'Your Fireball spell has a $h% chance to increase the damage of your next Frostbolt spell by $33493s1%', 4128830, 4128828, 3, -1, 1);

        -- Proc (This is the actual buff)
        REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33493, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 99, 0, -1, -1, 1, 108, 32, 8, 2736, 154, 'Freezing Desire', 4128830, 4128828, 4128828, 'Your next Frostbolt spell deals $s1% increased damage.', 4128830, 3, 1, 1, -1, 1, 1, 1);

    -- Burning Desire (Frostbolt proc to make next Fireball deal 50% more damage)
        -- Spell (This is the aura that procs the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33494, 5464, 2, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 32, 33495, 173, 'Burning Desire', 4128830, '0', 4128830, 'Your Frostbolt spell has a $h% chance to increase the damage of your next Fireball spell by $33495s1%.', 4128830, 4128828, 3, -1, 1);

        -- Proc (This is the actual buff)
        REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33495, 5464, 2, 1, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 108, 1, 8, 2736, 1137, 'Burning Desire', 4128830, 4128828, 4128828, 'Your next Fireball spell deals $s1% increased damage.', 4128830, 3, 1, 1, -1, 1, 1, 1);

    -- Idol of Elune (Wrath proc reduces cast time of Starfire by 0.5s. 10% Chance)
        -- Spell (This is the aura that procs the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33513, 5464, 4, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by 2.0 sec.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33514, 5464, 4, 464, 67108864, 1, 87376, 15, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by 2.0 sec.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33515, 5464, 4, 464, 67108864, 1, 87376, 20, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by 2.0 sec.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33516, 5464, 4, 464, 67108864, 1, 87376, 25, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by 2.0 sec.', 4128830, 4128828, 7, -1, 1);

        -- Proc (This is the actual buff)
        REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33517, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 3, 6, -1, -1, 6, 1, 1, 
        -2001, 0, -1, -1, 1, 107,  4, 10, 2736, 87, 'Idol of Elune', 4128830, 4128828, 4128828, 'Your next Starfire spell has 2.0 reduced cast time.', 4128830, 7, 1, 1, -1, 1, 1, 1);
        UPDATE `mangos`.`spell_template` SET `stackAmount`=0 WHERE  `entry`=33517 AND `build`=5464;


-- Template:
-- Name
    -- Spell (This is the aura that procs the actual buff)
    -- Proc (This is the actual buff)

-- Alchemy Potions
    -- Elixir of Wisdom (Now grants MP5)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14, `effectApplyAuraName1`=24, `effectAmplitude1`=5000, `effectMiscValue1`=0, `name`='Lesser Intellect', `description`='Restores $s1 mana every $t1 seconds for $d.', `auraDescription`='Restores $s1 mana every $t1 seconds.' WHERE  `entry`=3166 AND `build`=4297;
    
    -- Elixir of Greater Intellect (Now grants MP5)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29, `effectApplyAuraName1`=24, `effectAmplitude1`=5000, `effectMiscValue1`=0, `name`='Greater Intellect', `description`='Restores $s1 mana every $t1 seconds for $d.', `auraDescription`='Restores $s1 mana every $t1 seconds.' WHERE  `entry`=11396 AND `build`=4297;

    -- Elixir of Sages (13447) - Replace int with 5% mana continues during combat
    -- Mageblood Potion (20007)
    -- Strong Troll's Blood Potion
    -- Mighty Troll's Blood Potion
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=23, `effectBasePoints2`=9, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=116, `description`='Regenerate $s1 health every 5 sec and $s2% of total Health regeneration may continue during combat for $d.', `auraDescription`='Regenerate $s1 health every 5 sec and $s2% of total Health regeneration may continue during combat.' WHERE  `entry`=3223 AND `build`=5464;

    -- Major Troll's Blood Potion
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=39, `effectBasePoints2`=19, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=116, `description`='Regenerate $s1 health every 5 sec and $s2% of total Health regeneration may continue during combat for $d.', `auraDescription`='Regenerate $s1 health every 5 sec and $s2% of total Health regeneration may continue during combat.' WHERE  `entry`=24361 AND `build`=5464;

    -- Elixir of Fortitude (Now grants +450 Health)
    UPDATE `mangos`.`item_template` SET required_level = 35 WHERE `entry`=3825;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=449 WHERE  `entry`=3593 AND `build`=4297;

-- Food
    -- Smoked Sagefish (Buffed to 12 MP5)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=11 WHERE  `entry`=25694 AND `build`=5086;

    -- Sagefish Delight (Buffed to 36 MP5)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=35 WHERE  `entry`=25941 AND `build`=5086;


-- Brilliant Smallfish
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33825 WHERE `entry`=6290;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33825, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 85, 1, -1, 6, 6, 1, 1, 17, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33826, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33826s1 melee and ranged attack power for $33826d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33826, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 29, 29, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Bristle Whisker Catfish
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33827 WHERE `entry`=4593;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33827, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 106, 1, -1, 6, 6, 1, 1, 114, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33828, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33828s1 melee and ranged attack power for $33828d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33828, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 44, 44, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Rockscale Cod
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33829 WHERE `entry`=4594;

    -- Recipe
    UPDATE `mangos`.`spell_template` SET `reagentCount1`=2 WHERE  `entry`=7828 AND `build`=4222;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33829, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33830, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33830s1 melee and ranged attack power for $33830d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33830, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 59, 59, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Spotted Yellowtail
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33835 WHERE `entry`=6887;

    -- Recipe
    UPDATE `mangos`.`spell_template` SET `reagentCount1`=2 WHERE  `entry`=18238 AND `build`=4222;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33835, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 9, 1, -1, 6, 6, 1, 1, 231, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33836, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33836s1 melee and ranged attack power for $33836d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33836, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 114, 114, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Cooked Glossy Mightfish
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33837, required_level = 45 WHERE `entry`=13927;

    -- Recipe
    UPDATE `mangos`.`spell_template` SET `reagent3`=30198, `reagent4`=30199, `reagentCount1`=3, `reagentCount3`=1, `reagentCount4`=1 WHERE  `entry`=18239 AND `build`=4222;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33837, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 9, 1, -1, 6, 6, 1, 1, 357, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33838, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33838s1 melee and ranged attack power for $33838d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33838, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 154, 154, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Baked Salmon
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33839, required_level = 55 WHERE `entry`=13935;

    -- Recipe
    UPDATE `mangos`.`spell_template` SET `reagent3`=30198, `reagent4`=30199, `reagentCount1`=4, `reagentCount3`=2, `reagentCount4`=2 WHERE  `entry`=18247 AND `build`=4222;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (33839, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 9, 1, -1, 6, 6, 1, 1, 357, 0, 1, -1, 1, 1, 84, 23, 10000, 1, 33840, 51, 358, 50, 'Food', 4128830, 4128828, 'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33840s1 melee and ranged attack power for $33840d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (33840, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 184, 184, 1, 1, -1, 1, 1, 124, 99, 59, 'Well Fed', 983070, 983052, 983052, 'Melee and ranged attack power increased by $s1.', 983070, 1, 1);

-- Heavy Crocolisk Stew
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33460 WHERE `entry`=20074;

    -- Spell (This is the 10 second eating "channel")
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33460, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
    33461, 51, 358, 50, 'Food', 4128830, 4128828, 
    'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33461s1 Strength and Stamina for $33461d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
    VALUES (33461, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
    7, 7, 1, 1, -1, 1, 1, 29, 29, 
    0, 2, 59, 'Well Fed', 983070, 983052, 983052,
    'Strength and Stamina increased by $s1.', 983070, 1, 1);

-- Tasty Lion Steak
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33462 WHERE `entry`=3728;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33462, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33463, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33463s1 Agility and Stamina for $33463d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33463, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        7, 7, 1, 1, -1, 1, 1, 29, 29, 
        1, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'Agility and Stamina increased by $s1.', 983070, 1, 1);

-- Giant Clam Scorcho
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33464 WHERE `entry`=6038;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33464, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33465, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and Regenerate $33465s1 health every 5 sec and gain $33465s2 Stamina for $33465d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33465, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        19, 7, 1, 1, -1, 1, 1, 161, 29, 
        0, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'Regenerate $s1 health every 5 sec and Stamina increased by $s2.', 983070, 1, 1);

-- Hot Wolf Ribs
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33466 WHERE `entry`=13851;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33466, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33467, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain increased damage and healing done by magical spells and effects by up to $33467s1 for $33467d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33467, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        11, 11, 1, 1, -1, 1, 1, 13, 135, 
        126, 126, 59, 'Well Fed', 983070, 983052, 983052,
        'Increases damage and healing done by magical spells and effects by up to $s1.', 983070, 1, 1);

-- Jungle Stew
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33468 WHERE `entry`=12212;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33468, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33469, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33469s1 increased armor and $33469s2 Stamina for $33469d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33469, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        249, 7, 1, 1, -1, 1, 1, 22, 29, 
        1, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'Armor increased by $s1 and Stamina increased by $s2.', 983070, 1, 1);

-- Roast Raptor
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33470 WHERE `entry`=12210;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33470, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33471, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33471s1 increased resistance to all schools of magic and $33471s2 Stamina for $33471d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33471, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        14, 7, 1, 1, -1, 1, 1, 143, 29, 
        126, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'All resistances increased by $s1 and Stamina increased by $s2.', 983070, 1, 1);

-- Soothing Turtle Bisque
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33472 WHERE `entry`=3729;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33472, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33473, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and allow $33473s1% of your Mana regeneration to continue while casting and gain $33473s2 Stamina for $33473d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33473, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        4, 7, 1, 1, -1, 1, 1, 134, 29, 
        0, 2, 59, 'Well Fed', 983070, 983052, 983052, 'Allows $s1% of your Mana regeneration to continue while casting and Stamina increased by $s2.', 983070, 1, 1);

-- Spider Sausage
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33474 WHERE `entry`=17222;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33474, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33475, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33475s1 Attack power $33475s2 Stamina for $33475d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33475, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        49, 11, 1, 1, -1, 1, 1, 99, 29, 
        0, 2, 59, 'Well Fed', 983070, 983052, 983052, 'Attack power increased by $s1 and Stamina increased by $s2.', 983070, 1, 1);

-- Monster Omelet
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33476 WHERE `entry`=12218;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33476, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33477, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain increased damage and healing done by magical spells and effects by up to $33477s1 for $33477d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33477, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        24, 24, 1, 1, -1, 1, 1, 13, 135, 
        126, 126, 59, 'Well Fed', 983070, 983052, 983052,
        'Increases damage and healing done by magical spells and effects by up to $s1.', 983070, 1, 1);

-- Spiced Chili Crab
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33478 WHERE `entry`=12216;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33478, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33479, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33479s1 increased armor and $33479s2 Stamina for $33479d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33479, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        449, 11, 1, 1, -1, 1, 1, 22, 29, 
        1, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'Armor increased by $s1 and Stamina increased by $s2.', 983070, 1, 1);

-- Tender Wolf Steak
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33480 WHERE `entry`=18045;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33480, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33481, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain $33481s1 increased resistance to all schools of magic and $33481s2 Stamina for $33481d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33481, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        24, 11, 1, 1, -1, 1, 1, 143, 29, 
        126, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'All resistances increased by $s1 and Stamina increased by $s2.', 983070, 1, 1);

-- Undermine Clam Chowder
    -- Item
    UPDATE `mangos`.`item_template` SET `spellid_1`=33482 WHERE `entry`=16766;

    -- Spell (This is the 10 second eating "channel")
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude2`, `effectMultipleValue1`, `effectTriggerSpell2`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33482, 5464, 11, 402653440, 2147483648, 1, 60000, 1, 262272, 101, 35, 205, 1, -1, 6, 6, 1, 1, 161, 0, 1, -1, 1, 1, 84, 23, 10000, 1,
        33483, 51, 358, 50, 'Food', 4128830, 4128828, 
        'Restores $o1 health over $d.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and Regenerate $33483s1 health every 5 sec and gain $33483s2 Stamina for $33483d.', 4128830, 'Restores $/5;s1 health per second.', 4128830, -1, 1, 1, 1);

    -- Buff (This is the actual buff applied)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `dmgMultiplier1`, `dmgMultiplier2`) 
        VALUES (33483, 4222, 134217984, 2147483648, 1, 101, 347, 1, -1, 6, 6, 1, 1, 1, 1, 
        39, 11, 1, 1, -1, 1, 1, 161, 29, 
        0, 2, 59, 'Well Fed', 983070, 983052, 983052,
        'Regenerate $s1 health every 5 sec and Stamina increased by $s2.', 983070, 1, 1);

-- Template
    -- Item
    -- Spell (This is the 10 second eating "channel")
    -- Buff (This is the actual buff applied)

-- Reforge Sword of Heroes
    INSERT IGNORE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (30000, 5302, 1, 101, 56, 56, 9, 3, 1, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 99, 5800, 83, 50, 'Reforged Blade of Heroes', 2031678, 2031662, 'Increases attack power by $s1 for $d.', 2031678, 'Attack power increased by $s1.', 2031678, 133, 1500, 4, -1, 1, 1, 1);
-- NEXT 50001