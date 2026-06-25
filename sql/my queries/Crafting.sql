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

    -- Cursed Items
        -- Recipe
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `castUI`, `attributes`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `reagent1`, `reagent2`, `reagent3`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectItemType1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (????, 4222, 3, 65568, 7, 15, 101, 1, 666, 666, 666, 666, 666, 666, -1, 24, 1, 1, 0, -1, -1, 1, 666, 3182, 1, 'itemName', 7274526, 7274508, 7274508, 983052, -1, 1, 1, 1);

            UPDATE `mangos`.`spell_template` SET 
                `reagent1`=30216, 
                `reagent2`=30220, 
                `reagent3`=30223, 
                `reagentCount1`=4, 
                `reagentCount2`=2, 
                `reagentCount3`=1, 
                `effectItemType1`=30207, 
                `spellVisual1`=395, 
                `spellIconId`=413, 
                `name`='Rainbow Cloth' 
            WHERE  `entry`=???;

        -- Learn spell:
            REPLACE  `mangos`.`spell_template` (`entry`, `build`, `attributes`, `targets`, `castingTimeIndex`, `interruptFlags`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (????, 4222, 262400, 256, 1, 15, 101, 6, -1, -1, 36, 0, -1, -1, ????, 107, 413, 'Rainbow Cloth', 983070, 7274508, 7274508, 983052, -1, 1, 1, 1);

        -- Skill Line Ability:
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `req_skill_value`, `max_value`, `min_value`) VALUES (15171, 5875, @SKILL_TAILORING, ????, 1, 300, 315);

