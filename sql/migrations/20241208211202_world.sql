DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20241208211202');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20241208211202');
-- Add your query below.


-- Add Missing Script
UPDATE `gameobject_template` SET `script_name` = 'go_corrupted_plant' WHERE `entry` = 174597;

-- Remove Unused Pool
DELETE FROM `pool_template` WHERE `entry` = 39934;

-- Creature 5469 Shares Spawns With 5470
UPDATE `creature` SET `id2` = 5470 WHERE `id`= 5469;

-- Correct Call For Help For Silithid Hive Drone
UPDATE `creature_ai_scripts` SET `x` = 20 WHERE `id` IN (413301, 413302);

-- Correct State For Object
UPDATE `gameobject` SET `state` = 1 WHERE `guid` = 60099;

-- Prevent Creature From Evading
UPDATE `creature` SET `position_z`=42.3186 WHERE `guid`=11352;

-- Add Swifthistle to Barrens Herbs
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES
(2514, 2452, 20, 0, 1, 3, 0, 0, 10),
(2515, 2452, 40, 0, 1, 3, 0, 0, 10);

-- Barrens Herbs Should Drop Betreen 1 and 3 Herbs
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2514 AND `item` = 785;
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2515 AND `item` = 2450;
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2512 AND `item` = 2447;
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2513 AND `item` = 2449;
UPDATE `gameobject_loot_template` SET `mincountOrRef` = 1, `maxcount` = 3 WHERE `entry` = 2511 AND `item` = 765;

-- Remove Unused Quest From NPC
DELETE FROM `creature_questrelation` WHERE  `id` = 14358 AND `quest` = 7462;

-- Correct Spell and Aura For Twilight Flamereaver
UPDATE `creature_template` SET `spell_id1` = 0, `spell_list_id` = 152010, `auras` = '15733 11966' WHERE `entry` = 15201;
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
(152010, 'Silithus - Twilight Flamereaver', 15732, 100, 1, 0, 0, 0, 1, 27, 4, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Correct Spell and Aura For Smolderthorn Witch Doctor
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
(92660, 'Blackrock Spire - Smolderthorn Witch Doctor', 15867, 100, 0, 0, 0, 0, 6, 18, 30, 30, 0, 15869, 100, 0, 0, 0, 0, 6, 18, 30, 30, 0, 8262, 100, 0, 0, 0, 0, 6, 18, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_id1` = 9574 WHERE `entry` = 10217;
UPDATE `creature_template` SET `spell_id1` = 0, `spell_id2` = 0, `spell_id3` = 0 WHERE `entry` = 9266;

-- Correct Spellid for Maraudine Windchaser -  credit cmangos (we should sync with ACID)
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
(46570, 'Desolace - Maraudine Windchaser', 6728, 100, 5, 0, 0, 0, 7, 11, 15, 18, 0, 11986, 100, 15, 0, 0, 0, 0, 0, 17, 21, 0, 9532, 100, 1, 0, 0, 8, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Events list for Therylune (creature uses cpp script added for future)
UPDATE `creature` SET `wander_distance` = 3, `movement_type` = 1 WHERE `guid` = 36533;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(358401, 3584, 0, 1, 0, 100, 1, 0, 3000, 60000, 100000, 358401, 0, 0, 'Therylune - Talk OOC');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(358401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1186, 0, 0, 0, 0, 0, 0, 0, 0, 'Therylune - Talk OOC');

-- Add Some Missing Pools
SET @PTEMPLATE = 4900;

-- Add Pool For Draenethyst Crystals
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+2, 5, 'Swamp of Sorrows - Draenethyst Crystals', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_max`) VALUES
(22550, @PTEMPLATE+2, 0, 'Swamp of Sorrows - Draenethyst Crystals', 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `id` = 22550;

-- Add Pool For Alterac Granite
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+3, 5, 'Hillsbrad Foothills - Alterac Granite', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_min`, `patch_max`) VALUES
(2714, @PTEMPLATE+3, 0, 'Hillsbrad Foothills - Alterac Granite', 1, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `id` = 2714;

-- Add Pool For Lunar Fungal Bloom
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+4, 9, 'Darkshore - Lunar Fungal Bloom', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_min`, `patch_max`) VALUES
(177750, @PTEMPLATE+4, 0, 'Darkshore - Lunar Fungal Bloom', 1, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` = 177750;

-- Add Pool For Lunar Violet Tragan
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+5, 1, 'Hinterlands - Violet Tragan', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_min`, `patch_max`) VALUES
(141853, @PTEMPLATE+5, 0, 'Hinterlands - Violet Tragan', 1, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `id` = 141853;

-- Add Pool For Sack of Meat
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+6, 5, 'Desolace - Sack of Meat', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_min`, `patch_max`) VALUES
(22245, @PTEMPLATE+6, 0, 'Desolace - Sack of Meat', 1, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `id` = 22245;

-- Add Pool For Elune's Tear
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+7, 3, 'Ashenvale - Elunes Tear', 10);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`, `patch_min`, `patch_max`) VALUES
(19015, @PTEMPLATE+7, 0, 'Ashenvale - Elunes Tear', 1, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `id` = 19015;

-- Pool Atal'ai Tablet
-- Inside Instance
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+9, 20, 'Sunken Temple - Atal\'ai Tablet', 10);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES
(54953, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(54954, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(54955, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9608, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9605, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9604, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9595, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9565, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9549, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9538, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9535, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9531, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9528, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9525, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9523, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9515, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9511, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9509, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9506, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9505, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9456, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9446, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9443, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9441, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9438, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9434, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9420, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9419, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9414, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9408, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9406, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9402, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9401, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9399, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9391, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9389, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9385, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9375, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9372, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9371, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9368, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9367, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10),
(9358, @PTEMPLATE+9, 0, 'Sunken Temple - Atal\'ai Tablet', 0, 0, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `id` = 37099;

-- Outside Instance
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_max`) VALUES
(@PTEMPLATE+8, 4, 'Swamp of Sorrows - Atal\'ai Tablet', 10);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`, `patch_min`, `patch_max`) VALUES
(30368, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30367, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30366, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30359, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30358, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30357, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30355, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30354, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30353, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30352, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30351, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30345, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30344, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(30342, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10),
(9350, @PTEMPLATE+8, 0, 'Swamp of Sorrows - Atal\'ai Tablet', 0, 0, 10);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `guid` IN (30368, 30367, 30366, 30359, 30358, 30357, 30355, 30354, 30353, 30352, 30351, 30345, 30344, 30342, 9350);

-- Pool Twilight Tablet Fragment
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_min`, `patch_max`) VALUES
(@PTEMPLATE+10, 12, 'Silithus - Twilight Tablet Fragment (Master Pool)', 6, 10);

INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`, `flags`) VALUES
(809, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(810, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(811, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(812, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(813, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(814, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(815, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(816, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(817, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(818, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(819, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(820, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(821, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(822, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(823, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(824, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(825, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(826, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(827, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(828, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(829, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(830, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(831, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(832, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(833, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(834, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(835, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(836, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(837, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(838, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(839, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(840, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(841, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(842, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(843, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1764, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1765, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1766, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1767, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1768, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0),
(1769, @PTEMPLATE+10, 0, 'Silithus - Twilight Tablet Fragment', 0);
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` IN (180501, 180436);
DELETE FROM `gameobject` WHERE `guid` IN (261, 247, 253);
DELETE FROM `pool_template` WHERE `entry` = 1765;
DELETE FROM `pool_gameobject` WHERE `guid` IN (247, 253);
DELETE FROM `pool_pool` WHERE `pool_id` = 1765;

-- Pool Dustwallow Marsh Mining Nodes
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`, `patch_min`, `patch_max`) VALUES
(4825, 4, ' Dustwallow Marsh - Mining Nodes (Master Pool)', 0, 0, 0, 10);
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`, `flags`) VALUES
(2872, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(2873, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(2874, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(2875, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(2871, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(2223, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(23046, 4825, 0, 'Dustwallow Marsh - Mining Nodes', 0),
(9005, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0),
(9006, 4825, 0, ' Dustwallow Marsh - Mining Nodes', 0);

-- Update Respawn Times
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `guid` IN (42673, 42662, 35422, 13767, 16617, 16611, 16610, 13260, 15090, 15099, 32614, 47598, 47599, 47600, 47602, 45008, 6929, 12671, 12194, 11829, 47699, 45014, 35412, 15719, 42620, 49828, 13166, 6849, 45332, 10663, 45719, 45720, 45721, 32686, 49376, 46198, 46199, 13525, 27085, 9986 , 10135, 10030, 17201, 10043, 47905, 12699, 11418, 32387, 14067, 29362);
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 10 WHERE `guid` IN (3996164, 26772, 49695, 12863, 14137, 40668, 11014, 12872, 12864, 12871, 40688, 30277, 15008, 40688, 234778, 350470, 362149, 35792, 29680);
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` IN (35876, 82575);


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
