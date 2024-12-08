DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20241208211202');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20241208211202');
-- Add your query below.


-- Correct State For Object
UPDATE `gameobject` SET `state` = 1 WHERE `guid` = 60099;

-- Prevent Creature From Evading
UPDATE `creature` SET `position_z`=42.3186 WHERE `guid`=11352;

-- Add Swifthistle to Barrens Herbs
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES
(2514, 2452, 20, 0, 1, 3, 0, 0, 10),
(2515, 2452, 40, 0, 1, 3, 0, 0, 10);

-- Remove Unused Quest From NPC
DELETE FROM `creature_questrelation` WHERE  `id` = 14358 AND `quest` = 7462;


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
