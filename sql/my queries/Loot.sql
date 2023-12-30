-- Creature drops

-- Ore / Stone
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(12365, 10620, 3858, 2772, 7911, 2775, 2776, 11370, 11099);

-- Herbs
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(13467, 13466, 13465, 13463, 13464, 8846, 8839, 8845, 8838, 8836, 4625, 3355, 2453, 3820, 2452);

UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item IN(3821, 3818, 3357, 3357, 3369, 3356, 2450, 785, 2449, 765, 2447);

-- Healing Potions
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(118, 858, 929, 1710, 3928, 13446);

-- Mana Potions
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(2455, 13443, 6149, 3385, 3827, 13444);

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
WHERE item IN(13497, 16244, 13491, 13495, 15764, 15749, 18657, 18658, 15760, 15748, 15738, 14495, 14486);

-- 10%

-- 15%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 15
WHERE item IN(15775, 14513);

-- 20%

-- Craft materials (Essences, meats, legs, etc)

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(7078, 7080, 12803, 7082, 7076, 12808, 19441);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(7077, 7079, 7081, 7075, 18512, 14256, 12662, 3182, 4337, 14227, 10285, 1288, 1475);

-- 10%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 10
WHERE item IN(7068, 7070, 7067, 7069, 10286, 7972, 8150);

-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(12809, 20404, 20424, 12206, 12208, 12205, 12204, 12037, 12203, 12202, 3712, 3731, 3667, 3730, 1081, 1080, 2924, 2674, 3173, 2673, 5467, 5469, 
729, 769, 12223, 2672, 3174, 2251, 5465, 3172, 3685, 12207, 3404, 4402, 12184, 5471, 5470, 723, 731, 2296);

-- 45%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 45
WHERE item IN(6889);

-- Bags
-- 0.01%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(4500, 3914, 1725, 5572, 804, 5575, 856, 5573, 5574, 805, 828, 857, 5571);

-- Misc

-- Ungoro power Crystals
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(11184, 11185, 11186, 11188);

-- Ungoro Soil
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item = 11018;

-- Ran Bloodtooth's Skull
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 100
WHERE item IN(5388);

-- Gorilla Fang
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item = 2799;
