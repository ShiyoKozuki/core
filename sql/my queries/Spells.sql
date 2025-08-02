
-- 33518 NEXT SPELL
-- 15010 NEXT SKILL_LINE_ABILITY

-- Spells
-- effectItemType -> (spellFamilyFlags? It's the enum I don't know why this was referenced to me) is enum ClassFlag in SpellClassMask.h
-- spellfamiylflag is enum ClassFlag
-- *****MUST UNLEARN ALL RANKS OF SPELLS(NOT JUST LOWEST) WHEN TESTING!!*****

-- Used with auraName HandleAuraModStat(29)
-- Value for effetMiscValue
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
--     POWER_RAGE                          = 1,            // UNIT_FIELD_POWER2
--     POWER_FOCUS                         = 2,            // UNIT_FIELD_POWER3
--     POWER_ENERGY                        = 3,            // UNIT_FIELD_POWER4
--     POWER_HAPPINESS                     = 4,            // UNIT_FIELD_POWER5
--     POWER_HEALTH                        = 0xFFFFFFFE    // (-2 as signed value)
-- };

-- Effect is enum SpellEffects

-- Used with auraName SPELL_AURA_ADD_PCT_MODIFIER = 108
-- Value for effetMiscValue
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

-- For effectApplyAuraName1 13 and 135 all damage and healing is effectMiscValue1 126 (mask for all magic schools (non-physical))
-- MP/5s is SPELL_AURA_MOD_POWER_REGEN = 85

-- SPELL_AURA_ADD_PCT_MODIFIER = 108
-- For % damage, effectMiscValue1 has to be 8

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

-- Rogue

    -- Camouflage (10-50% stealth movement speed)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=13975 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=14062 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=14063 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=39 WHERE  `entry`=14064 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=49 WHERE  `entry`=14065 AND `build`=5875;

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
    'Counter', 4128894, 'Rank 1', 4128894, 'Gives you a $h1% chance to counter your the enemy after dodging their attack or fully resisting one of their spells.', 4128894, 4128892, -1, 1);
    UPDATE `mangos`.`spell_template` SET `spellVisual1`=7240, `spellIconId`=1723 WHERE  `entry`=33508;
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
    VALUES (33451, 5302, 1, 33882112, 524288, 134217728, 1, 87376, 100, 1, 8, 1, -1, 6, 1, 1, -51, 0, 0, -1, 1, 108, 2121728, 14, 4372, 2043, 'Infusion of Light', 2031678, 2031676, 'Rreduces the Mana cost of your next Holy Light, Flash of Light or Holy Shock by $s1%.', 2031678, 'The Mana cost of your Holy Light, Flash of Light or Holy Shock is reduced by $s1%.', 2031678, 6, 1, 1, -1, 1, 1);


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

-- Consecration spel power scaling +25% (0.042% - > 0.052%)
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=26573;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20116;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20922;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20923;
UPDATE `mangos`.`spell_template` SET `effectBonusCoefficient1`=0.052 WHERE  `entry`=20924;

-- Rogue
    -- Improved Garrote (10%/20%)
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33498, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 14, 1, -1, -1, 1, 108, 256, 498, 'Improved Garrote', 983070, 'Rank 1', 983070, 'Increases the damage done by your Garrote ability by $s1%.', 983070, 983052, 8, -1, 1);
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=22 WHERE  `entry`=33498 AND `build`=4222;

    REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33499, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 29, 1, -1, -1, 1, 108, 256, 498, 'Improved Garrote', 983070, 'Rank 2', 983070, 'Increases the damage done by your Garrote ability by $s1%.', 983070, 983052, 8, -1, 1);
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=22 WHERE  `entry`=33499 AND `build`=4222;

    -- Mutilate
    -- TODO: Rank 1-2?
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33500, 4878, 327696, 134218240, 0, 1024, 1, 101, 44, 44, 3, 60, 2, 2, 32768, 121, 31, 80, 1, 1, 1, 1, 1, 1, 89, 199, 1, 1, 1, 0, 6, 6, 6, 155, 434, 50, 'Mutilate', 2031678, 'Rank 1', 2031678, 'Instantly attacks with both weapons for $s2% weapon damage plus 135 to the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.', 2031678, 2031676, 133, 1000, 8, 8388612, 2, 2, -1, 1, 1, 1, 128);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15061, 5875, 253, 33500, 8, 1);
    -- Rank2 33501
    -- Rank3 33502

    -- Swiftblade's Cunning
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `preventionType`, `dmgMultiplier1`, `dmgMultiplier2`) 
    VALUES (33503, 5464, 6, 65536, 1, 8, 101, 40, 40, 30, 0, 0, 1, -1, 35, 35, 1, 1, 1, 1, 9, 9, 0, 0, -1, 1, 1, 11, 11, 140, 9, 5839, 247, 'Swiftblade\'s Cunning', 4128830, 'Rank 1', 4128830, 'Increases the melee and ranged attack speed of party members within $a1 yards by $s1%.  Lasts $d.', 4128830, 'Melee and ranged attack speed increased by $s1%.', 4128830, 133, 1500, 1, 1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15062, 5875, 39, 33503, 8, 1);
    UPDATE `mangos`.`spell_template` SET `startRecoveryTime`=1000 WHERE  `entry`=33503 AND `build`=5464;

    -- Axes added to rogue
    -- TODO: Doesn't work?
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4544;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4695;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=4878;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5086;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5302;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5464;
    UPDATE `mangos`.`skill_line_ability` SET `class_mask`=79 WHERE  `id`=248 AND `build`=5875;

-- Druid
    -- Swipe (3 - > 5 targets. Weapon damage + X instead of flat damage)
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=4, `effectChainTarget1`=5, 
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.'
    WHERE  `entry`=779;

    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=9, `effectChainTarget1`=5,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=780;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=17, `effectChainTarget1`=5,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=769;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=31, `effectChainTarget1`=5,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.' 
    WHERE  `entry`=9754;
    UPDATE `mangos`.`spell_template` SET `attributes`=1044 , `attributesEx`=134218240, `effect1`=58, `effectBasePoints1`=49, `effectChainTarget1`=5,
        `description`='Swipe $x1 nearby enemies with your next attack, inflicting $s1 damage.'
    WHERE  `entry`=9908;

    -- Starfall (TODO: NYI and missing skill line ability)
    REPLACE `mangos`.`spell_template` (`entry`, `school`, `category`, `attributes`, `attributesEx`, `attributesEx2`, `stances`, `targets`, `castingTimeIndex`, `categoryRecoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33496, 3, 571, 65536, 140, 4718592, 1073741824, 64, 1, 90000, 1, 31756, 101, 46, 40, 40, 1, 880, 4, -1, -1, 27, 27, 1, 1, 1, 1, 0.2, 69, -26, 0.03, 0, -1, 28, 28, 14, 14, 3, 138, 1000, 4346, 220, 'Starfall', 4128894, 'Rank 1', 4128894, 'You summon a flurry of stars from the sky dealing $s1 Arcane damage to enemies every $t1 sec.  Lasts $d.', 4128894, '$s1 damage every $t1 seconds.', 4128894, 133, 1500, 7, 4194304, 1, 1, -1, 1, 1, 1);

    -- Cyclone
    REPLACE `mangos`.`spell_template` (`entry`, `school`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `targetCreatureType`, `castingTimeIndex`, `interruptFlags`, `auraInterruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice3`, `effectBasePoints1`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectApplyAuraName1`, `effectMiscValue2`, `effectMiscValue3`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33505, 6, 1, 17, 1074855936, 262144, 64, 96, 16, 15, 524290, 101, 20, 20, 9, 90, 4, -1, -1, 6, 1, 1, 1, 1, -1, 9, 0, 0, 0, 6, 6, 6, 5, 16372, 21, 131, 82, 50, 'Cyclone', 4128894, 'Rank 1', 4128894, 'Tosses the enemy target into the air, disorienting them for up to $d. Any damage caused will remove the effect. Only one target can be affected by your Cyclone at a time. Only works on Undead and Humanoids.', 4128894, 'Cannot attack or cast spells.', 4128894, 133, 1500, 7, 3238264832, 1, 1, -1, 1, 1, 1, 256);
    UPDATE `mangos`.`spell_template` SET `spellVisual1`=805, `spellIconId`=141 WHERE  `entry`=33505 AND `build`=5875;
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15064, 5875, 574, 33505, 1024, 1);

    -- Blessing of the Forest (Druid res)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `stancesNot`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33512, 4449, 1, 268500992, 131072, 134217728, 32768, 7, 15, 101, 10, 10, 4, -1, 113, 1, 1, 499, 1, -1, -1, 135, 41, 111, 50, 
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


-- Libram of the Consecrated
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33454, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -51, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33455, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -76, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33456, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -101, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (33457, 5302, 464, 1, 101, 21, 1, -1, 6, 1, 1, -126, 1, -1, -1, 1, 107, 32, 14, 13, 'Consecration Cost Reduced', 2031678, 2031628, 'Reduces the mana cost of your Consecration spell by $s1.', 2031678, 2031628, 10, 4096, -1, 1);

-- Libram of Judgement
    -- Spell (This is the aura that procs the acutal buff)
        REPLACE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) 
        VALUES (33458, 4695, 1, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8388608, 0, 0, 0, 0, 0, 33459, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 'Libram of Judgement', 2031678, '', 2031628, 'Increases your attack power by 50 after casting Judgement, stacking up to 4 times.', 2031646, '', 2031628, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '');

    -- Proc (This is the actual buff)
        REPLACE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) 
        VALUES (33459, 5302, 1, 0, 0, 1, 0, 671088640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 40, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 126, 0, 0, 0, 0, 0, 0, 0, 969, 0, 1677, 0, 0, 'Libram of Judgement', 2031678, '', 2031628, 'Increases attack power by $s1, stacking up to 4 times.', 2031678, 'Increases attack power by $s1, stacking up to 4 times.', 2031678, 0, 0, 0, 0, 0, 10, 0, 0, 1, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');

-- Libram of Mending
    -- Spell (This is the aura that procs the acutal buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
        VALUES (33484, 4695, 1, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2147483648, 33485, 156, 'Libram of Mending', 2031678, 2031628, 'Your Holy Light spell grants $33485s1 mana per 5 sec. for 30 sec.', 2031646, 2031628, 10, 1);
    
    -- Proc (This is the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33485, 5302, 1, 1, 671088640, 1, 101, 40, 9, 1, -1, -1, 6, 1, 1, 19, 0, 0, -1, 1, 85, 0, 0, 4370, 1754, 'Libram of Mending', 2031678, 2031628, 'Your Holy Light grants $s1 mana per 5 sec. for 30 sec.', 2031678, 'Regenerate $s1 mana per 5 sec.', 2031678, 10, 1, -1, 1, 1, 1);

-- Burning Heart (Fire Blast stacking Spirit buff)

    -- Spell (This is the aura that procs the acutal buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
    VALUES (33486, 4695, 2, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2, 33487, 156, 'Burning Heart', 2031678, 2031628, 'Your Fire Blast spell grants $33487s1 Spirit for 30 seconds, stacking up to 5 times.', 2031646, 2031628, 3, 1);

    -- Proc (This is the actual buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33487, 5302, 2, 1, 671088640, 1, 101, 40, 9, 1, 5, -1, -1, 6, 1, 1, 9, 0, 0, -1, 1, 29, 4, 969, 876, 'Burning Heart', 2031678, 2031628, 'Your Fire Blast spell grants $s1 Spirit for 30 seconds, stacking up to 5 times.', 2031678, 'Spirit increased by $s1.', 2031678, 10, 1, -1, 1, 1, 1);

-- Arcane Brand (Arcane Missles +Spell dmg taken % debuff)

    -- Spell (This is the aura that procs the acutal buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
        VALUES (33488, 4695, 6, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 2048, 33489, 156, 'Arcane Brand', 2031678, 2031628, 'Your Arcane Missles spell causes the target to take $33489s1% additional spell damage for 60 seconds.', 2031646, 2031628, 3, 1);

    -- Proc (This is the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33489, 5302, 6, 1, 671088640, 1, 101, 40, 3, 1, -1, -1, 6, 1, 1, 9, 0, 0, -1, 6, 87, 126, 969, 191, 'Arcane Branding', 2031678, 2031628, 'Your Arcane Missles spell causes the target to take $s1% additional spell damage for 60 seconds.', 2031678, 'Spell damage taken increased by $s1%.', 2031678, 10, 1, -1, 1, 1, 1);

-- Inflame (Scorch stacking spell power buff)

    -- Spell (This is the aura that procs the acutal buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`) 
        VALUES (33490, 4695, 2, 64, 1, 101, 21, 1, -1, 6, 1, 1, 99, 1, -1, -1, 1, 109, 16, 33491, 156, 'Inflame', 2031678, 2031628, 'Your Scorch spell increases your spell damage by $33491s1 for 30 seconds, stacking up to 5 times.', 2031646, 2031628, 3, 1);

    -- Proc (This is the actual buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procChance`, `baseLevel`, `durationIndex`, `rangeIndex`, `stackAmount`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33491, 5302, 2, 1, 671088640, 1, 101, 40, 9, 1, 5, -1, -1, 6, 1, 1, 19, 0, 0, -1, 1, 13, 126, 335, 816, 'Inflame', 2031678, 2031628, 'Your Scorch spell increases your spell damage by $s1 for 30 seconds, stacking up to 5 times.', 2031678, 'Spell power increased by $s1.', 2031678, 10, 1, -1, 1, 1, 1);

-- Freezing Desire (Fireball proc to make next Frostbolt deal 100% more damage)
    -- Spell (This is the aura that procs the acutal buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33492, 5464, 4, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 1, 33493, 173, 'Freezing Desire', 4128830, '0', 4128830, 'Your Fireball spell has a $h% chance to increase the damage of your next Frostbolt spell by $33493s1%', 4128830, 4128828, 3, -1, 1);

    -- Proc (This is the actual buff)
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33493, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 99, 0, -1, -1, 1, 108, 32, 8, 2736, 154, 'Freezing Desire', 4128830, 4128828, 4128828, 'Your next Frostbolt spell deals $s1% increased damage.', 4128830, 3, 1, 1, -1, 1, 1, 1);

-- Burning Desire (Frostbolt proc to make next Fireball deal 50% more damage)
    -- Spell (This is the aura that procs the acutal buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (33494, 5464, 2, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 32, 33495, 173, 'Burning Desire', 4128830, '0', 4128830, 'Your Frostbolt spell has a $h% chance to increase the damage of your next Fireball spell by $33495s1%.', 4128830, 4128828, 3, -1, 1);

    -- Proc (This is the actual buff)
    REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33495, 5464, 2, 1, 327680, 1, 87376, 100, 1, 10, 10, 9, 6, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 108, 1, 8, 2736, 1137, 'Burning Desire', 4128830, 4128828, 4128828, 'Your next Fireball spell deals $s1% increased damage.', 4128830, 3, 1, 1, -1, 1, 1, 1);

    -- Idol of Elune (Wrath proc reduces cast time of Starfire by 0.5s. 10% Chance)
        -- Spell (This is the aura that procs the acutal buff)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33513, 5464, 4, 464, 67108864, 1, 87376, 10, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by $33493s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33514, 5464, 4, 464, 67108864, 1, 87376, 15, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by $33493s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33515, 5464, 4, 464, 67108864, 1, 87376, 20, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by $33493s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
        VALUES (33516, 5464, 4, 464, 67108864, 1, 87376, 25, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 
        1, 33517, 87, 'Idol of Elune', 4128830, '0', 4128830, 'Your Wrath spell has a $h% chance to reduce the cast time of your next Starfire spell by $33493s1%. Stacks up to 5 times.', 4128830, 4128828, 7, -1, 1);

        -- Proc (This is the actual buff)
        REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (33517, 5464, 4, 1, 327680, 1, 87376, 100, 1, 10, 10, 3, 6, -1, -1, 6, 1, 1, 
        -501, 0, -1, -1, 1, 107,  4, 10, 2736, 87, 'Idol of Elune', 4128830, 4128828, 4128828, 'Your next Starfire spell has 0.5 reduced cast time.', 4128830, 3, 1, 1, -1, 1, 1, 1);
        UPDATE `mangos`.`spell_template` SET `stackAmount`=5 WHERE  `entry`=33517 AND `build`=5464;


-- Template:
-- Name
    -- Spell (This is the aura that procs the acutal buff)
    -- Proc (This is the actual buff)

-- Food

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