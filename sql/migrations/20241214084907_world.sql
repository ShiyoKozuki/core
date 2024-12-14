DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20241214084907');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20241214084907');
-- Add your query below.


-- Dun Morogh
UPDATE `pool_template` SET `max_limit` = 36 WHERE `entry` = 1019; -- Copper Veins - Dun Morogh
UPDATE `pool_template` SET `max_limit` = 25 WHERE `entry` = 1018; -- Silverleaf in Dun Morogh
UPDATE `pool_template` SET `max_limit` = 25 WHERE `entry` = 1017; -- Peacebloom in Dun Morogh
UPDATE `pool_template` SET `max_limit` = 16 WHERE `entry` = 1016; -- Earthroot in Dun Morogh

-- Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 1258; -- Plaguebloom in Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 1259; -- Arthas Tears in Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 1261; -- Sungrass in Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 4 WHERE `entry` = 1260; -- Dreamfoil in Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 402; -- Mountain Silversage in Western Plaguelands
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 1271; -- Western Plaguelands - Mithril Deposits / Gold Veins / Truesilver Deposits (Master Pool)
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 1262; -- Western Plaguelands - Truesilver Deposits / Small Thorium Veins (Master Pool)
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 1331; -- Western Plaguelands - Truesilver Deposits / Rich Thorium Veins (Master Pool)

-- Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 15 WHERE `entry`=1265; -- Plaguebloom in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry`=1267; -- Dreamfoil in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry`=1266; -- Arthas Tears in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry`=1269; -- Mountain Silversage in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry`=1320; -- Sungrass in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry`=1268; -- Golden Sansam in Eastern Plaguelands
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 325; -- Eastern Plaguelands - Truesilver Deposits / Rich Thorium Veins (Master Pool)
UPDATE `pool_template` SET `max_limit` = 4 WHERE `entry` = 1264; -- Eastern Plaguelands - Truesilver Deposits / Small Thorium Veins (Master Pool)
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 1263; -- Eastern Plaguelands - Mithril Deposits / Gold Veins / Truesilver Deposits (Master Pool)

-- Burning Steppes
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 1302; -- Mountain Silversage in Burning Steppes
UPDATE `pool_template` SET `max_limit` = 4 WHERE `entry` = 1301; -- Dreamfoil in Burning Steppes
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 1300; -- Golden Sansam in Burning Steppes
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 1303; -- Sungrass in Burning Steppes
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 1297; -- Burning Steppes - Truesilver Deposit / Dark Iron Deposit / Rich Thorium Vein (Master Pool)
UPDATE `pool_template` SET `max_limit` = 4 WHERE `entry` = 1296; -- Burning Steppes - Truesilver Deposit / Dark Iron Deposit / Small Thorium Vein (Master Pool)
UPDATE `pool_template` SET `max_limit` = 10 WHERE `entry` = 1299; -- Burning Steppes - Gold Vein / Mithril Deposit / Truesilver Deposit / Dark Iron Deposit (Master Pool)


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
