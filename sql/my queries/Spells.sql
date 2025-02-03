-- Spells
-- 33409 NEXT SPELL
-- 15039 NEXT SKILL_LINE_ABILITY

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
    -- TODO: Icon
    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `category`, `attributes`, `attributesEx2`, `castingTimeIndex`, `categoryRecoveryTime`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33393, 4222, 82, 327696, 67108864, 1, 10000, 101, 10, 10, 27, 40, 4, -1, -1, 114, 6, 1, 0, -1, 6, 6, 11, 34, 307, 'Hand of Reckoning', 7274526, 983068, 'Taunts the target to attack you, but has no effect if the target is already attacking you.', 983070, 983052, 4, 32768, 1, 1, -1, 1, 1, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15031, 5875, 267, 33393, 2, 1);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33394, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33393, 107, 307, 122, 'Hand of Reckoning', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);
    
    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33394, 300, 10);

-- Crusader Strike (Next attack: Restore MP) TODO: Not done, also should prob just change the effect2 to effect1 as bonus damage isn't needed, only MP restore (energize).
    -- TODO: Icon
    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33395, 4695, 327700, 134217728, 1024, 1, 101, 
    8, 8, 0, 0, 2, 2, 173555, 30, 1, 1, 
    19, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 1', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33396, 4695, 327700, 134217728, 1024, 1, 101, 
    16, 16, 0, 0, 2, 2, 173555, 30, 1, 1, 
    39, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 2', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33397, 4695, 327700, 134217728, 1024, 1, 101, 
    24, 24, 0, 0, 2, 2, 173555, 30, 1, 1, 
    79, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 3', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33398, 4695, 327700, 134217728, 1024, 1, 101, 
    32, 32, 0, 0, 2, 2, 173555, 30, 1, 1, 
    159, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 4', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33399, 4695, 327700, 134217728, 1024, 1, 101, 
    40, 40, 0, 0, 2, 2, 173555, 30, 1, 1, 
    319, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 5', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33400, 4695, 327700, 134217728, 1024, 1, 101, 
    48, 48, 0, 0, 2, 2, 173555, 30, 1, 1, 
    399, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 6', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `powerType`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33401, 4695, 327700, 134217728, 1024, 1, 101, 
    56, 56, 0, 0, 2, 2, 173555, 30, 1, 1, 
    549, -1, -1, -1, 1, 39, 856, 50, 'Crusader Strike', 2031678, 'Rank 7', 2031678, 'A melee attack that restores $s1 mana.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15032, 5875, 184, 33395, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15033, 5875, 184, 33396, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15034, 5875, 184, 33397, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15035, 5875, 184, 33398, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15036, 5875, 184, 33399, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15037, 5875, 184, 33400, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15038, 5875, 184, 33401, 2, 1);


    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33402, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33395, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33403, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33396, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33404, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33397, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33405, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33398, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33406, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33399, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33407, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33400, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 6', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33408, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33401, 107, 307, 122, 'Crusader Strike', 7274526, 'Rank 7', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33395, 33395, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33396, 33395, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33397, 33395, 3);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33398, 33395, 4);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33399, 33395, 5);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33400, 33395, 6);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33401, 33395, 7);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33402, 200, 8);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33403, 2000, 16);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33404, 8000, 24);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33405, 14000, 32);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33406, 22000, 40);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33407, 40000, 48);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33408, 58000, 56);

-- Holy Strike (Next attack: Restore MP) TODO: Not done, also should prob just change the effect2 to effect1 as bonus damage isn't needed, only MP restore (energize).
    -- TODO: Icon
    -- Spell:
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33409, 4695, 1, 327700, 134217728, 1024, 1, 101, 6, 6, 40, 2, 2, 173555, 58, 1, 1, 
    20, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 1', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33410, 4695, 1, 327700, 134217728, 1024, 1, 101, 16, 16, 60, 2, 2, 173555, 58, 1, 1, 
    31, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 2', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33411, 4695, 1, 327700, 134217728, 1024, 1, 101, 26, 26, 90, 2, 2, 173555, 58, 1, 1, 
    43, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 3', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33412, 4695, 1, 327700, 134217728, 1024, 1, 101, 36, 36, 120, 2, 2, 173555, 58, 1, 1, 
    57, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 4', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33413, 4695, 1, 327700, 134217728, 1024, 1, 101, 46, 46, 170, 2, 2, 173555, 58, 1, 1, 
    110, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 5', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `attributesEx3`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) 
    VALUES (33414, 4695, 1, 327700, 134217728, 1024, 1, 101, 56, 56, 200, 2, 2, 173555, 58, 1, 1, 
    137, 1, -1, -1, 6, 39, 856, 50, 'Holy Strike', 2031678, 'Rank 6', 2031678, 'A strong attack that converts your attack into holy damage, adds $s1 holy damage and causes a high amount of threat.', 2031678, 2031644, 4, 64, 2, 2, -1, 1, 1, 1, 128);

    -- Skill line ability:
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15039, 5875, 184, 33409, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15040, 5875, 184, 33410, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15041, 5875, 184, 33411, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15042, 5875, 184, 33412, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15043, 5875, 184, 33413, 2, 1);
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15044, 5875, 184, 33414, 2, 1);

    -- Spell Threat (Bonus threat)
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33409, 39);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33410, 59);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33411, 78);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33412, 98);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33413, 118);
    REPLACE `mangos`.`spell_threat` (`entry`, `Threat`) VALUES (33414, 145);

    -- Learn spell(for trainer):
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33415, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33409, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 1', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33416, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33410, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33417, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33411, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33418, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33412, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 4', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33419, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33413, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 5', 7274526, 7274508, 983052, -1, 1, 1, 1);

    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (33420, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 33414, 107, 307, 122, 'Holy Strike', 7274526, 'Rank 6', 7274526, 7274508, 983052, -1, 1, 1, 1);

    -- Spell Chain
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33409, 33409, 1);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33410, 33409, 2);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33411, 33409, 3);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33412, 33409, 4);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33413, 33409, 5);
    REPLACE `mangos`.`spell_chain` (`spell_id`, `first_spell`, `rank`) VALUES (33414, 33409, 6);

    -- Trainer
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33415, 200, 6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33416, 200, 6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33417, 200, 6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33418, 200, 6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33419, 200, 6);
    REPLACE `mangos`.`npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES (29, 33420, 200, 6);


-- Reforge Sword of Heroes
INSERT IGNORE `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (30000, 5302, 1, 101, 56, 56, 9, 3, 1, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 99, 5800, 83, 50, 'Reforged Blade of Heroes', 2031678, 2031662, 'Increases attack power by $s1 for $d.', 2031678, 'Attack power increased by $s1.', 2031678, 133, 1500, 4, -1, 1, 1, 1);
-- NEXT 50001