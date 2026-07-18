SET
-- Leather
@ITEM_GREEN_DRAGONSCALE = 15412,
@ITEM_BLUE_DRAGONSCALE = 15415,
@ITEM_RED_DRAGONSCALE = 15414,
@ITEM_BLACK_DRAGONSCALE = 15416,
@ITEM_DEVILSAUR_LEATHER = 15417,
@ITEM_RUGGED_LEATHER = 8170,
@ITEM_CURED_RUGGED_HIDE = 15407,

-- Cloth
@ITEM_FELCLOTH = 14256,
@ITEM_BOLT_OF_RUNECLOTH = 14048,
@ITEM_MOONCLOTH = 14342,

-- Mining
@ITEM_DENSE_GRINDING_STONE = 12644,
@ITEM_TRUESILVER_BAR = 6037,
@ITEM_THORIUM_BAR = 12359,
@ITEM_DARK_IRON_BAR = 11371,
@ITEM_ARCANITE_BAR = 12360,
@ITEM_BLUE_SAPPHIRE = 12361,
@ITEM_HUGE_EMERALD = 12364,
@ITEM_AZEROTHIAN_DIAMOND = 12800,

-- Herbs
@ITEM_ICECAP = 13467,
@ITEM_PLAGUEBLOOM = 13466,
@ITEM_MOUNTAIN_SILVERSAGE = 13465,
@ITEM_DREAMFOIL = 13463,

-- Enchanting
@ITEM_ILLUSION_DUST = 16204,
@ITEM_LESSER_ETERNAL_ESSENCE = 16202,
@ITEM_GREATER_ETERNAL_ESSENCE = 16203,
@ITEM_LARGE_BRILLIANT_SHARD = 14344,
@ITEM_NEXUS_CRYSTAL = 20725,
@ITEM_ENCHANTED_LEATHER = 17181,
@ITEM_ENCHANTED_THORIUM = 17180,

-- Alchemy
@ITEM_GOBLIN_ROCKET_FUEL = 9061,
@ITEM_FIRE_OIL = 7837,

-- Fish
-- Drops
@ITEM_ESSENCE_OF_WATER = 7080,
@ITEM_ESSENCE_OF_FIRE = 7078,
@ITEM_LIVING_ESSENCE = 12803,
@ITEM_ESSENCE_OF_AIR = 7082,
@ITEM_ESSENCE_OF_EARTH = 7076,
@ITEM_ESSENCE_OF_UNDEATH = 12808,
@ITEM_HEART_OF_FIRE = 7077,
@ITEM_HEART_OF_THE_WILD = 10286,
@ITEM_BREATH_OF_WIND = 7081,
@ITEM_GLOBE_OF_WATER = 7079,
@ITEM_IRONWEB_SPIDER_SILK = 14227,
@ITEM_GUARDIAN_STONE = 12809,
@ITEM_DARK_RUNE = 20520,
@ITEM_DEMONIC_RUNE = 12662,
@ITEM_GOLDEN_PEARL = 13926,
@ITEM_LARVAL_ACID = 18512,
@ITEM_POWERFUL_MOJO = 12804,
@ITEM_IRONFEATHER = 15420,

-- Tools
@ITEM_RUNED_ARCANITE_ROD = 16207,

-- New (Custom)
@ITEM_ELEMENTAL_FLUX = 18567,
@ITEM_ECTOPLASM = 30210,
@ITEM_COSMIC_DUST = 30211,
@ITEM_ANCIENT_RUNESTONE = 30212,
@ITEM_HYDRA_SCALES = 30213,
@ITEM_DARKSTEEL_ORE = 30214,
@ITEM_TIGER_HIDE = 30215,
@ITEM_DIVINE_LOG = 30216,
@ITEM_RAINBOW_THREAD = 30217,
@ITEM_VOID_STAR_FRAGMENT = 30218,
@ITEM_BROKEN_TITAN_CORE = 30219,
@ITEM_FEL_GRASS = 30220,
@ITEM_KIRIN_TOR_RUNE_DUST = 30225,
@ITEM_MANA_FRAGMENT = 30226,
@ITEM_MANA_INFUSED_CLOTH_SCRAPS = 30227,
@ITEM_DRAGON_HEART = 30323,
@ITEM_DARKSTEEL_INGOT = 30324,
@ITEM_TITAN_POWER_CORE = 30325,
@ITEM_DRAGON_BLOOD = 30326,
@ITEM_TIGER_LEATHER = 30327,
@ITEM_RAINBOW_CLOTH = 30328,
@ITEM_ENCHANTED_LUMBER = 30329,
@ITEM_CERMET_CHUNK = 30330,
@ITEM_DARKSTEEL_SCALES = 30331,
@ITEM_HARDENED_HYDRA_SCALES = 30332,
@ITEM_GLUE = 30333,
@ITEM_THORIUM_SHEET = 30334,
@ITEM_THORIUM_BOLTS = 30335,
@ITEM_RUGGED_RUBBER = 30336,
@ITEM_IMBUED_RUNECLOTH = 30337,
@ITEM_SIMPLE_FLOUR = 30338,
@ITEM_OLIVE_OIL = 30339,
@ITEM_BUTTER = 30340,
@ITEM_BREAD = 30341,
@ITEM_MERCURY = 30342,
@ITEM_HONEY = 30343,
@ITEM_LATEX = 30344,
@ITEM_BLACK_INK = 30345,
@ITEM_POISON_DUST = 30346,
@ITEM_VENOM_DUST = 30347,
@ITEM_PARALYSIS_DUST = 30348;

-- Crafting recipes

-- Edited
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
    -- Enchanting
        -- Simple Wood Staff (Min: 50, Max: 90)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34089, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=10940, `reagent3`=10938, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30179, `spellIconId`=579, `name`='Simple Wood Staff' WHERE  `entry`=34089;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34090, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34089, 107, 241, 'Simple Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);


            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15139, 5875, 333, 34089, 1, 90, 50);

            -- Trainer (Enchanting - Journeyman)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (3606, 34090, 250, 333, 50),
                    (11065, 34090, 250, 333, 50),
                    (11068, 34090, 250, 333, 50),
                    (11070, 34090, 250, 333, 50);
            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34090, 250, 333, 50),
                    (5157, 34090, 250, 333, 50),
                    (7949, 34090, 250, 333, 50);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34090, 250, 333, 50);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34090, 250, 333, 50);

        -- Maple Wood Staff (Min: 100, Max: 140)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34091, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=11083, `reagent3`=10998, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30180, `spellIconId`=579, `name`='Maple Wood Staff' WHERE  `entry`=34091;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34092, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34091, 107, 241, 'Maple Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15140, 5875, 333, 34091, 1, 140, 100);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34092, 400, 333, 100),
                    (5157, 34092, 400, 333, 100),
                    (7949, 34092, 400, 333, 100);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34092, 400, 333, 100);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34092, 400, 333, 100);

        -- Walnut Wood Staff (Min: 150, Max: 190)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34093, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=11137, `reagent3`=11134, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30181, `spellIconId`=579, `name`='Walnut Wood Staff' WHERE  `entry`=34093;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34094, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34093, 107, 241, 'Walnut Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15141, 5875, 333, 34093, 1, 190, 150);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34094, 750, 333, 150),
                    (5157, 34094, 750, 333, 150),
                    (7949, 34094, 750, 333, 150);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34094, 750, 333, 150);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34094, 750, 333, 150);
                
        -- Chestnut Wood Staff (Min: 200, Max: 240)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34095, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=11176, `reagent3`=11174, `reagentCount1`=3, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30182, `spellIconId`=579, `name`='Chestnut Wood Staff' WHERE  `entry`=34095;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34096, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34095, 107, 241, 'Chestnut Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15142, 5875, 333, 34095, 1, 240, 200);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34096, 1600, 333, 200),
                    (5157, 34096, 1600, 333, 200),
                    (7949, 34096, 1600, 333, 200);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34096, 1600, 333, 200);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34096, 1600, 333, 200);

        -- Rosewood Wood Staff (Min: 250, Max: 290)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34097, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=16204, `reagent3`=16202, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30183, `spellIconId`=579, `name`='Rosewood Wood Staff' WHERE  `entry`=34097;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34098, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34097, 107, 241, 'Rosewood Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15143, 5875, 333, 34097, 1, 290, 250);

            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34098, 2800, 333, 250);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34098, 2800, 333, 250);

        -- Ancient Wood Staff (Min: 300, Max: 340)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34099, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 241, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=14344, `reagent3`=20725, `reagent4`=12803, `reagent5`=7080, `reagent6`=7082, `reagentCount1`=25, `reagentCount2`=15, `reagentCount3`=5, `reagentCount4`=15, `reagentCount5`=15, `reagentCount6`=15, `effectItemType1`=30184, `spellIconId`=579, `name`='Ancient Wood Staff' WHERE  `entry`=34099;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34100, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34099, 107, 241, 'Ancient Wood Staff', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15144, 5875, 333, 34099, 1, 340, 300);

            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34100, 12500, 333, 300);

        -- Simple Wood Bow (Min: 50, Max: 90)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34101, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=10940, `reagent3`=10938, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30173, `spellIconId`=364, `name`='Simple Wood Bow' WHERE  `entry`=34101;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34102, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34101, 107, 1, 'Simple Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15145, 5875, 333, 34101, 1, 90, 50);

            -- Trainer (Enchanting - Journeyman)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (3606, 34102, 250, 333, 50),
                    (11065, 34102, 250, 333, 50),
                    (11068, 34102, 250, 333, 50),
                    (11070, 34102, 250, 333, 50);
            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34102, 250, 333, 50),
                    (5157, 34102, 250, 333, 50),
                    (7949, 34102, 250, 333, 50);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34102, 250, 333, 50);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34102, 250, 333, 50);

        -- Maple Wood Bow (Min: 100, Max: 140)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34103, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=11083, `reagent3`=10998, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30174, `spellIconId`=364, `name`='Maple Wood Bow' WHERE  `entry`=34103;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34104, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34103, 107, 1, 'Maple Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15146, 5875, 333, 34103, 1, 140, 100);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34104, 400, 333, 100),
                    (5157, 34104, 400, 333, 100),
                    (7949, 34104, 400, 333, 100);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34104, 400, 333, 100);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34104, 400, 333, 100);

        -- Walnut Wood Bow (Min: 150, Max: 190)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34105, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4470, `reagent2`=11137, `reagent3`=11134, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30175, `spellIconId`=364, `name`='Walnut Wood Bow' WHERE  `entry`=34105;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34106, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34105, 107, 1, 'Walnut Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15147, 5875, 333, 34105, 1, 190, 150);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34106, 750, 333, 150),
                    (5157, 34106, 750, 333, 150),
                    (7949, 34106, 750, 333, 150);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34106, 750, 333, 150);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34106, 750, 333, 150);
                
        -- Chestnut Wood Bow (Min: 200, Max: 240)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34107, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=11176, `reagent3`=11174, `reagentCount1`=3, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30176, `spellIconId`=364, `name`='Chestnut Wood Bow' WHERE  `entry`=34107;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34108, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34107, 107, 1, 'Chestnut Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15148, 5875, 333, 34107, 1, 240, 200);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34108, 1600, 333, 200),
                    (5157, 34108, 1600, 333, 200),
                    (7949, 34108, 1600, 333, 200);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34108, 1600, 333, 200);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34108, 1600, 333, 200);

        -- Rosewood Wood Bow (Min: 250, Max: 290)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34109, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=16204, `reagent3`=16202, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30177, `spellIconId`=364, `name`='Rosewood Wood Bow' WHERE  `entry`=34109;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34110, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34109, 107, 1, 'Rosewood Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15149, 5875, 333, 34109, 1, 290, 250);

            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34110, 2800, 333, 250);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34110, 2800, 333, 250);

        -- Ancient Wood Bow (Min: 300, Max: 340)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34111, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=14344, `reagent3`=20725, `reagent4`=12803, `reagent5`=7080, `reagent6`=7076, `reagentCount1`=25, `reagentCount2`=15, `reagentCount3`=5, `reagentCount4`=15, `reagentCount5`=15, `reagentCount6`=15, `effectItemType1`=30178, `spellIconId`=364, `name`='Ancient Wood Bow' WHERE  `entry`=34111;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34112, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34111, 107, 1, 'Ancient Wood Bow', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15150, 5875, 333, 34111, 1, 340, 300);

            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34112, 12500, 333, 300);
            
            -- Chestnut Wand (Min: 200, Max: 240)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34113, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1624, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=11176, `reagent3`=11174, `reagentCount1`=3, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30200, `spellIconId`=1624, `name`='Chestnut Wand' WHERE  `entry`=34113;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34114, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34113, 107, 1624, 'Chestnut Wand', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15151, 5875, 333, 34113, 1, 240, 200);

            -- Trainer (Enchanting - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1317, 34114, 1600, 333, 200),
                    (5157, 34114, 1600, 333, 200),
                    (7949, 34114, 1600, 333, 200);
            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34114, 1600, 333, 200);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34114, 1600, 333, 200);

        -- Rosewood Wand (Min: 250, Max: 290)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34115, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1624, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=16204, `reagent3`=16202, `reagentCount1`=6, `reagentCount2`=5, `reagentCount3`=3, `effectItemType1`=30201, `spellIconId`=1624, `name`='Rosewood Wand' WHERE  `entry`=34115;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34116, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34115, 107, 1624, 'Rosewood Wand', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15152, 5875, 333, 34115, 1, 290, 250);

            -- Trainer (Enchanting - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11072, 34116, 2800, 333, 250);
            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34116, 2800, 333, 250);

        -- Ancient Wand (Min: 300, Max: 340)
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34117, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1624, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=11291, `reagent2`=14344, `reagent3`=20725, `reagent4`=12803, `reagent5`=7080, `reagent6`=7082, `reagentCount1`=25, `reagentCount2`=15, `reagentCount3`=5, `reagentCount4`=15, `reagentCount5`=15, `reagentCount6`=15, `effectItemType1`=30202, `spellIconId`=1624, `name`='Ancient Wand' WHERE  `entry`=34117;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34118, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34117, 107, 1624, 'Ancient Wand', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15153, 5875, 333, 34117, 1, 340, 300);

            -- Trainer (Enchanting - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (11073, 34118, 12500, 333, 300);

    -- Engineering
        -- Copper Heat Shield
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34119, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4361, `reagent2`=4363, `reagent3`=4359, `reagentCount1`=2, `reagentCount2`=2, `reagentCount3`=4, `effectItemType1`=30203, `spellVisual1`=395,`spellIconId`=413, `name`='Copper Heat Shield' WHERE  `entry`=34119;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34120, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34119, 107, 413, 'Copper Heat Shield', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15154, 5875, @SKILL_ENGINEERING, 34119, 1, 90, 50);

            -- Trainer (Engineering - Journeyman)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1702, 34120, 250, @SKILL_ENGINEERING, 50),
                    (3290, 34120, 250, @SKILL_ENGINEERING, 50),
                    (11026, 34120, 250, @SKILL_ENGINEERING, 50),
                    (11028, 34120, 250, @SKILL_ENGINEERING, 50),
                    (11037, 34120, 250, @SKILL_ENGINEERING, 50),
                    (3494, 34120, 250, @SKILL_ENGINEERING, 50),
                    (10993, 34120, 250, @SKILL_ENGINEERING, 50);
            -- Trainer (Engineering - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5518, 34120, 250, @SKILL_ENGINEERING, 50),
                    (11029, 34120, 250, @SKILL_ENGINEERING, 50);
            -- Trainer (Engineering - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5174, 34120, 250, @SKILL_ENGINEERING, 50);
            -- Trainer (Engineering - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (8736, 34120, 250, @SKILL_ENGINEERING, 50);
        -- Bronze Heat Shield
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34121, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4371, `reagent2`=4375, `reagent3`=4382, `reagentCount1`=2, `reagentCount2`=2, `reagentCount3`=1, `effectItemType1`=30204, `spellVisual1`=395,`spellIconId`=413, `name`='Bronze Heat Shield' WHERE  `entry`=34121;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34122, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34121, 107, 413, 'Bronze Heat Shield', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15155, 5875, @SKILL_ENGINEERING, 34121, 1, 140, 100);

            -- Trainer (Engineering - Journeyman)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (1702, 34122, 400, @SKILL_ENGINEERING, 100),
                    (3290, 34122, 400, @SKILL_ENGINEERING, 100),
                    (11026, 34122, 400, @SKILL_ENGINEERING, 100),
                    (11028, 34122, 400, @SKILL_ENGINEERING, 100),
                    (11037, 34122, 400, @SKILL_ENGINEERING, 100),
                    (3494, 34122, 400, @SKILL_ENGINEERING, 100),
                    (10993, 34122, 400, @SKILL_ENGINEERING, 100);
            -- Trainer (Engineering - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5518, 34122, 400, @SKILL_ENGINEERING, 100),
                    (11029, 34122, 400, @SKILL_ENGINEERING, 100);
            -- Trainer (Engineering - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5174, 34122, 400, @SKILL_ENGINEERING, 100);
            -- Trainer (Engineering - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (8736, 34122, 400, @SKILL_ENGINEERING, 100);
        -- Iron Heat Shield
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34123, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=4387, `reagent2`=4389, `reagent3`=3575, `reagentCount1`=2, `reagentCount2`=1, `reagentCount3`=4, `effectItemType1`=30205, `spellVisual1`=395,`spellIconId`=413, `name`='Iron Heat Shield' WHERE  `entry`=34123;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34124, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34123, 107, 413, 'Iron Heat Shield', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15156, 5875, @SKILL_ENGINEERING, 34123, 1, 150, 190);

            -- Trainer (Engineering - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5518, 34124, 750, @SKILL_ENGINEERING, 150),
                    (11029, 34124, 750, @SKILL_ENGINEERING, 150);
            -- Trainer (Engineering - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5174, 34124, 750, @SKILL_ENGINEERING, 150);
            -- Trainer (Engineering - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (8736, 34124, 750, @SKILL_ENGINEERING, 150);
        -- Mithril Heat Shield
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34125, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=10559, `reagent2`=10560, `reagent3`=10561, `reagentCount1`=4, `reagentCount2`=6, `reagentCount3`=4, `effectItemType1`=30206, `spellVisual1`=395,`spellIconId`=413, `name`='Mithril Heat Shield' WHERE  `entry`=34125;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34126, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34125, 107, 413, 'Mithril Heat Shield', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15157, 5875, @SKILL_ENGINEERING, 34125, 1, 200, 240);

            -- Trainer (Engineering - Expert)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5518, 34126, 2800, @SKILL_ENGINEERING, 200),
                    (11029, 34126, 2800, @SKILL_ENGINEERING, 200);
            -- Trainer (Engineering - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5174, 34126, 2800, @SKILL_ENGINEERING, 200);
            -- Trainer (Engineering - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (8736, 34126, 2800, @SKILL_ENGINEERING, 200);
        -- Thorium Heat Shield
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34127, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET `reagent1`=15994, `reagent2`=16000, `reagent3`=18631, `reagentCount1`=4, `reagentCount2`=4, `reagentCount3`=3, `effectItemType1`=30207, `spellVisual1`=395,`spellIconId`=413, `name`='Thorium Heat Shield' WHERE  `entry`=34127;

            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34128, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34127, 107, 413, 'Thorium Heat Shield', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15158, 5875, @SKILL_ENGINEERING, 34127, 1, 250, 290);

            -- Trainer (Engineering - Artisan)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (5174, 34128, 12500, @SKILL_ENGINEERING, 250);
            -- Trainer (Engineering - Master)
                REPLACE INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES
                    (8736, 34128, 12500, @SKILL_ENGINEERING, 250);

    -- New Materials
        -- Rainbow Cloth
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34205, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=30216, 
                    `reagent2`=30220, 
                    `reagent3`=30223, 
                    `reagentCount1`=4, 
                    `reagentCount2`=2, 
                    `reagentCount3`=1, 
                    `effectItemType1`=30328,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Rainbow Cloth' 
                WHERE `entry`=34205;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34206, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34205, 222, 413, 'Pattern: Rainbow Cloth', 983070, 7274508, 'Teaches you how to sew a Rainbow Cloth.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15171, 5875, @SKILL_TAILORING, 34205, 1, 300, 315);

        -- Tiger Leather
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34258, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_TIGER_HIDE, 
                    `reagent2`=@ITEM_IMBUED_RUNECLOTH, 
                    `reagent3`=@ITEM_RAINBOW_THREAD, 
                    `reagentCount1`=4, 
                    `reagentCount2`=2, 
                    `reagentCount3`=1, 
                    `effectItemType1`=@ITEM_TIGER_LEATHER,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Tiger Leather' 
                WHERE `entry`=34258;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34259, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34258, 222, 413, 'Pattern: Tiger Leather', 983070, 7274508, 'Teaches you how to craft a Tiger Leather.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15172, 5875, @SKILL_LEATHERWORKING, 34258, 1, 300, 315);

        -- Dragon Blood
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34208, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_DRAGON_HEART, 
                    `reagent2`=0, 
                    `reagent3`=0, 
                    `reagentCount1`=1, 
                    `reagentCount2`=0, 
                    `reagentCount3`=0, 
                    `effectItemType1`=@ITEM_DRAGON_BLOOD,
                    `effectBasePoints1`=3, -- Amount created
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Dragon Blood' 
                WHERE `entry`=34208;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34209, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34208, 222, 413, 'Dragon Blood', 983070, 7274508, 'Teaches you how to craft a Dragon Blood.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15173, 5875, @SKILL_ALCHEMY, 34208, 1, 300, 315);

        -- Darksteel Ingot
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34210, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `requiresSpellFocus`=@SPELL_LOC_FORGE,
                    `reagent1`=@ITEM_DARKSTEEL_ORE, 
                    `reagent2`=@ITEM_ELEMENTAL_FLUX, 
                    `reagent3`=0, 
                    `reagentCount1`=4, 
                    `reagentCount2`=7, 
                    `reagentCount3`=0, 
                    `effectItemType1`=@ITEM_DARKSTEEL_INGOT,
                    `spellVisual1`=@SPELL_VISUAL_CRAFT, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Darksteel Ingot' 
                WHERE `entry`=34210;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34211, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34210, 222, 413, 'Darksteel Ingot', 983070, 7274508, 'Teaches you how to craft a Darksteel Ingot.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15174, 5875, @SKILL_MINING, 34210, 1, 300, 315);

        -- Titan Power Core
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34212, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_BROKEN_TITAN_CORE, 
                    `reagent2`=@ITEM_MANA_FRAGMENT, 
                    `reagent3`=@ITEM_ELEMENTAL_FLUX, 
                    `reagentCount1`=1, 
                    `reagentCount2`=4, 
                    `reagentCount3`=4, 
                    `effectItemType1`=@ITEM_TITAN_POWER_CORE,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Titan Power Core' 
                WHERE `entry`=34212;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34213, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34212, 222, 413, 'Titan Power Core', 983070, 7274508, 'Teaches you how to craft a Titan Power Core.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15175, 5875, @SKILL_ENGINEERING, 34212, 1, 300, 315);

        -- Enchanted Lumber
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34214, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 395, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `castui`=@CAST_UI_ITEM, -- Needed for enchanting
                    `totem1`=@ITEM_RUNED_ARCANITE_ROD, -- Tool
                    `reagent1`=@ITEM_DIVINE_LOG, 
                    `reagent2`=16204, 
                    `reagent3`=16203, 
                    `reagentCount1`=1, 
                    `reagentCount2`=8, 
                    `reagentCount3`=3, 
                    `effectItemType1`=@ITEM_ENCHANTED_LUMBER,
                    `spellVisual1`=@SPELL_VISUAL_ENCHANT, 
                    `spellIconId`=2258, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Enchanted Lumber' 
                WHERE `entry`=34214;
                
            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34215, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34214, 107, 241, 'Enchanted Lumber', 983070, 7274508, 'Teaches you how to craft an Enchanted Lumber.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15176, 5875, @SKILL_ENCHANTING, 34214, 1, 300, 315);

        -- Cermet Chunk
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34216, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_ANCIENT_RUNESTONE, 
                    `reagent2`=@ITEM_KIRIN_TOR_RUNE_DUST, 
                    `reagent3`=@ITEM_ELEMENTAL_FLUX, 
                    `reagentCount1`=6, 
                    `reagentCount2`=2, 
                    `reagentCount3`=7, 
                    `effectItemType1`=@ITEM_CERMET_CHUNK,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Cermet Chunk' 
                WHERE `entry`=34216;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34217, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34216, 222, 413, 'Cermet Chunk', 983070, 7274508, 'Teaches you how to craft a Cermet Chunk.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15177, 5875, @SKILL_ALCHEMY, 34216, 1, 300, 315);

        -- Darksteel Scales
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34218, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                    `reagent2`=@ITEM_KIRIN_TOR_RUNE_DUST, 
                    `reagent3`=@ITEM_GLUE, 
                    `reagentCount1`=2, 
                    `reagentCount2`=4, 
                    `reagentCount3`=2, 
                    `effectItemType1`=30331,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Darksteel Scales' 
                WHERE `entry`=34218;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34219, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34218, 222, 413, 'Darksteel Scales', 983070, 7274508, 'Teaches you how to craft Darksteel Scales.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15178, 5875, @SKILL_BLACKSMITHING, 34218, 1, 300, 315);

        -- Hardened Hydra Scales
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34220, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_HYDRA_SCALES, 
                    `reagent2`=@ITEM_KIRIN_TOR_RUNE_DUST, 
                    `reagent3`=@ITEM_GLUE, 
                    `reagentCount1`=1, 
                    `reagentCount2`=4, 
                    `reagentCount3`=2, 
                    `effectItemType1`=@ITEM_HARDENED_HYDRA_SCALES,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Hardened Hydra Scales' 
                WHERE `entry`=34220;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34221, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34220, 222, 413, 'Hardened Hydra Scales', 983070, 7274508, 'Teaches you how to craft Hardened Hydra Scales.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15179, 5875, @SKILL_LEATHERWORKING, 34220, 1, 300, 315);

        -- Glue
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34222, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_SIMPLE_FLOUR,
                    `reagent2`=159,  -- Refreshing Spring Water
                    `reagent3`=@ITEM_MERCURY, 
                    `reagentCount1`=2, 
                    `reagentCount2`=2, 
                    `reagentCount3`=4, 
                    `effectItemType1`=@ITEM_GLUE,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Glue' 
                WHERE `entry`=34222;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34223, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34222, 222, 413, 'Glue', 983070, 7274508, 'Teaches you how to craft Glue.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15180, 5875, @SKILL_ALCHEMY, 34222, 1, 300, 315);

        -- Thorium Sheet
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34224, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_THORIUM_BAR,
                    `reagent2`=0, 
                    `reagent3`=0, 
                    `reagentCount1`=4, 
                    `reagentCount2`=0, 
                    `reagentCount3`=0, 
                    `effectItemType1`=@ITEM_THORIUM_SHEET,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Thorium Sheet' 
                WHERE `entry`=34224;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34225, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34224, 222, 413, 'Thorium Sheet', 983070, 7274508, 'Teaches you how to craft a Thorium Sheet.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15181, 5875, @SKILL_BLACKSMITHING, 34224, 1, 300, 315);

        -- Thorium Bolts
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34226, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_THORIUM_BAR, 
                    `reagent2`=0, 
                    `reagent3`=0, 
                    `reagentCount1`=2, 
                    `reagentCount2`=0, 
                    `reagentCount3`=0, 
                    `effectItemType1`=@ITEM_THORIUM_BOLTS,
                    `effectBasePoints1`=2, -- Amount created
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Thorium Bolts' 
                WHERE `entry`=34226;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34227, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34226, 222, 413, 'Thorium Bolts', 983070, 7274508, 'Teaches you how to craft Thorium Bolts.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15182, 5875, @SKILL_ENGINEERING, 34226, 1, 300, 315);

        -- Rugged Rubber
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34228, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=@ITEM_LATEX, 
                    `reagent2`=0, 
                    `reagent3`=0, 
                    `reagentCount1`=6, 
                    `reagentCount2`=0, 
                    `reagentCount3`=0, 
                    `effectItemType1`=@ITEM_RUGGED_RUBBER,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Rugged Rubber' 
                WHERE `entry`=34228;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34229, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34228, 222, 413, 'Rugged Rubber', 983070, 7274508, 'Teaches you how to craft a Rugged Rubber.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15183, 5875, @SKILL_LEATHERWORKING, 34228, 1, 300, 315);

        -- Imbued Runecloth
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34230, 4222, 3, 65536, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 395, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `castui`=@CAST_UI_ITEM, -- Needed for enchanting
                    `totem1`=@ITEM_RUNED_ARCANITE_ROD, -- Tool
                    `reagent1`=@ITEM_BOLT_OF_RUNECLOTH, 
                    `reagent2`=16204, 
                    `reagent3`=16203, 
                    `reagentCount1`=5, 
                    `reagentCount2`=8, 
                    `reagentCount3`=3, 
                    `effectItemType1`=@ITEM_IMBUED_RUNECLOTH,
                    `spellVisual1`=@SPELL_VISUAL_ENCHANT, 
                    `spellIconId`=3634, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Imbued Runecloth' 
                WHERE `entry`=34230;
                
            -- Learn spell(for trainer):
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34231, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34230, 107, 241, 'Imbued Runecloth', 983070, 7274508, 'Teaches you how to craft an Imbued Runecloth.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15184, 5875, @SKILL_ENCHANTING, 34230, 1, 300, 315);
            
        -- Black Ink
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34306, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=14047, 
                    `reagent2`=16204, 
                    `reagent3`=16203, 
                    `reagentCount1`=20, 
                    `reagentCount2`=8, 
                    `reagentCount3`=3, 
                    `effectItemType1`=@ITEM_BLACK_INK,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Black Ink' 
                WHERE `entry`=34306;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34307, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34306, 222, 413, 'Black Ink', 983070, 7274508, 'Teaches you how to craft Black Ink.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15216, 5875, @SKILL_ALCHEMY, 34306, 1, 300, 315);

        -- Poison Dust
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34302, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=14047, 
                    `reagent2`=16204, 
                    `reagent3`=16203, 
                    `reagentCount1`=20, 
                    `reagentCount2`=8, 
                    `reagentCount3`=3, 
                    `effectItemType1`=@ITEM_POISON_DUST,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Poison Dust' 
                WHERE `entry`=34302;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34303, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34302, 222, 413, 'Poison Dust', 983070, 7274508, 'Teaches you how to craft Poison Dust.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15214, 5875, @SKILL_ALCHEMY, 34302, 1, 300, 315);

        -- Venom Dust
            -- Recipe
                REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34304, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                UPDATE `mangos`.`spell_template` SET 
                    `reagent1`=14047, 
                    `reagent2`=16204, 
                    `reagent3`=16203, 
                    `reagentCount1`=20, 
                    `reagentCount2`=8, 
                    `reagentCount3`=3, 
                    `effectItemType1`=@ITEM_VENOM_DUST,
                    `spellVisual1`=395, 
                    `spellIconId`=413, 
                    `castingTimeIndex`=@CASTING_TIME_30000_MS,
                    `name`='Venom Dust' 
                WHERE `entry`=34304;

            -- Learn spell:
                REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34305, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34304, 222, 413, 'Venom Dust', 983070, 7274508, 'Teaches you how to craft Venom Dust.', 7274508, 983052, -1, 1, 1, 1);

            -- Skill Line Ability:
            REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15215, 5875, @SKILL_ALCHEMY, 34304, 1, 300, 315);
        -- Cursed Items
            -- Cursed Crown
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34260, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_RAINBOW_CLOTH, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent5`=@ITEM_IMBUED_RUNECLOTH, 
                        `reagent6`=@ITEM_VOID_STAR_FRAGMENT, 
                        `reagent7`=@ITEM_BOLT_OF_RUNECLOTH, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=45, 
                        `effectItemType1`=30288,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Crown' 
                    WHERE `entry`=34260;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34261, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34260, 222, 413, 'Cursed Crown', 983070, 7274508, 'Teaches you how to sew a Cursed Crown.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15194, 5875, @SKILL_TAILORING, 34260, 1, 300, 315);

            -- Cursed Shoulderpads
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34262, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_RAINBOW_CLOTH, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_KIRIN_TOR_RUNE_DUST, 
                        `reagent5`=@ITEM_IMBUED_RUNECLOTH, 
                        `reagent6`=@ITEM_GLUE, 
                        `reagent7`=@ITEM_BOLT_OF_RUNECLOTH, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=40, 
                        `effectItemType1`=30289,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Shoulderpads' 
                    WHERE `entry`=34262;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34263, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34262, 222, 413, 'Cursed Shoulderpads', 983070, 7274508, 'Teaches you how to sew a Cursed Shoulderpads.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15195, 5875, @SKILL_TAILORING, 34262, 1, 300, 315);

            -- Cursed Dalmatica
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34264, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_RAINBOW_CLOTH, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent5`=@ITEM_IMBUED_RUNECLOTH, 
                        `reagent6`=@ITEM_VOID_STAR_FRAGMENT, 
                        `reagent7`=@ITEM_BOLT_OF_RUNECLOTH, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=60, 
                        `effectItemType1`=30290,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Dalmatica' 
                    WHERE `entry`=34264;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34265, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34264, 222, 413, 'Cursed Dalmatica', 983070, 7274508, 'Teaches you how to sew a Cursed Dalmatica.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15196, 5875, @SKILL_TAILORING, 34264, 1, 300, 315);

            -- Cursed Mitts
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34266, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_RAINBOW_CLOTH, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_MANA_FRAGMENT, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_BOLT_OF_RUNECLOTH, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=1, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=35, 
                        `effectItemType1`=30291,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Mitts' 
                    WHERE `entry`=34266;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34267, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34266, 222, 413, 'Cursed Mitts', 983070, 7274508, 'Teaches you how to sew a Cursed Mitts.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15197, 5875, @SKILL_TAILORING, 34266, 1, 300, 315);

            -- Cursed Pumps
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34268, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_RAINBOW_CLOTH, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_GLUE, 
                        `reagent5`=@ITEM_ENCHANTED_LUMBER, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_BOLT_OF_RUNECLOTH, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=35, 
                        `effectItemType1`=30292,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Pumps' 
                    WHERE `entry`=34268;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34269, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34268, 222, 413, 'Cursed Pumps', 983070, 7274508, 'Teaches you how to sew a Cursed Pumps.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15198, 5875, @SKILL_TAILORING, 34268, 1, 300, 315);

            -- Cursed Cap
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34272, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_TIGER_LEATHER, 
                        `reagent2`=@ITEM_RAINBOW_CLOTH, 
                        `reagent3`=@ITEM_KIRIN_TOR_RUNE_DUST, 
                        `reagent4`=@ITEM_FEL_GRASS, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_RUGGED_LEATHER, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=90, 
                        `effectItemType1`=30293,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Cap' 
                    WHERE `entry`=34272;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34273, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34272, 222, 413, 'Cursed Cap', 983070, 7274508, 'Teaches you how to craft a Cursed Cap.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15199, 5875, @SKILL_LEATHERWORKING, 34272, 1, 300, 315);

            -- Cursed Shoulders
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34274, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_TIGER_LEATHER, 
                        `reagent2`=@ITEM_RAINBOW_CLOTH, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_GLUE, 
                        `reagent5`=@ITEM_ENCHANTED_LUMBER, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_RUGGED_LEATHER, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=85, 
                        `effectItemType1`=30294,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Shoulders' 
                    WHERE `entry`=34274;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34275, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34274, 222, 413, 'Cursed Shoulders', 983070, 7274508, 'Teaches you how to craft a Cursed Shoulders.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15200, 5875, @SKILL_LEATHERWORKING, 34274, 1, 300, 315);

            -- Cursed Harness
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34276, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_TIGER_LEATHER, 
                        `reagent2`=@ITEM_RAINBOW_CLOTH, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_GLUE, 
                        `reagent5`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_RUGGED_LEATHER, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=120, 
                        `effectItemType1`=30295,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Harness' 
                    WHERE `entry`=34276;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34277, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34276, 222, 413, 'Cursed Harness', 983070, 7274508, 'Teaches you how to craft a Cursed Harness.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15201, 5875, @SKILL_LEATHERWORKING, 34276, 1, 300, 315);

            -- Cursed Gloves
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34278, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_TIGER_LEATHER, 
                        `reagent2`=@ITEM_RAINBOW_CLOTH, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_GLUE, 
                        `reagent5`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_RUGGED_LEATHER, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=2, 
                        `reagentCount6`=3, 
                        `reagentCount7`=75, 
                        `effectItemType1`=30296,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Gloves' 
                    WHERE `entry`=34278;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34279, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34278, 222, 413, 'Cursed Gloves', 983070, 7274508, 'Teaches you how to craft a Cursed Gloves.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15202, 5875, @SKILL_LEATHERWORKING, 34278, 1, 300, 315);

            -- Cursed Leggings
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34280, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_TIGER_LEATHER, 
                        `reagent2`=@ITEM_RAINBOW_CLOTH, 
                        `reagent3`=@ITEM_MANA_INFUSED_CLOTH_SCRAPS, 
                        `reagent4`=@ITEM_GLUE, 
                        `reagent5`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_RUGGED_LEATHER, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=1, 
                        `reagentCount6`=3, 
                        `reagentCount7`=75, 
                        `effectItemType1`=30297,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Leggings' 
                    WHERE `entry`=34280;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34281, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34280, 222, 413, 'Cursed Leggings', 983070, 7274508, 'Teaches you how to craft a Cursed Leggings.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15203, 5875, @SKILL_LEATHERWORKING, 34280, 1, 300, 315);

            -- Cursed Mask
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34282, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_HARDENED_HYDRA_SCALES, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_DRAGON_BLOOD, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_ICECAP, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=75, 
                        `effectItemType1`=30298,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Mask' 
                    WHERE `entry`=34282;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34283, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34282, 222, 413, 'Cursed Mask', 983070, 7274508, 'Teaches you how to craft a Cursed Mask.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15204, 5875, @SKILL_ALCHEMY, 34282, 1, 300, 315);

            -- Cursed Spaulders
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34284, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_HARDENED_HYDRA_SCALES, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_DRAGON_BLOOD, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_DREAMFOIL,
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=60, 
                        `effectItemType1`=30299,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Spaulders' 
                    WHERE `entry`=34284;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34285, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34284, 222, 413, 'Cursed Spaulders', 983070, 7274508, 'Teaches you how to craft a Cursed Spaulders.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15205, 5875, @SKILL_ALCHEMY, 34284, 1, 300, 315);

            -- Cursed Mail
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34286, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_HARDENED_HYDRA_SCALES, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_DRAGON_BLOOD, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_DREAMFOIL,
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=100, 
                        `effectItemType1`=30300,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Mail' 
                    WHERE `entry`=34286;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34287, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34286, 222, 413, 'Cursed Mail', 983070, 7274508, 'Teaches you how to craft a Cursed Mail.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15206, 5875, @SKILL_ALCHEMY, 34286, 1, 300, 315);

            -- Cursed Finger Gauntlets
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34288, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_HARDENED_HYDRA_SCALES, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_DRAGON_BLOOD, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_PLAGUEBLOOM,
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=45, 
                        `effectItemType1`=30301,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Finger Gauntlets' 
                    WHERE `entry`=34288;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34289, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34288, 222, 413, 'Cursed Finger Gauntlets', 983070, 7274508, 'Teaches you how to craft a Cursed Finger Gauntlets.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15207, 5875, @SKILL_ALCHEMY, 34288, 1, 300, 315);

            -- Cursed Greaves
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34290, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_HARDENED_HYDRA_SCALES, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_DRAGON_BLOOD, 
                        `reagent4`=@ITEM_DARKSTEEL_SCALES, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_RUGGED_RUBBER, 
                        `reagent7`=@ITEM_MOUNTAIN_SILVERSAGE,
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=45, 
                        `effectItemType1`=30302,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Greaves' 
                    WHERE `entry`=34290;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34291, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34290, 222, 413, 'Cursed Greaves', 983070, 7274508, 'Teaches you how to craft a Cursed Greaves.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15208, 5875, @SKILL_ALCHEMY, 34290, 1, 300, 315);

            -- Cursed Schaller
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34292, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_CERMET_CHUNK, 
                        `reagent4`=@ITEM_RAINBOW_CLOTH, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_THORIUM_BAR, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=2, 
                        `reagentCount7`=75, 
                        `effectItemType1`=30303,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Schaller' 
                    WHERE `entry`=34292;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34293, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34292, 222, 413, 'Cursed Schaller', 983070, 7274508, 'Teaches you how to craft a Cursed Schaller.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15209, 5875, @SKILL_BLACKSMITHING, 34292, 1, 300, 315);

            -- Cursed Epaulettes
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34294, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_CERMET_CHUNK, 
                        `reagent4`=@ITEM_RAINBOW_CLOTH, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_THORIUM_BAR, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=65, 
                        `effectItemType1`=30303,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Epaulettes' 
                    WHERE `entry`=34294;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34295, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34294, 222, 413, 'Cursed Epaulettes', 983070, 7274508, 'Teaches you how to craft a Cursed Epaulettes.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15210, 5875, @SKILL_BLACKSMITHING, 34294, 1, 300, 315);

            -- Cursed Cuirass
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34296, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_CERMET_CHUNK, 
                        `reagent4`=@ITEM_RAINBOW_CLOTH, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_THORIUM_BAR, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=3, 
                        `reagentCount7`=100, 
                        `effectItemType1`=30303,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Cuirass' 
                    WHERE `entry`=34296;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34297, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34296, 222, 413, 'Cursed Cuirass', 983070, 7274508, 'Teaches you how to craft a Cursed Cuirass.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15211, 5875, @SKILL_BLACKSMITHING, 34296, 1, 300, 315);

            -- Cursed Handschuhs
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34298, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_CERMET_CHUNK, 
                        `reagent4`=@ITEM_RAINBOW_CLOTH, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_THORIUM_BAR, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=60, 
                        `effectItemType1`=30303,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Handschuhs' 
                    WHERE `entry`=34298;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34299, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34298, 222, 413, 'Cursed Handschuhs', 983070, 7274508, 'Teaches you how to craft a Cursed Handschuhs.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15212, 5875, @SKILL_BLACKSMITHING, 34298, 1, 300, 315);

            -- Cursed Schuhs
                -- Recipe
                    REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34300, 4222, 0, 65568, 39, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

                    UPDATE `mangos`.`spell_template` SET 
                        `reagent1`=@ITEM_DARKSTEEL_INGOT, 
                        `reagent2`=@ITEM_TIGER_LEATHER, 
                        `reagent3`=@ITEM_CERMET_CHUNK, 
                        `reagent4`=@ITEM_RAINBOW_CLOTH, 
                        `reagent5`=@ITEM_GLUE, 
                        `reagent6`=@ITEM_TITAN_POWER_CORE, 
                        `reagent7`=@ITEM_THORIUM_BAR, 
                        `reagentCount1`=4, 
                        `reagentCount2`=2, 
                        `reagentCount3`=4, 
                        `reagentCount4`=2, 
                        `reagentCount5`=3, 
                        `reagentCount6`=1, 
                        `reagentCount7`=60, 
                        `effectItemType1`=30303,
                        `spellVisual1`=395, 
                        `spellIconId`=413, 
                        `castingTimeIndex`=@CASTING_TIME_30000_MS,
                        `name`='Cursed Schuhs' 
                    WHERE `entry`=34300;

                -- Learn spell:
                    REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (34301, 4222, 262400, 0, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, 34300, 222, 413, 'Cursed Schuhs', 983070, 7274508, 'Teaches you how to craft a Cursed Schuhs.', 7274508, 983052, -1, 1, 1, 1);

                -- Skill Line Ability:
                REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15213, 5875, @SKILL_BLACKSMITHING, 34300, 1, 300, 315);
        
        -- TODO: Honey, Butter, Bread recipes
        -- TODO: Add `description` after `nameSubtextFlags`, to every learn spell and write a description i.e. Teaches you how to craft a Tiger Leather.
        -- TODO: Change learn spell to Pattern: <Name> (i.e. Pattern: Tiger Leather)
        -- TODO: Rainbow cloth, imbued runecloth, tiger leather, etc.finished "mats" changed from reagents to trade goods
        -- TODO: Rainbow CLoth doesn't show up with mats like a normal recipe...unsure why? Compare to another pattern and see whats different, or maybe the spells wrong if nothing else is different on patterns
        -- TODO: Other fish recipes for alchemy
