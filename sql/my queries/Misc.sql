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
UPDATE `mangos`.`gameobject` SET `spawntimesecsmin`=30, `spawntimesecsmax`=30 WHERE  `guid`=40688;

-- Human Shaman

REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `detection_range`, `rank`, `unit_class`, `trainer_class`, `type`, `flags_extra`) VALUES (90033, 'Illya Einzbern', 'Shaman Trainer', 60, 60, 35, 23, 5546, 20, 1, 8, 7, 1, 64);
REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000035, 90033, 0, -8907.379883, -212.085114, 82.118698, 2.77240, 0);
UPDATE `mangos`.`creature_template` SET `trainer_id`=11 WHERE  `entry`=90033 AND `patch`=0;


REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `detection_range`, `rank`, `unit_class`, `trainer_class`, `type`, `flags_extra`) VALUES (90034, 'Rin Tohsaka', 'Shaman Trainer', 60, 60, 35, 23, 8769, 20, 1, 8, 7, 1, 64);
REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000036, 90034, 0, -8967.931641, 779.198776, 95.600540, 4.45551, 0);
UPDATE `mangos`.`creature_template` SET `trainer_id`=10 WHERE  `entry`=90034 AND `patch`=0;


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


