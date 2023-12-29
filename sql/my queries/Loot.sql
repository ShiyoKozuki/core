-- Creature drops

-- Ore / Stone

-- Dense Stone
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 12365;

-- Thorium Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 10620;

-- Mithril Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 3858;

-- Iron Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 2772;

-- Truesteel Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 7911;

-- Gold Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 2776;

-- Silver Ore
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 2775;

-- Herbs

-- Icecap
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 13467;

-- Plaguebloom
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 13466;

-- Mountain Silversage
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 13465;

-- Dreamfoil
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 13463;

-- Golden Sansam
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 13464;

-- Gromsblood
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 8846;

-- Blindweed
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 8839;

-- Ghost Mushroom
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 8845;

-- Sungrass
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 8838;

-- Arthras' Tears
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 8836;

-- Firebloom
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 4625;

-- Goldthorn
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 3821;

-- Fadeleaf
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 3818;

-- Liferoot
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 3357;

-- Grave Moss
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 3369;

-- Kingsblood
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 3356;

-- Wild Steelbloom
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 3355;

-- Bruiseweed
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 2453;

-- Stranglekelp
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 3820;

-- Briathorn
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 2450;

-- Swiftthistle
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 2452;

-- Mageroyal
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 785;

-- Earthroot
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 2449;

-- Silverleaf
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 765;

-- Peacebloom
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item = 2447;

-- Recipes

-- 0.5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item IN(16252, 16222, 4413);

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(11186, 15747, 15779 ,15761, 13490, 14493, 16054, 15771, 15752, 16223, 16247, 16242, 16246, 16219, 11166, 11152, 
11203, 21547, 13499, 13496, 13494, 15772, 15753, 15732, 15770, 15781, 16056, 16045, 16049, 15774, 14473, 14480, 14477);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(13497, 16244, 13491, 13495, 15764, 15749, 18657, 18658, 15760, 15748, 15738, 14495);

-- 10%

-- 15%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 15
WHERE item IN(15775, 14513);

-- 20%

-- Craft materials (CHECK THESE IDs)

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(7078, 7080, 12803, 7082, 7076, 12808, 7077);

-- 10%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(7068, 7070, 7067, 7069, 10286, 7972);

-- Quest items

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -5
WHERE item IN(8428, 5040);

-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -20
WHERE item IN(782, 725, 1019, 1256, 772, 773, 6952);

-- 45%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -45
WHERE item IN(1256, 780, 752, 750, 2671, 2676, 3083, 3084);

-- 100%

-- Misc

-- Red Power Crystal
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 11186;

-- Blue Power Crystal
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 11184;

-- Green Power Crystal
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 11185;

-- Yellow Power Crystal
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item = 11188;

-- Ungoro Soil
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item = 11018;

-- Ran Bloodtooth's Skull
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 100
WHERE item IN(5388);
