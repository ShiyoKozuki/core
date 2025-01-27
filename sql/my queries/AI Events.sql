-- 50000: Hostile Player Within 5 Yards Of The Source
-- NEXT SCRIPT 2090104
UPDATE `conditions` SET `flags`=2 WHERE `condition_entry`=50000;


-- Events list for Torn Fin Tidehunter
DELETE FROM `creature_ai_events` WHERE `creature_id`=2377;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(237701, 2377, 50000, 0, 0, 100, 13, 10000, 15000, 60000, 90000, 237701, 0, 0, 'Torn Fin Tidehunter - Cast Frost Nova'),
(237702, 2377, 0, 2, 0, 100, 4, 15, 0, 0, 0, 237702, 0, 0, 'Torn Fin Tidehunter - Flee at 15% HP');

-- Events list for Dread Ripper
DELETE FROM `creature_ai_events` WHERE `creature_id`=4694;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(469401, 4694, 0, 9, 0, 100, 13, 0, 5, 45000, 60000, 469401, 0, 0, 'Dread Flyer - Cast Rend Flesh');

-- Events list for Doomwarder Captain
DELETE FROM `creature_ai_events` WHERE `creature_id`=4680;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(468002, 4680, 0, 9, 0, 100, 13, 0, 5, 60000, 80000, 468002, 0, 0, 'Doomwarder Captain - Cast Ignite');
DELETE FROM `creature_ai_scripts` WHERE `id`=468002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(468002, 0, 0, 15, 3261, 32, 0, 0, 0, 0, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doomwarder Captain - Cast Spell Ignite');

-- Events list for Maraudine Wrangler
DELETE FROM `creature_ai_events` WHERE `creature_id`=4655;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(465501, 4655, 0, 2, 0, 100, 4, 15, 0, 0, 0, 465501, 0, 0, 'Maraudine Wrangler - Flee at 15% HP'),
(465502, 4655, 0, 9, 0, 100, 13, 0, 5, 45000, 60000, 465502, 0, 0, 'Maraudine Wrangler - Cast Disarm');

-- Events list for Sorrow Spinner
DELETE FROM `creature_ai_events` WHERE `creature_id`=858;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(85801, 858, 0, 11, 0, 100, 0, 0, 0, 0, 0, 85801, 0, 0, 'Sorrow Spinner - Cast Poison Proc on Spawn'),
(85802, 858, 0, 9, 0, 100, 13, 15, 30, 45000, 60000, 85802, 0, 0, 'Sorrow Spinner - Cast Web');
DELETE FROM `creature_ai_scripts` WHERE `id`=85802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(85802, 0, 0, 15, 745, 1, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorrow Spinner - Cast Spell Web');

-- Events list for Marsh Inkspewer
DELETE FROM `creature_ai_events` WHERE `creature_id`=750;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(75001, 750, 0, 9, 0, 100, 13, 0, 5, 45000, 60000, 75001, 0, 0, 'Marsh Inkspewer - Cast Ink Spray'),
(75002, 750, 0, 2, 0, 100, 4, 15, 0, 0, 0, 75002, 0, 0, 'Marsh Inkspewer - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=75001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(75001, 0, 0, 15, 9612, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marsh Inkspewer - Cast Spell Ink Spray');

-- Events list for Vale Screecher
DELETE FROM `creature_ai_events` WHERE `creature_id`=5307;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(530701, 5307, 0, 9, 0, 100, 13, 0, 8, 40000, 60000, 530701, 0, 0, 'Vale Screecher - Cast Sonic Burst');

-- Events list for Rogue Vale Screecher
DELETE FROM `creature_ai_events` WHERE `creature_id`=5308;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(530801, 5308, 0, 9, 0, 100, 13, 0, 8, 40000, 60000, 530801, 0, 0, 'Rogue Vale Screecher - Cast Sonic Burst');

-- Events list for Gordunni Brute
DELETE FROM `creature_ai_events` WHERE `creature_id`=5232;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(523201, 5232, 0, 9, 0, 100, 13, 0, 8, 45000, 60000, 523201, 0, 0, 'Gordunni Brute - Cast Uppercut');

-- Events list for Gordunni Shaman
DELETE FROM `creature_ai_events` WHERE `creature_id`=5236;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(523601, 5236, 0, 1, 0, 100, 1, 1000, 1000, 600000, 600000, 523601, 0, 0, 'Gordunni Shaman - Cast Lightning Shield'),
(523602, 5236, 0, 27, 0, 100, 1, 8134, 1, 30000, 45000, 523602, 0, 0, 'Gordunni Shaman - Cast Lightning Shield on Missing Buff'),
(523603, 5236, 0, 14, 0, 100, 1, 1200, 40, 8000, 10000, 523603, 0, 0, 'Gordunni Shaman - Cast Healing Wave on Friendlies');

-- Anvilrage Captain (Demoralizing Shout)
DELETE FROM `creature_ai_scripts` WHERE `id`=890301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(890301, 0, 0, 15, 27579, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anvilrage Captain - Cast Spell Demoralizing Shout');

-- Events list for Vilebranch Aman'zasi Guard
DELETE FROM `creature_ai_events` WHERE `creature_id`=2648;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(264801, 2648, 0, 9, 0, 100, 13, 0, 5, 30000, 45000, 264801, 0, 0, 'Vilebranch Aman\'zasi Guard - Cast Shield Slam'),
(264802, 2648, 0, 2, 0, 100, 4, 15, 0, 0, 0, 264802, 0, 0, 'Vilebranch Aman\'zasi Guard - Flee at 15% HP');

-- Events list for Hatecrest Serpent Guard
DELETE FROM `creature_ai_events` WHERE `creature_id`=5333;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(533301, 5333, 50000, 0, 0, 100, 13, 7000, 15000, 35000, 45000, 533301, 0, 0, 'Hatecrest Serpent Guard - Cast Frost Shock'),
(533302, 5333, 0, 2, 0, 100, 4, 15, 0, 0, 0, 533302, 0, 0, 'Hatecrest Serpent Guard - Flee at 15% HP');

-- Events list for Ironfur Patriarch
DELETE FROM `creature_ai_events` WHERE `creature_id`=5274;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(527401, 5274, 50000, 0, 0, 100, 13, 10000, 20000, 60000, 75000, 527401, 0, 0, 'Ironfur Patriarch - Cast Demoralizing Roar');

-- Events list for Groddoc Thunderer
DELETE FROM `creature_ai_events` WHERE `creature_id`=5262;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(526201, 5262, 50000, 0, 0, 100, 13, 15000, 20000, 35000, 45000, 526201, 0, 0, 'Groddoc Thunderer - Cast Thunderclap');

-- Events list for Ferocious Rage Scar
DELETE FROM `creature_ai_events` WHERE `creature_id`=5299;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(529901, 5299, 50000, 0, 0, 100, 13, 15000, 25000, 45000, 60000, 529901, 0, 0, 'Ferocious Rage Scar - Cast Rend Flesh');

-- Events list for Barbed Lasher
DELETE FROM `creature_ai_events` WHERE `creature_id`=12219;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1221901, 12219, 50000, 0, 0, 100, 13, 12000, 20000, 50000, 75000, 1221901, 0, 0, 'Barbed Lasher - Cast Thorn Volley');

-- Events list for Constrictor Vine
DELETE FROM `creature_ai_events` WHERE `creature_id`=12220;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1222001, 12220, 50000, 0, 0, 100, 13, 12000, 25000, 45000, 60000, 1222001, 0, 0, 'Constrictor Vine - Cast Entangling Roots');

-- Events list for Subterranean Diemetradon
DELETE FROM `creature_ai_events` WHERE `creature_id`=13323;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1332301, 13323, 50000, 0, 0, 100, 13, 12000, 25000, 35000, 45000, 1332301, 0, 0, 'Subterranean Diemetradon - Cast Sonic Burst');

-- Events list for Theradrim Guardian
DELETE FROM `creature_ai_events` WHERE `creature_id`=11784;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1178401, 11784, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1178401, 0, 0, 'Theradrim Guardian - Summon Theradrim Shardling on Death'),
(1178402, 11784, 50000, 0, 0, 100, 13, 12000, 20000, 45000, 60000, 1178402, 0, 0, 'Theradrim Guardian - Cast Knockdown');

-- Events list for Thunderhead Hippogryph
DELETE FROM `creature_ai_events` WHERE `creature_id`=6375;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(637501, 6375, 50000, 0, 0, 100, 13, 7000, 12000, 15000, 30000, 637501, 0, 0, 'Thunderhead Hippogryph - Cast Shock');

-- Events list for Thunderhead Stagwing
DELETE FROM `creature_ai_events` WHERE `creature_id`=6377;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(637701, 6377, 50000, 0, 0, 100, 13, 7000, 15000, 20000, 30000, 637701, 0, 0, 'Thunderhead Stagwing - Cast Shock'),
(637702, 6377, 0, 0, 0, 100, 13, 7000, 10000, 20000, 30000, 637702, 0, 0, 'Thunderhead Stagwing - Cast Wing Flap');

-- Events list for Lingering Highborne
DELETE FROM `creature_ai_events` WHERE `creature_id`=7864;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(786401, 7864, 50000, 0, 0, 100, 13, 12000, 30000, 180000, 183000, 786401, 0, 0, 'Lingering Highborne - Cast Enfeeble');


-- Events list for General Narka
-- Events list for General Narka
DELETE FROM `creature_ai_events` WHERE `creature_id`=90038;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(9003801, 90038, 50000, 0, 0, 100, 13, 7000, 15000, 20000, 30000, 2090102, 0, 0, 'General Narka - Cast Mortal Strike'),
(9003802, 90038, 50000, 0, 0, 100, 13, 12000, 20000, 45000, 60000, 2090103, 0, 0, 'General Narka - Cast Disarm');
DELETE FROM `creature_ai_scripts` WHERE `id`=2090102;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2090102, 0, 0, 15, 17547, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Narka - Cast Spell Mortal Strike');
DELETE FROM `creature_ai_scripts` WHERE `id`=2090103;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2090103, 0, 0, 15, 8379, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Narka - Cast Spell Disarm');

-- Events list for Heavy War Golem
DELETE FROM `creature_ai_events` WHERE `creature_id`=5854;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(585401, 5854, 50000, 0, 0, 100, 13, 12000, 20000, 30000, 50000, 585401, 0, 0, 'Heavy War Golem - Cast Stomp');

-- Events list for Dark Iron Slaver
DELETE FROM `creature_ai_events` WHERE `creature_id`=5844;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(584401, 5844, 0, 4, 0, 100, 0, 0, 0, 0, 0, 584401, 0, 0, 'Dark Iron Slaver - Call For Help on Aggro'),
(584402, 5844, 50000, 0, 0, 100, 13, 7000, 15000, 45000, 60000, 584402, 0, 0, 'Dark Iron Slaver - Cast Rend'),
(584403, 5844, 50000, 0, 0, 100, 13, 20000, 35000, 45000, 60000, 584403, 0, 0, 'Dark Iron Slaver - Cast Net');

-- Events list for Dark Iron Steamsmith
DELETE FROM `creature_ai_events` WHERE `creature_id`=5840;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(584001, 5840, 50000, 0, 0, 100, 13, 12000, 20000, 45000, 60000, 584001, 0, 0, 'Dark Iron Steamsmith - Cast Steam Jet');

-- Events list for Magma Elemental
DELETE FROM `creature_ai_events` WHERE `creature_id`=5855;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(585501, 5855, 50000, 0, 0, 100, 13, 12000, 20000, 20000, 30000, 585501, 0, 0, 'Magma Elemental - Cast Fire Nova');

-- Events list for Inferno Elemental
DELETE FROM `creature_ai_events` WHERE `creature_id`=5852;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(585201, 5852, 50000, 0, 0, 100, 13, 7000, 15000, 25000, 30000, 585201, 0, 0, 'Inferno Elemental - Cast Flame Spray');

-- Obsidion (Doubling up on spells - does not need spell list)
UPDATE `mangos`.`creature_template` SET `spell_list_id`=0 WHERE  `entry`=8400 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `spell_list_id`=0 WHERE  `entry`=8400 AND `patch`=1;

-- Events list for Obsidion
DELETE FROM `creature_ai_events` WHERE `creature_id`=8400;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(840001, 8400, 50000, 0, 0, 100, 13, 45000, 60000, 60000, 90000, 840001, 0, 0, 'Obsidion - Cast Knock Away');

-- Deep Dweller (Doubling up on spells - does not need spell list)
UPDATE `mangos`.`creature_template` SET `spell_list_id`=0 WHERE  `entry`=5467 AND `patch`=0; -- Was 54670

-- Events list for Nightmare Wanderer
DELETE FROM `creature_ai_events` WHERE `creature_id`=5283;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(528302, 5283, 50000, 0, 0, 100, 13, 9000, 15000, 30000, 45000, 528302, 0, 0, 'Nightmare Wanderer - Cast Pierce Armor');

-- Events list for Warpwood Moss Flayer
DELETE FROM `creature_ai_events` WHERE `creature_id`=7100;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(710001, 7100, 50000, 0, 0, 100, 13, 7000, 15000, 25000, 35000, 710001, 0, 0, 'Warpwood Moss Flayer - Cast Entangling Roots');

-- Events list for Jadefire Trickster
DELETE FROM `creature_ai_events` WHERE `creature_id`=7107;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(710702, 7107, 50000, 0, 0, 100, 13, 12000, 20000, 150000, 180000, 710702, 0, 0, 'Jadefire Trickster - Cast Curse of Weakness');

-- Events list for Angerclaw Mauler
DELETE FROM `creature_ai_events` WHERE `creature_id`=8958;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(895801, 8958, 50000, 0, 0, 100, 13, 12000, 15000, 20000, 30000, 895801, 0, 0, 'Angerclaw Mauler - Cast Maul'),
(895802, 8958, 0, 2, 0, 100, 5, 30, 0, 120000, 120000, 895802, 0, 0, 'Angerclaw Mauler - Cast Enrage at 30% HP');

-- Events list for Warpwood Shredder
DELETE FROM `creature_ai_events` WHERE `creature_id`=7101;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(710101, 7101, 0, 0, 0, 100, 13, 8000, 12000, 15000, 20000, 710101, 0, 0, 'Warpwood Shredder - Cast Thrash on Spawn'),
(710102, 7101, 0, 4, 0, 100, 0, 0, 0, 0, 0, 710102, 0, 0, 'Warpwood Shredder - Set Phase 1 on Aggro'),
(710103, 7101, 50000, 0, 5, 100, 13, 5000, 9000, 12000, 15000, 710103, 0, 0, 'Warpwood Shredder - Cast Sunder Armor (Phase 1)'),
(710104, 7101, 0, 24, 5, 100, 1, 13444, 5, 5000, 5000, 710104, 0, 0, 'Warpwood Shredder - Set Phase 2 on Target Max Sunder Armor Aura Stack (Phase 1)'),
(710105, 7101, 0, 28, 3, 100, 1, 13444, 1, 5000, 5000, 710105, 0, 0, 'Warpwood Shredder - Set Phase 1 on Target Missing Sunder Armor Aura Stack (Phase 2)'),
(710106, 7101, 0, 7, 0, 100, 0, 0, 0, 0, 0, 710106, 0, 0, 'Warpwood Shredder - Set Phase to 0 on Evade');

-- Events list for Angerclaw Grizzly
DELETE FROM `creature_ai_events` WHERE `creature_id`=8957;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(895701, 8957, 50000, 0, 0, 100, 13, 12000, 20000, 25000, 35000, 895701, 0, 0, 'Angerclaw Grizzly - Cast Low Swipe'),
(895702, 8957, 0, 2, 0, 100, 5, 30, 0, 120000, 120000, 895702, 0, 0, 'Angerclaw Grizzly - Cast Enrage at 30% HP');

-- Events list for Jaedenar Adept
DELETE FROM `creature_ai_events` WHERE `creature_id`=7115;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(711501, 7115, 0, 9, 0, 100, 13, 0, 5, 30000, 40000, 711501, 0, 0, 'Jaedenar Adept - Cast Blink'),
(711502, 7115, 0, 2, 0, 100, 4, 15, 0, 0, 0, 711502, 0, 0, 'Jaedenar Adept - Flee at 15% HP');


