-- Vendors

-- Reagent Vendors
INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (3323, 1307, 1351, 16015, 3335, 4878, 2805, 1257, 3351, 3490, 4083, 8361, 5151, 3562, 12784, 12795, 13476, 1275, 5110, 4575, 983, 958, 4562, 12096, 1308, 3500, 3700, 10364, 12097, 1463, 1673, 3970, 5139, 3542, 4220, 14739, 15175) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421, 16896, 10310, 10309, 10307, 10308, 10305);

-- Cooking Supplier Vendor (SW / IF Darnassus only)
    -- Ground Wasabi, Rice Vinegar
    -- TODO: Slot not needed?
    -- TODO: Add to baker and trade supplies
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (4223, 7, 30198);
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (4223, 8, 30199);
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (5160, 7, 30198);
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (5160, 8, 30199);
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (5483, 7, 30198);
        REPLACE `mangos`.`npc_vendor` (`entry`, `slot`, `item`) VALUES (5483, 8, 30199);

-- Silverwing Rep Vendor (WSG)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30000, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30001, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30002, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30037, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30038, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30039, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30040, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30041, 160);


INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (14753) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);


-- The League of Arathor Rep Vendor (AB)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30003, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30004, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30005, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30006, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20056, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20044, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20051, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20120, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20122, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20119, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20118, 0);

INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (15127) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

-- Stormpike Guard (AV)
INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (13216) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (13217) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

-- Shaman Trainer (Stormwind)
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5175, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5176, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5177, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5178, 0, 0);

-- PvP Armor Vendor (ID: 12777, vendorID: 1277701)
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22857);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22867);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22876);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22887);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 23259);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 23260);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16577);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16578);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16580);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16573);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16574);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16579);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22857);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22867);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22876);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22887);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 23259);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 23260);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16577);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16578);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16580);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16573);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16574);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16579);

-- Timbermaw Rep
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11557, 18260, 1, 7200);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (11557, 13522, 0);

-- Thorium Brotherhood rep
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (12944, 20729, 131);

-- Wildhammer Rep Vendor (471)
UPDATE `mangos`.`creature_template` SET `npc_flags`=6 WHERE  `entry`=5635 AND `patch`=0; -- Quest Giver + Vendor flags
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30047, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30048, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30049, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30050, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30051, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30052, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30053, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30054, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30055, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30059, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30114, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30115, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 20730, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 16055, 0);


-- Nethergarde Defenders Quartermaster
UPDATE `mangos`.`creature_template` SET `npc_flags`=6 WHERE  `entry`=5393 AND `patch`=0;
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30008, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30009, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30010, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30011, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30012, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30013, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30014, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30015, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 18259, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 18291, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 13521, 0);


-- Caretaker of Karazhan Quartermaster (Rep vendor)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30019, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30020, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30021, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30022, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30023, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30024, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30025, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30026, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30027, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 20727, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 18292, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 13520, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30250, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30258, 0);

-- Wintersaber Trainers Quartermaster 
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30028, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30029, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30030, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30031, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30032, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30033, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30034, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30035, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30036, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 20728, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 18290, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 13519, 0);

-- Stormwind Quartermaster
    -- NPC
    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `mount_display_id`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `gold_min`, `gold_max`, `ai_name`, `static_flags1`, `flags_extra`) VALUES (90056, 'Captain Steven Burgo', 'Stormwind Quartermaster', 62, 62, 12, 4, 1688, 1, 1, 2410, 20, 7, 1, 1, 10, 2, 7, 466, 1, 873, '', 138936320, 2);

    REPLACE  `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000098, 90056, 0, 0, 0, 0, 0, -8831.62, 541.958, 96.9113, 0.813253, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Items
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90056, 0, 30185, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90056, 0, 30189, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90056, 0, 30194, 0, 0, 0, 0);


-- Ironforge Quartermaster
    -- NPC
    REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_probability1`, `display_total_probability`, `mount_display_id`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90057, 7, 'Marshal Ironfoot', 'Ironforge Quartermaster', 60, 60, 55, 4, 6772, 15662, 100, 100, 2786, 20, 7, 1, 1, 10, 2, 4.55, 15701, 138936326, 2);

    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000099, 90057, 0, 0, 0, 0, 0, -4816.96, -1161.38, 502.21, 4.31764, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Items
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90057, 0, 30186, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90057, 0, 30190, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90057, 0, 30195, 0, 0, 0, 0);


-- Gnomergan Quartermaster
    -- NPC
    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_scale1`, `mount_display_id`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90058, 'Master Tinker Trini ', 'Gnomergan Quartermaster', 24, 24, 875, 4, 4137, 10571, 1.15, 2786, 7, 1, 1.02, 2, 0.9, 11028, 138936390, 2);

    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000100, 90058, 0, 0, 0, 0, 0, -4828.81, -1157.43, 502.209, 4.30891, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Items
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90058, 0, 30187, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90058, 0, 30191, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90058, 0, 30196, 0, 0, 0, 0);



-- Darnassus Quartermaster
    -- NPC
    REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `mount_display_id`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `equipment_id`, `static_flags1`) VALUES (90059, 1, 'Moon Priestess Lasara', 'Darnassus Quartermaster', 60, 60, 79, 4, 14418, 100, 100, 9991, 1.42857, 20, 7, 1, 1, 3, 2, 5, 1, 844, 143790, '', 14379, 273154050);

    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000101, 90059, 0, 0, 0, 0, 1, 8648.85, 841.166, 23.2623, 3.12062, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Items
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90059, 0, 30188, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90059, 0, 30192, 0, 0, 0, 0);
    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90059, 0, 30197, 0, 0, 0, 0);

    -- Caretaker of Karazhan
        -- Rep Vendor
            REPLACE INTO `creature_template` 
            (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90035, 'Maximillian Arturo', 'Caretaker of Karazhan', 58, 58, 1681, 2, 1724, 1, 1, 3, 0.8, 1000, 100, 100, 1, 7, '', 264, 524296);

            REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000037, 90035, 0, -10451.66, -1720.62, 85.05, 1.8897, 0);
            -- REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `unit_flags`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90036, 'Wade Wells', 'Caretaker of Karazhan', 58, 58, 1681, 4, 10591, 1, 1, 3, 0.8, 1000, 100, 100, 1, 4096, 7, '', 264, 524296);
            REPLACE INTO `creature_template` 
            (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `unit_class`, `flags_extra`) VALUES (90036, 'Wade Wells', 'Caretaker of Karazhan', 58, 58, 1681, 4, 10591, 1, 524296);

            REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000038, 90036, 0, -10453.53, -1721.077, 84.94, 1.8964, 0);

        -- Recipe Vendor
            -- NPC
                -- Creature Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `base_attack_time`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90107, 'Vicki Boucher', 'Recipe Vendor', 30, 30, 12, 5, 686, 1444, 1, 1, 7, 1, 1.05, 1500, 1275, 138936390, 2);

                -- Creature (Spawn)
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000156, 90107, 0, 0, 0, 0, 0, -10454.9, -1722.77, 84.9647, 2.31838, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Vendor List
                REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90107, 1, 30363, 0, 0, 0, 0);
                REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90107, 2, 30364, 0, 0, 0, 0);
                REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90107, 3, 30365, 0, 0, 0, 0);
                REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90107, 4, 30366, 0, 0, 0, 0);
                REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90107, 5, 30367, 0, 0, 0, 0);

        -- Race Changer (Blood Elf Starter Gear Vendor)
            -- NPC
                -- Creature Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_scale1`, `detection_range`, `rank`, `unit_class`, `base_attack_time`, `ranged_attack_time`, `inhabit_type`, `flags_extra`) VALUES (90109, 'Ron Swanson', 'Racial Gear Merchant', 50, 50, 35, 4, 7209, 1, 20, 1, 1, 1000, 1000, 1, 2);

                -- Creature (Spawn)
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000155, 90109, 0, 0, 0, 0, 0, -8898.42, -135.442, 80.681, 0.845435, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Vendor List
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 1, 30349, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 2, 30359, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 3, 30360, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 4, 30361, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 5, 30362, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 6, 30350, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 7, 30351, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 8, 30352, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 9, 30353, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 10, 30354, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 11, 30355, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 12, 30356, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 13, 30357, 0, 0, 0, 0);
                    REPLACE `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (90109, 14, 30358, 0, 0, 0, 0);


