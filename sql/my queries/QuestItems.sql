-- Quest items

-- If a quest item doesn't drop, remove the condition_id from the item in creature_loot_Template
UPDATE mangos . creature_loot_template
SET condition_id = 0
WHERE item IN(12733) AND mincountOrRef = 1;

-- 0% (Shouldn't drop)
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0
WHERE item IN(20378) AND mincountOrRef = 1;

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -1
WHERE item IN(2607, 2939, 5366, 5233, 3349, 6065, 4612, 12733, 11114) AND mincountOrRef = 1;

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -5
WHERE item IN(8428, 5040, 10639, 8363, 2606, 5463, 5475, 3897, 3930, 15878, 15881, 5669, 5664, 5734, 4616, 4518, 4519, 4520, 18969, 
11837, 12524, 12367, 10552, 18959, 18960, 6245, 5942, 9322, 30046) AND mincountOrRef = 1;

-- 10%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -10
WHERE item IN(2925, 5412, 5338, 5414, 7498, 7499, 7500, 5386, 3397, 5659, 8973, 18947, 6257, 6258, 6259, 20375, 20374, 
20377, 10509, 10511, 12334, 6168, 5959, 30045) AND mincountOrRef = 1;

-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -20
WHERE item IN(782, 725, 1019, 1256, 772, 773, 6952, 5166, 3409, 3411, 3412, 5168, 5204, 725, 829, 3110, 2536, 2636, 7847, 7846, 
7848, 5385, 5360, 5336, 5413, 12237, 5348, 2856, 1013, 3014, 1467, 1075, 5808, 12220, 5481, 3337, 2611, 1598, 1129, 2378, 1130,
884, 2702, 5803, 5795, 5794, 4053, 3918, 1519, 4106, 4104, 3923, 2466, 3917, 3910, 3919, 1524, 4029, 4016, 6067, 6079, 6246, 
6247, 6248, 3720, 3716, 3505, 2843, 4503, 4506, 5675, 3658, 5809, 5847, 4630, 4628, 4626, 11472, 9247, 18958, 20519, 8587, 
11834, 11674, 11830, 11831, 11316, 11172,11173, 11478, 11479, 11480, 12622, 12623, 12366, 13354, 13853, 20373, 20376, 
10551, 11725, 6846, 6844, 3901, 6995, 4435, 4522, 5797, 11467, 5883, 20027, 20023, 6184, 5840, 5841, 3496, 3476, 4495, 4512, 4513, 
6989, 6991, 6844, 11266, 20610, 20611) AND mincountOrRef = 1;

-- 45%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -45
WHERE item IN(1256, 780, 752, 750, 2671, 2676, 3083, 3084, 3297, 10640, 5170, 1221, 6249, 4527, 4627, 12822, 12444, 1261) AND mincountOrRef = 1;

-- 100%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = -100
WHERE item IN(5796, 5848, 6190, 11503, 11829, 14619, 12738, 13157, 17346, 7267, 6838, 6839, 6840, 6841, 6994, 6166, 9591, 18961, 6990, 6930, 15849, 6250, 6251, 6252) AND mincountOrRef = 1;

-- Blackrock Medallion 1-10
UPDATE mangos.creature_loot_template SET maxcount=10 WHERE item = 11467 AND mincountOrRef = 1;


-- Lootable by anyone in party / alliance (ITEM_FLAG_PARTY_LOOT - 0x00000800 [2048])

UPDATE mangos . item_template
SET flags = 2112 
WHERE entry IN(13873, 8444);

UPDATE mangos . item_template
SET flags = 3136 
WHERE entry = 7741;

