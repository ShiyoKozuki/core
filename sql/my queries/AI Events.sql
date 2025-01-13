-- 50000: Hostile Player Within 5 Yards Of The Target
REPLACE `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (50000, 56, 1, 5, 0, 0, 0);

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
