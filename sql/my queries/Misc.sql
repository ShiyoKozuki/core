-- Misc

-- Events

-- Scourge Invsion
UPDATE mangos . game_event
SET length = 999999999 -- was 30240
WHERE entry IN(81, 90, 91, 92, 93, 94, 95, 129, 130);

UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=91;
UPDATE `mangos`.`game_event` SET `hardcoded`=10 WHERE  `entry`=92;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=92;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=93;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=94;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=95;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=96;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=97;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=98;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=99;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=90;
UPDATE `mangos`.`game_event` SET `hardcoded`=0 WHERE  `entry`=17;

-- Object Respawn Time

    -- Instant
    UPDATE `mangos`.`gameobject` SET `spawntimesecsmin`=0, `spawntimesecsmax`=0 WHERE id IN (119, 321, 2084, 28024, 142088);     

-- Object Despawn when looted (data3 = 1 means despawn when looted)
    UPDATE `mangos`.`gameobject_template` SET `data3`=1 WHERE entry IN (119, 321, 2084, 28024, 142088);
    
-- All chests changed to 30m respawn (Were 5m..)
UPDATE gameobject g
JOIN gameobject_template gt ON g.id = gt.entry
SET g.spawntimesecsmin = 1800,
    g.spawntimesecsmax = 1800
WHERE gt.name LIKE '%chest%'
  AND (g.spawntimesecsmin = 300 OR g.spawntimesecsmax = 300);


-- Add Blood Elf to "all" skill line abilities (ones that were 255 already)
UPDATE `mangos`.`skill_line_ability` SET `race_mask`=767 WHERE  `race_mask`=255;

-- Add Blood Elf to "all" factions (ones that were 255 already)
UPDATE `mangos`.`faction` SET `base_rep_race_mask1`=767 WHERE  `base_rep_race_mask1`=255;

-- Add Blood Elf to Stormwind / IF / Gnomergan / Darnassus
UPDATE `mangos`.`faction` SET `base_rep_race_mask1`=588 WHERE  `base_rep_race_mask1`=76;
UPDATE `mangos`.`faction` SET `base_rep_race_mask1`=585 WHERE  `base_rep_race_mask1`=73;
UPDATE `mangos`.`faction` SET `base_rep_race_mask1`=525 WHERE  `base_rep_race_mask1`=13;
UPDATE `mangos`.`faction` SET `base_rep_race_mask1`=581 WHERE  `base_rep_race_mask1`=69;

-- Blood Elf Paladin (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)

REPLACE INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (10, 2, 0, 12, -8949.95, -132.493, 83.5312, 0);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 2, 10, 159, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 2, 2, 635, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 2, 1, 20154, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 2, 0, 6603, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 2, 11, 2070, 128);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 43, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 44, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 45, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 2070, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 2361, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 2, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 107, 0, 5875, 'Block');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 198, 0, 5875, 'One-Handed Maces');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 199, 0, 5875, 'Two-Handed Maces');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 635, 0, 5875, 'Holy Light');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 8737, 0, 5875, 'Mail');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 9077, 0, 5875, 'Leather');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 9116, 0, 5875, 'Shield');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 20154, 0, 5875, 'Seal of Righteousness');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 22810, 0, 5875, 'Opening - No Text');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 2, 27762, 5302, 5875, 'Libram');

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 1, 22, 20, 22, 20, 21);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 2, 23, 21, 23, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 3, 24, 21, 24, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 4, 25, 22, 25, 22, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 5, 26, 22, 26, 22, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 6, 27, 23, 27, 23, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 7, 28, 23, 28, 24, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 8, 29, 24, 28, 24, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 9, 30, 24, 29, 25, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 10, 31, 25, 30, 25, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 11, 32, 25, 31, 26, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 12, 33, 26, 32, 27, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 13, 34, 27, 33, 27, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 14, 35, 27, 34, 28, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 15, 36, 28, 36, 29, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 16, 38, 28, 37, 29, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 17, 39, 29, 38, 30, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 18, 40, 30, 39, 31, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 19, 41, 30, 40, 31, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 20, 42, 31, 41, 32, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 21, 43, 32, 42, 33, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 22, 45, 32, 43, 34, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 23, 46, 33, 44, 34, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 24, 47, 34, 46, 35, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 25, 48, 34, 47, 36, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 26, 50, 35, 48, 37, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 27, 51, 36, 49, 37, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 28, 52, 36, 50, 38, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 29, 54, 37, 52, 39, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 30, 55, 38, 53, 40, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 31, 56, 39, 54, 41, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 32, 58, 39, 56, 42, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 33, 59, 40, 57, 42, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 34, 61, 41, 58, 43, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 35, 62, 42, 60, 44, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 36, 64, 43, 61, 45, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 37, 65, 43, 62, 46, 51);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 38, 67, 44, 64, 47, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 39, 68, 45, 65, 48, 53);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 40, 70, 46, 67, 49, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 41, 71, 47, 68, 50, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 42, 73, 47, 70, 51, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 43, 74, 48, 71, 52, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 44, 76, 49, 73, 52, 58);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 45, 78, 50, 74, 53, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 46, 79, 51, 76, 54, 60);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 47, 81, 52, 77, 56, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 48, 83, 53, 79, 57, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 49, 84, 54, 81, 58, 62);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 50, 86, 55, 82, 59, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 51, 88, 56, 84, 60, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 52, 90, 57, 86, 61, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 53, 92, 58, 87, 62, 66);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 54, 93, 59, 89, 63, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 55, 95, 60, 91, 64, 69);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 56, 97, 61, 93, 65, 70);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 57, 99, 62, 94, 66, 71);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 58, 101, 63, 96, 68, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 59, 103, 64, 98, 69, 74);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 2, 60, 105, 65, 100, 70, 75);

-- Blood Elf Hunter (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)
REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (10, 3, 12, -8949.95, -132.493, 83.5312);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 11, 117, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 10, 159, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 4, 20572, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 2, 75, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 1, 2973, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 3, 0, 6603, 0);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 37, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 117, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 127, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 2101, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 2504, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 2512, 200);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 6126, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 6127, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 3, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,75, 0, 5875, 'Auto Shot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,196, 0, 5875, 'One-Handed Axes');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,266, 0, 5875, 'Guns');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,2973, 0, 5875, 'Raptor Strike');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,9077, 0, 5875, 'Leather');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,13358, 0, 5875, 'Defensive State (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,22810, 0, 5875, 'Opening - No Text');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 3,24949, 4878, 5875, 'Defensive State 2 (DND)');


REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 1, 23, 20, 23, 17, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 2, 23, 21, 24, 18, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 3, 24, 22, 25, 18, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 4, 24, 24, 25, 19, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 5, 25, 25, 26, 19, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 6, 25, 26, 27, 20, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 7, 25, 27, 28, 20, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 8, 26, 28, 29, 21, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 9, 26, 30, 30, 21, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 10, 27, 31, 30, 22, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 11, 27, 32, 31, 22, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 12, 28, 34, 32, 23, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 13, 28, 35, 33, 24, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 14, 29, 36, 34, 24, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 15, 29, 38, 35, 25, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 16, 30, 39, 36, 25, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 17, 30, 40, 37, 26, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 18, 31, 42, 38, 27, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 19, 31, 43, 39, 27, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 20, 32, 45, 40, 28, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 21, 32, 46, 41, 29, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 22, 33, 48, 42, 29, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 23, 33, 49, 43, 30, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 24, 34, 51, 44, 31, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 25, 34, 52, 45, 31, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 26, 35, 54, 46, 32, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 27, 35, 56, 47, 33, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 28, 36, 57, 48, 33, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 29, 36, 59, 49, 34, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 30, 37, 61, 50, 35, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 31, 37, 62, 52, 36, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 32, 38, 64, 53, 36, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 33, 39, 66, 54, 37, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 34, 39, 67, 55, 38, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 35, 40, 69, 56, 39, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 36, 41, 71, 58, 40, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 37, 41, 73, 59, 40, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 38, 42, 75, 60, 41, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 39, 42, 77, 61, 42, 51);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 40, 43, 78, 63, 43, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 41, 44, 80, 64, 44, 53);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 42, 44, 82, 65, 44, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 43, 45, 84, 66, 45, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 44, 46, 86, 68, 46, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 45, 46, 88, 69, 47, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 46, 47, 90, 71, 48, 58);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 47, 48, 92, 72, 49, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 48, 49, 95, 73, 50, 60);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 49, 49, 97, 75, 51, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 50, 50, 99, 76, 52, 62);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 51, 51, 101, 78, 53, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 52, 52, 103, 79, 54, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 53, 52, 105, 81, 55, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 54, 53, 108, 82, 56, 66);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 55, 54, 110, 84, 57, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 56, 55, 112, 85, 58, 68);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 57, 56, 115, 87, 59, 70);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 58, 56, 117, 89, 60, 71);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 59, 57, 120, 90, 61, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 3, 60, 58, 122, 92, 62, 73);

-- Blood Elf Rogue (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)
REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (10, 4, 12, -8949.95, -132.493, 83.5312);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 4, 2, 2098, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 4, 1, 1752, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 4, 0, 6603, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 4, 11, 2070, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 4, 3, 2764, 0);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 47, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 48, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 49, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 2070, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 2092, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 2947, 100);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 4, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 1180, 0, 5875, 'Daggers');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 1752, 0, 5875, 'Sinister Strike');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 2098, 0, 5875, 'Eviscerate');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 2567, 0, 5875, 'Thrown');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 2764, 0, 5875, 'Throw');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 9077, 0, 5875, 'Leather');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 16092, 0, 5875, 'Defensive State (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 21184, 0, 5875, 'Rogue Passive (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 4, 22810, 0, 5875, 'Opening - No Text');

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 1, 21, 23, 21, 20, 20);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 2, 22, 24, 22, 20, 20);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 3, 22, 25, 22, 20, 21);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 4, 23, 27, 23, 21, 21);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 5, 24, 28, 24, 21, 21);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 6, 24, 29, 24, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 7, 25, 31, 25, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 8, 26, 32, 25, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 9, 27, 33, 26, 21, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 10, 27, 35, 27, 22, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 11, 28, 36, 28, 22, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 12, 29, 37, 28, 22, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 13, 30, 39, 29, 22, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 14, 30, 40, 30, 22, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 15, 31, 42, 30, 23, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 16, 32, 43, 31, 23, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 17, 33, 44, 32, 23, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 18, 34, 46, 33, 23, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 19, 35, 48, 33, 23, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 20, 35, 49, 34, 24, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 21, 36, 51, 35, 24, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 22, 37, 52, 36, 24, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 23, 38, 54, 37, 24, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 24, 39, 55, 37, 25, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 25, 40, 57, 38, 25, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 26, 41, 59, 39, 25, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 27, 42, 60, 40, 25, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 28, 43, 62, 41, 25, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 29, 43, 64, 42, 26, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 30, 44, 66, 42, 26, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 31, 45, 67, 43, 26, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 32, 46, 69, 44, 26, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 33, 47, 71, 45, 27, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 34, 48, 73, 46, 27, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 35, 49, 75, 47, 27, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 36, 51, 77, 48, 28, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 37, 52, 78, 49, 28, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 38, 53, 80, 50, 28, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 39, 54, 82, 51, 28, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 40, 55, 84, 52, 29, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 41, 56, 86, 53, 29, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 42, 57, 88, 54, 29, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 43, 58, 90, 55, 29, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 44, 59, 93, 56, 30, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 45, 61, 95, 57, 30, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 46, 62, 97, 58, 30, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 47, 63, 99, 59, 31, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 48, 64, 101, 60, 31, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 49, 65, 103, 62, 31, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 50, 67, 106, 63, 32, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 51, 68, 108, 64, 32, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 52, 69, 110, 65, 32, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 53, 70, 113, 66, 33, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 54, 72, 115, 67, 33, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 55, 73, 117, 69, 33, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 56, 74, 120, 70, 34, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 57, 76, 122, 71, 34, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 58, 77, 125, 72, 34, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 59, 79, 127, 74, 35, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 4, 60, 80, 130, 75, 35, 50);

-- Blood Elf Priest (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)
REPLACE INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (10, 5, 0, 12, -8949.95, -132.493, 83.5312, 0);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 5, 11, 2070, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 5, 10, 159, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 5, 1, 585, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 5, 0, 6603, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 5, 2, 2050, 0);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 36, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 51, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 52, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 53, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 2070, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 6098, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 5, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 198, 0, 5875, 'One-Handed Maces');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 585, 0, 5875, 'Smite');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 2050, 0, 5875, 'Lesser Heal');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 5009, 0, 5875, 'Wands');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 5019, 0, 5875, 'Shoot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 5, 22810, 0, 5875, 'Opening - No Text');

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 1, 20, 20, 20, 22, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 2, 20, 20, 20, 23, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 3, 20, 20, 21, 24, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 4, 21, 21, 21, 25, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 5, 21, 21, 21, 27, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 6, 21, 21, 22, 28, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 7, 21, 21, 22, 29, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 8, 21, 22, 22, 30, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 9, 21, 22, 23, 31, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 10, 22, 22, 23, 33, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 11, 22, 22, 24, 34, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 12, 22, 23, 24, 35, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 13, 22, 23, 24, 36, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 14, 22, 23, 25, 38, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 15, 23, 23, 25, 39, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 16, 23, 24, 26, 40, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 17, 23, 24, 26, 42, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 18, 23, 24, 26, 43, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 19, 23, 25, 27, 44, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 20, 24, 25, 27, 46, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 21, 24, 25, 28, 47, 51);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 22, 24, 25, 28, 49, 53);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 23, 24, 26, 29, 50, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 24, 25, 26, 29, 52, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 25, 25, 26, 30, 53, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 26, 25, 27, 30, 55, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 27, 25, 27, 30, 56, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 28, 25, 27, 31, 58, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 29, 26, 28, 31, 59, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 30, 26, 28, 32, 61, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 31, 26, 28, 32, 63, 68);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 32, 26, 29, 33, 64, 70);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 33, 27, 29, 33, 66, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 34, 27, 29, 34, 68, 73);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 35, 27, 30, 34, 69, 75);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 36, 28, 30, 35, 71, 77);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 37, 28, 30, 36, 73, 79);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 38, 28, 31, 36, 75, 81);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 39, 28, 31, 37, 76, 84);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 40, 29, 31, 37, 78, 85);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 41, 29, 32, 38, 80, 87);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 42, 29, 32, 38, 82, 89);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 43, 29, 33, 39, 84, 91);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 44, 30, 33, 39, 86, 93);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 45, 30, 33, 40, 88, 95);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 46, 30, 34, 41, 90, 97);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 47, 31, 34, 41, 92, 99);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 48, 31, 35, 42, 94, 102);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 49, 31, 35, 43, 96, 105);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 50, 32, 35, 43, 98, 107);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 51, 32, 36, 44, 100, 109);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 52, 32, 36, 44, 102, 111);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 53, 33, 37, 45, 104, 113);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 54, 33, 37, 46, 106, 116);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 55, 33, 38, 46, 109, 118);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 56, 34, 38, 47, 111, 120);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 57, 34, 39, 48, 113, 123);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 58, 34, 39, 49, 115, 126);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 59, 35, 40, 49, 118, 129);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 5, 60, 35, 40, 50, 120, 125);


-- Blood Elf Shaman (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)
REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (10, 7, 12, -8949.95, -132.493, 83.5312);

REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 7, 11, 117, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 7, 10, 159, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 7, 3, 20572);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 7, 2, 331);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 7, 1, 403);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `action`) VALUES (10, 7, 6603);

REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (10, 7, 36);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 7, 117, 4);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (10, 7, 153);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (10, 7, 154);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 7, 159, 2);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (10, 7, 6948);

-- Must match SkillRaceClassInfo.dbc
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 81, 0, 5875, 'Dodge');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 107, 0, 5875, 'Block');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 198, 0, 5875, 'One-Handed Maces');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 203, 0, 5875, 'Unarmed');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 204, 0, 5875, 'Defense');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 227, 0, 5875, 'Staves');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 331, 0, 5875, 'Healing Wave');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 403, 0, 5875, 'Lightning Bolt');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 2382, 0, 5875, 'Generic');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 2479, 0, 5875, 'Honorless Target');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 3050, 0, 5875, 'Detect');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 3365, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6233, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6246, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6247, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6477, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6478, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 6603, 0, 5875, 'Attack');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 7266, 0, 5875, 'Duel');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 7267, 0, 5875, 'Grovel');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 7355, 0, 5875, 'Stuck');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 8386, 0, 5875, 'Attacking');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 9077, 0, 5875, 'Leather');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 9078, 0, 5875, 'Cloth');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 9116, 0, 5875, 'Shield');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 9125, 0, 5875, 'Generic');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 22810, 0, 5875, 'Opening - No Text');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 21651, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 21652, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 22027, 0, 5875, 'Remove Insignia');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 22810, 0, 5875, 'Opening - No Text');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 27763, 5302, 5875, 'Totem');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 33822, 0, 5875, 'Dagger Specialization');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 33823, 0, 5875, 'All Resistance');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 33824, 0, 5875, 'Mana Rush');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 20574, 0, 5875, 'Bow Specialization');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 26290, 0, 5875, 'Axe Specialization');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 7, 668, 0, 5875, 'Language Common');

REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 1, 24, 17, 23, 18, 25);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 2, 25, 17, 24, 19, 26);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 3, 25, 18, 25, 20, 27);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 4, 26, 18, 26, 20, 28);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 5, 27, 19, 26, 21, 29);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 6, 28, 19, 27, 22, 30);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 7, 29, 19, 28, 23, 31);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 8, 29, 20, 29, 24, 31);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 9, 30, 20, 30, 25, 32);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 10, 31, 21, 31, 25, 33);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 11, 32, 21, 32, 26, 34);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 12, 33, 22, 33, 27, 35);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 13, 33, 22, 34, 28, 36);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 14, 34, 23, 35, 29, 37);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 15, 35, 23, 36, 30, 39);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 16, 36, 24, 37, 31, 40);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 17, 37, 24, 38, 32, 41);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 18, 38, 25, 39, 33, 42);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 19, 39, 25, 40, 34, 43);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 20, 40, 26, 41, 35, 44);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 21, 41, 26, 42, 36, 45);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 22, 41, 27, 43, 37, 46);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 23, 42, 27, 44, 38, 47);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 24, 43, 28, 45, 39, 49);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 25, 44, 28, 47, 40, 50);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 26, 45, 29, 48, 41, 51);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 27, 46, 29, 49, 42, 52);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 28, 47, 30, 50, 43, 53);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 29, 48, 30, 51, 44, 55);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 30, 49, 31, 52, 45, 56);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 31, 51, 31, 54, 47, 57);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 32, 52, 32, 55, 48, 59);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 33, 53, 33, 56, 49, 60);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 34, 54, 33, 57, 50, 61);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 35, 55, 34, 59, 51, 63);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 36, 56, 35, 60, 53, 64);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 37, 57, 35, 61, 54, 65);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 38, 58, 36, 63, 55, 67);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 39, 59, 36, 64, 56, 68);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 40, 61, 37, 65, 58, 70);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 41, 62, 38, 67, 59, 71);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 42, 63, 38, 68, 60, 73);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 43, 64, 39, 70, 61, 74);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 44, 66, 40, 71, 63, 76);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 45, 67, 40, 73, 64, 77);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 46, 68, 41, 74, 66, 79);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 47, 69, 42, 76, 67, 80);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 48, 71, 43, 77, 68, 82);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 49, 72, 43, 79, 70, 84);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 50, 73, 44, 80, 71, 85);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 51, 75, 45, 82, 73, 87);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 52, 76, 46, 83, 74, 89);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 53, 78, 46, 85, 76, 90);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 54, 79, 47, 87, 77, 92);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 55, 80, 48, 88, 79, 94);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 56, 82, 49, 90, 80, 96);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 57, 83, 50, 92, 82, 97);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 58, 85, 50, 93, 84, 99);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 59, 86, 51, 95, 85, 101);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 7, 60, 88, 52, 97, 87, 103);

-- Blood Elf Mage (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)

-- Add Blood Elf to mage teleports/portals
UPDATE `mangos`.`skill_line_ability` SET `race_mask`=589 WHERE `race_mask`=77;

REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (10, 8, 12, -8949.95, -132.493, 83.5312);

REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 8, 11, 117, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 8, 10, 159, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 8, 3, 20572);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 8, 2, 331);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (10, 8, 1, 403);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `action`) VALUES (10, 8, 6603);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 35, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 55, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 56, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 1395, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 2070, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 6096, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 8, 6948, 1);

-- Must match SkillRaceClassInfo.dbc
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 133, 0, 5875, 'Fireball');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 168, 0, 5875, 'Frost Armor');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 227, 0, 5875, 'Staves');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 5009, 0, 5875, 'Wands');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 5019, 0, 5875, 'Shoot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 8, 22810, 0, 5875, 'Opening - No Text');

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 1, 20, 20, 20, 23, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 2, 20, 20, 20, 24, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 3, 20, 20, 21, 25, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 4, 20, 21, 21, 27, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 5, 20, 21, 21, 28, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 6, 21, 21, 21, 29, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 7, 21, 21, 22, 30, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 8, 21, 21, 22, 31, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 9, 21, 21, 22, 33, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 10, 21, 22, 23, 34, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 11, 21, 22, 23, 35, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 12, 21, 22, 23, 37, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 13, 21, 22, 24, 38, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 14, 22, 22, 24, 39, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 15, 22, 23, 24, 41, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 16, 22, 23, 25, 42, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 17, 22, 23, 25, 43, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 18, 22, 23, 25, 45, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 19, 22, 23, 26, 46, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 20, 22, 24, 26, 48, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 21, 23, 24, 26, 49, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 22, 23, 24, 27, 51, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 23, 23, 24, 27, 52, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 24, 23, 25, 28, 54, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 25, 23, 25, 28, 55, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 26, 23, 25, 28, 57, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 27, 23, 25, 29, 59, 58);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 28, 24, 25, 29, 60, 60);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 29, 24, 26, 30, 62, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 30, 24, 26, 30, 64, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 31, 24, 26, 30, 65, 66);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 32, 24, 26, 31, 67, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 33, 24, 27, 31, 69, 69);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 34, 25, 27, 32, 70, 71);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 35, 25, 27, 32, 72, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 36, 25, 28, 33, 74, 74);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 37, 25, 28, 33, 76, 76);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 38, 25, 28, 33, 78, 78);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 39, 26, 28, 34, 80, 79);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 40, 26, 29, 34, 81, 81);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 41, 26, 29, 35, 83, 84);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 42, 26, 29, 35, 85, 86);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 43, 26, 29, 36, 87, 88);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 44, 26, 30, 36, 89, 90);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 45, 27, 30, 37, 91, 92);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 46, 27, 30, 37, 93, 94);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 47, 27, 31, 38, 95, 96);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 48, 27, 31, 38, 98, 98);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 49, 28, 31, 39, 100, 100);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 50, 28, 32, 39, 102, 102);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 51, 28, 32, 40, 104, 105);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 52, 28, 32, 40, 106, 107);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 53, 28, 33, 41, 108, 109);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 54, 29, 33, 42, 111, 111);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 55, 29, 33, 42, 113, 114);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 56, 29, 34, 43, 115, 116);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 57, 29, 34, 43, 118, 118);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 58, 30, 34, 44, 120, 120);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 59, 30, 35, 44, 123, 123);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 8, 60, 30, 35, 45, 125, 126);

-- Blood Elf Warlock (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)

REPLACE INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (10, 9, 0, 12, -8949.95, -132.493, 83.5312, 0);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 9, 11, 4604, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 9, 10, 159, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 9, 2, 687, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 9, 1, 686, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (10, 9, 0, 6603, 0);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 57, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 59, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 1396, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 2092, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 4604, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 6097, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (10, 9, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 686, 0, 5875, 'Shadow Bolt');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 687, 0, 5875, 'Demon Skin');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 1180, 0, 5875, 'Daggers');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 5009, 0, 5875, 'Wands');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 5019, 0, 5875, 'Shoot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 33821, 0, 5875, 'Enchanting Mastery');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 33822, 0, 5875, 'Dagger Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 33823, 0, 5875, 'All Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 33824, 0, 5875, 'Mana Rush');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 20574, 0, 5875, 'Bow Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 26290, 0, 5875, 'Axe Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (10, 9, 22810, 0, 5875, 'Opening - No Text');

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 1, 20, 20, 21, 22, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 2, 20, 20, 22, 23, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 3, 21, 21, 22, 24, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 4, 21, 21, 23, 25, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 5, 21, 21, 23, 26, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 6, 21, 22, 24, 27, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 7, 22, 22, 24, 28, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 8, 22, 22, 25, 29, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 9, 22, 23, 25, 30, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 10, 23, 23, 26, 31, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 11, 23, 24, 26, 33, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 12, 23, 24, 27, 34, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 13, 24, 24, 27, 35, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 14, 24, 25, 28, 36, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 15, 24, 25, 29, 37, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 16, 25, 26, 29, 38, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 17, 25, 26, 30, 40, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 18, 25, 26, 30, 41, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 19, 26, 27, 31, 42, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 20, 26, 27, 32, 43, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 21, 26, 28, 32, 45, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 22, 27, 28, 33, 46, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 23, 27, 29, 34, 47, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 24, 28, 29, 34, 49, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 25, 28, 30, 35, 50, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 26, 28, 30, 36, 51, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 27, 29, 30, 36, 53, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 28, 29, 31, 37, 54, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 29, 30, 31, 38, 56, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 30, 30, 32, 38, 57, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 31, 30, 32, 39, 58, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 32, 31, 33, 40, 60, 62);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 33, 31, 33, 41, 61, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 34, 32, 34, 41, 63, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 35, 32, 34, 42, 64, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 36, 33, 35, 43, 66, 69);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 37, 33, 36, 44, 68, 70);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 38, 33, 36, 45, 69, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 39, 34, 37, 45, 71, 74);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 40, 34, 37, 46, 72, 78);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 41, 35, 38, 47, 74, 80);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 42, 35, 38, 48, 76, 82);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 43, 36, 39, 48, 77, 86);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 44, 36, 39, 50, 79, 86);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 45, 37, 40, 50, 81, 88);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 46, 37, 41, 51, 83, 90);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 47, 38, 41, 52, 84, 92);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 48, 38, 42, 53, 86, 94);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 49, 39, 43, 54, 88, 96);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 50, 39, 43, 55, 90, 98);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 51, 40, 44, 56, 92, 100);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 52, 40, 44, 57, 94, 102);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 53, 41, 45, 58, 96, 105);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 54, 42, 46, 59, 98, 107);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 55, 42, 46, 60, 100, 109);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 56, 43, 47, 61, 102, 111);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 57, 43, 48, 62, 104, 113);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 58, 44, 49, 63, 106, 116);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 59, 44, 49, 64, 108, 118);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (10, 9, 60, 45, 50, 65, 110, 115);


-- Human Hunter (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)

-- Trainers
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000086, 895, 0, 0, 0, 0, 0, -8929.77, -161.88, 81.0181, 2.82854, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000087, 1231, 0, 0, 0, 0, 0, -9470.19, 48.2556, 56.9857, 1.30645, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (1, 3, 12, -8949.95, -132.493, 83.5312);

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 11, 117, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 10, 159, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 4, 20572, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 2, 75, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 1, 2973, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 0, 6603, 0);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 37, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 117, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 127, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2101, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2504, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2512, 200);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 6126, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 6127, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 6948, 1);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,75, 0, 5875, 'Auto Shot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,81, 0, 5875, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,196, 0, 5875, 'One-Handed Axes');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,203, 0, 5875, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,204, 0, 5875, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,266, 0, 5875, 'Guns');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,668, 0, 5875, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,2382, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,2479, 0, 5875, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,2973, 0, 5875, 'Raptor Strike');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,3050, 0, 5875, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,3365, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6233, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6246, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6247, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6477, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6478, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,6603, 0, 5875, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,7266, 0, 5875, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,7267, 0, 5875, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,7355, 0, 5875, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,8386, 0, 5875, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,9077, 0, 5875, 'Leather');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,9078, 0, 5875, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,9125, 0, 5875, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,13358, 0, 5875, 'Defensive State (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3, 20597, 0, 5875, 'Sword Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3, 20598, 0, 5875, 'The Human Spirit');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3, 20599, 0, 5875, 'Diplomacy');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3, 20600, 0, 5875, 'Perception');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,21651, 0, 5875, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,21652, 0, 5875, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,22027, 0, 5875, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,22810, 0, 5875, 'Opening - No Text');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 3,24949, 4878, 5875, 'Defensive State 2 (DND)');


REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 1, 23, 20, 23, 17, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 2, 23, 21, 24, 18, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 3, 24, 22, 25, 18, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 4, 24, 24, 25, 19, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 5, 25, 25, 26, 19, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 6, 25, 26, 27, 20, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 7, 25, 27, 28, 20, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 8, 26, 28, 29, 21, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 9, 26, 30, 30, 21, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 10, 27, 31, 30, 22, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 11, 27, 32, 31, 22, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 12, 28, 34, 32, 23, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 13, 28, 35, 33, 24, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 14, 29, 36, 34, 24, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 15, 29, 38, 35, 25, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 16, 30, 39, 36, 25, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 17, 30, 40, 37, 26, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 18, 31, 42, 38, 27, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 19, 31, 43, 39, 27, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 20, 32, 45, 40, 28, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 21, 32, 46, 41, 29, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 22, 33, 48, 42, 29, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 23, 33, 49, 43, 30, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 24, 34, 51, 44, 31, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 25, 34, 52, 45, 31, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 26, 35, 54, 46, 32, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 27, 35, 56, 47, 33, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 28, 36, 57, 48, 33, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 29, 36, 59, 49, 34, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 30, 37, 61, 50, 35, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 31, 37, 62, 52, 36, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 32, 38, 64, 53, 36, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 33, 39, 66, 54, 37, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 34, 39, 67, 55, 38, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 35, 40, 69, 56, 39, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 36, 41, 71, 58, 40, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 37, 41, 73, 59, 40, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 38, 42, 75, 60, 41, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 39, 42, 77, 61, 42, 51);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 40, 43, 78, 63, 43, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 41, 44, 80, 64, 44, 53);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 42, 44, 82, 65, 44, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 43, 45, 84, 66, 45, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 44, 46, 86, 68, 46, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 45, 46, 88, 69, 47, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 46, 47, 90, 71, 48, 58);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 47, 48, 92, 72, 49, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 48, 49, 95, 73, 50, 60);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 49, 49, 97, 75, 51, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 50, 50, 99, 76, 52, 62);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 51, 51, 101, 78, 53, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 52, 52, 103, 79, 54, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 53, 52, 105, 81, 55, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 54, 53, 108, 82, 56, 66);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 55, 54, 110, 84, 57, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 56, 55, 112, 85, 58, 68);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 57, 56, 115, 87, 59, 70);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 58, 56, 117, 89, 60, 71);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 59, 57, 120, 90, 61, 72);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 60, 58, 122, 92, 62, 73);

-- Human Shaman (Need to add an entry to CharBaseInfo.dbc for race/class combo)
-- playercreateinfo
-- playercreateinfo_action
-- playercreateinfo_item
-- playercreateinfo_spell -- Must match SkillRaceClassInfo.dbc
-- player_levelstats (Needs to be level 1-60)

-- Trainers
REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `detection_range`, `rank`, `unit_class`, `trainer_class`, `type`, `flags_extra`) VALUES (90033, 'Illya Einzbern', 'Shaman Trainer', 60, 60, 35, 23, 5546, 20, 1, 8, 7, 1, 64);
REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000035, 90033, 0, -8907.379883, -212.085114, 82.118698, 2.77240, 0);
UPDATE `mangos`.`creature_template` SET `trainer_id`=11 WHERE  `entry`=90033 AND `patch`=0;


REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `detection_range`, `rank`, `unit_class`, `trainer_class`, `type`, `flags_extra`) VALUES (90034, 'Rin Tohsaka', 'Shaman Trainer', 60, 60, 35, 23, 8769, 20, 1, 8, 7, 1, 64);
REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000036, 90034, 0, -8967.931641, 779.198776, 95.600540, 4.45551, 0);
UPDATE `mangos`.`creature_template` SET `trainer_id`=10 WHERE  `entry`=90034 AND `patch`=0;

REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90034, 0, 'Rin Tohsaka', 'Shaman Trainer', 60, 60, 35, 23, 0, 8769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 1, 0, 1, 8, 1, 1, 1, 2, 1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 64, '');

REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000107, 90034, 0, 0, 0, 0, 0, -9462.75, 114.535, 57.9137, 3.78047, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);



REPLACE `mangos`.`playercreateinfo` (`race`, `class`, `zone`, `position_x`, `position_y`, `position_z`) VALUES (1, 7, 12, -8949.95, -132.493, 83.5312);

REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 7, 11, 117, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 7, 10, 159, 128);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (1, 7, 3, 20572);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (1, 7, 2, 331);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `button`, `action`) VALUES (1, 7, 1, 403);
REPLACE `mangos`.`playercreateinfo_action` (`race`, `class`, `action`) VALUES (1, 7, 6603);

REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (1, 7, 36);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 7, 117, 4);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (1, 7, 153);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (1, 7, 154);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 7, 159, 2);
REPLACE `mangos`.`playercreateinfo_item` (`race`, `class`, `itemid`) VALUES (1, 7, 6948);

-- Must match SkillRaceClassInfo.dbc
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 81, 0, 5875, 'Dodge');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 107, 0, 5875, 'Block');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 198, 0, 5875, 'One-Handed Maces');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 203, 0, 5875, 'Unarmed');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 204, 0, 5875, 'Defense');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 227, 0, 5875, 'Staves');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 331, 0, 5875, 'Healing Wave');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 403, 0, 5875, 'Lightning Bolt');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 522, 0, 5875, 'SPELLDEFENSE (DND)');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 2382, 0, 5875, 'Generic');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 2479, 0, 5875, 'Honorless Target');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 3050, 0, 5875, 'Detect');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 3365, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6233, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6246, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6247, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6477, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6478, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 6603, 0, 5875, 'Attack');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 7266, 0, 5875, 'Duel');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 7267, 0, 5875, 'Grovel');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 7355, 0, 5875, 'Stuck');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 8386, 0, 5875, 'Attacking');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 9077, 0, 5875, 'Leather');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 9078, 0, 5875, 'Cloth');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 9116, 0, 5875, 'Shield');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 9125, 0, 5875, 'Generic');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 22810, 0, 5875, 'Opening - No Text');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 21651, 0, 5875, 'Opening');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 21652, 0, 5875, 'Closing');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 22027, 0, 5875, 'Remove Insignia');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 22810, 0, 5875, 'Opening - No Text');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 27763, 5302, 5875, 'Totem');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 20597, 0, 5875, 'Sword Specialization');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 20598, 0, 5875, 'The Human Spirit');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 20599, 0, 5875, 'Diplomacy');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 20600, 0, 5875, 'Perception');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 20864, 0, 5875, 'Mace Specialization');
REPLACE `playercreateinfo_spell` (`race`, `class`, `spell`, `build_min`, `build_max`, `note`) VALUES (1, 7, 668, 0, 5875, 'Language Common');

REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 1, 24, 17, 23, 18, 25);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 2, 25, 17, 24, 19, 26);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 3, 25, 18, 25, 20, 27);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 4, 26, 18, 26, 20, 28);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 5, 27, 19, 26, 21, 29);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 6, 28, 19, 27, 22, 30);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 7, 29, 19, 28, 23, 31);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 8, 29, 20, 29, 24, 31);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 9, 30, 20, 30, 25, 32);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 10, 31, 21, 31, 25, 33);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 11, 32, 21, 32, 26, 34);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 12, 33, 22, 33, 27, 35);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 13, 33, 22, 34, 28, 36);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 14, 34, 23, 35, 29, 37);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 15, 35, 23, 36, 30, 39);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 16, 36, 24, 37, 31, 40);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 17, 37, 24, 38, 32, 41);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 18, 38, 25, 39, 33, 42);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 19, 39, 25, 40, 34, 43);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 20, 40, 26, 41, 35, 44);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 21, 41, 26, 42, 36, 45);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 22, 41, 27, 43, 37, 46);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 23, 42, 27, 44, 38, 47);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 24, 43, 28, 45, 39, 49);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 25, 44, 28, 47, 40, 50);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 26, 45, 29, 48, 41, 51);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 27, 46, 29, 49, 42, 52);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 28, 47, 30, 50, 43, 53);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 29, 48, 30, 51, 44, 55);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 30, 49, 31, 52, 45, 56);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 31, 51, 31, 54, 47, 57);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 32, 52, 32, 55, 48, 59);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 33, 53, 33, 56, 49, 60);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 34, 54, 33, 57, 50, 61);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 35, 55, 34, 59, 51, 63);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 36, 56, 35, 60, 53, 64);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 37, 57, 35, 61, 54, 65);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 38, 58, 36, 63, 55, 67);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 39, 59, 36, 64, 56, 68);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 40, 61, 37, 65, 58, 70);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 41, 62, 38, 67, 59, 71);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 42, 63, 38, 68, 60, 73);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 43, 64, 39, 70, 61, 74);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 44, 66, 40, 71, 63, 76);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 45, 67, 40, 73, 64, 77);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 46, 68, 41, 74, 66, 79);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 47, 69, 42, 76, 67, 80);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 48, 71, 43, 77, 68, 82);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 49, 72, 43, 79, 70, 84);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 50, 73, 44, 80, 71, 85);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 51, 75, 45, 82, 73, 87);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 52, 76, 46, 83, 74, 89);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 53, 78, 46, 85, 76, 90);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 54, 79, 47, 87, 77, 92);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 55, 80, 48, 88, 79, 94);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 56, 82, 49, 90, 80, 96);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 57, 83, 50, 92, 82, 97);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 58, 85, 50, 93, 84, 99);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 59, 86, 51, 95, 85, 101);
REPLACE `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 7, 60, 88, 52, 97, 87, 103);