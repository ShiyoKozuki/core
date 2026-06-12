-- NEXT event_scripts 20002

-- TODO: Display a message in red text or something "Howls from the sky"
DELETE FROM `event_scripts` WHERE `id`=20000;
INSERT INTO `event_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(20000, 0, 0, 10, 90097, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 'Large Monster Bait: Summon Creature');


-- TODO: Display a message in red text or something
DELETE FROM `event_scripts` WHERE `id`=20001;
INSERT INTO `event_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(20001, 0, 0, 10, 90096, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 'Large Canister: Summon Creature');
