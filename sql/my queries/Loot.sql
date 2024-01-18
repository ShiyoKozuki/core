-- Creature drops

-- Sterilize drops (20% base)
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE ChanceOrQuestChance > 20 AND ChanceOrQuestChance < 100;

-- Gray Weapons & Armor
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(3951, 8080, 3975, 3998, 3999, 13820, 3944, 3971, 13821, 3996, 8084, 8753, 3949, 3976, 3995, 13817, 3945, 3947, 3972, 3987, 3990, 
4022, 8755, 13822, 3948, 3973, 3974, 3992, 3993, 13824, 3946, 3969, 3970, 8086, 8754, 3997, 4013, 8081, 3950, 4015, 8085, 13816, 3953, 3994, 8082, 
8083, 8752, 13818, 13823, 13825, 3954, 3988, 4009, 13819, 3955, 3980, 3984, 3956, 3977, 3983, 4008);

-- Ore / Stone
DELETE FROM mangos . creature_loot_template
WHERE item IN(12365, 10620, 3858, 2772, 7911, 2775, 2776, 11370, 11099);

-- Herbs
DELETE FROM mangos . creature_loot_template
WHERE item IN(13467, 13466, 13465, 13463, 13464, 8846, 8839, 8845, 8838, 8836, 4625, 3355, 2453, 3820, 2452, 3819);

UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item IN(3821, 3818, 3357, 3357, 3369, 3356, 2450, 785, 2449, 765, 2447);

-- Healing Potions
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1,
    minCountOrRef = 1,
    maxcount = 1
WHERE item IN(118, 858, 929, 1710, 3928, 13446);

-- Mana Potions
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1,
    minCountOrRef = 1,
    maxcount = 1
WHERE item IN(2455, 13443, 6149, 3385, 3827, 13444);

-- Recipes
-- 0.1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.1
WHERE item IN(13490);

-- 0.5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.5
WHERE item IN(16252, 16222, 4413);

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(11186, 15747, 15779 ,15761, 14493, 16054, 15771, 15752, 16223, 16247, 16242, 16246, 16219, 11166, 11152, 
11203, 21547, 13499, 13496, 13494, 15772, 15753, 15732, 15770, 15781, 16056, 16045, 16049, 15774, 14473, 14480, 14477);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(13497, 16244, 13491, 13495, 15764, 15749, 18657, 18658, 15760, 15748, 15738, 14495, 14486, 8153);

-- 10%

-- 15%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 15
WHERE item IN(15775, 14513);

-- 20%

-- Craft materials / Skill books / Cards (Essences, meats, legs, librams, etc)

-- 0.01%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(18335, 11737, 11733, 11734, 11732, 11736, 18333, 18332, 18334, 17683, 17414, 17682, 18600, 17413, 22393, 19230, 19236, 
19232, 19234, 19233, 19235, 19231, 19278, 19280, 19279, 19281, 19284, 19282, 19283, 19259, 19260, 19261, 19262, 19263, 19264, 19265, 
19269, 19270, 19275, 19273, 19271, 19272, 19274, 18255);

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(7078, 7080, 12803, 7082, 7076, 12808, 19441, 18364, 18361, 18358, 18359, 18362, 18356, 18363, 18360, 18357, 24102, 7997, 
1357, 8704, 8623, 8705);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(7077, 7079, 7081, 7075, 18512, 14256, 12662, 3182, 4337, 14227, 10285, 1288, 1475, 12811, 20520, 12871, 
23320, 4213, 9214, 5635, 8146, 5637, 19943, 12804, 4639);

-- 10%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 10
WHERE item IN(7068, 7070, 7067, 7069, 10286, 7972, 8150, 7307, 4096);

-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(12809, 20404, 20424, 12206, 12208, 12205, 12204, 12037, 12203, 12202, 3712, 3731, 3667, 3730, 1081, 1080, 2924, 2674, 3173, 2673, 5467, 5469, 
729, 769, 12223, 2672, 3174, 2251, 5465, 3172, 3685, 12207, 3404, 4402, 12184, 5471, 5470, 723, 731, 2296, 730, 732, 6530, 12735, 4480, 4479, 4481, 3164, 
9326, 4556);

-- 45%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 45
WHERE item IN(6889, 5524, 7973, 5523);

-- Argent Dawn Turn ins (Bone Fragments etc)
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(22526, 22525, 22528, 22527, 22529);

-- Darkmoon Faire Prize Ticket (Vibrant Plume, Glowing Scorpid Eye etc)
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(5134, 11407, 4582, 5117, 11404, 19933);

-- Cloth
-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(2589, 2592, 4306, 4338, 14047) AND ChanceOrQuestChance >= 20;

-- Fused wiring
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(7191);

-- Bags
-- 0.01%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(4500, 3914, 1725, 5572, 804, 5575, 856, 5573, 5574, 805, 828, 857, 5571);

-- Dungeon Drops
UPDATE `mangos`.`creature_loot_template` SET `ChanceOrQuestChance`=70 WHERE  `entry`=11261 AND `item`=30289 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;
UPDATE `mangos`.`creature_loot_template` SET `ChanceOrQuestChance`=70 WHERE  `entry`=10505 AND `item`=30289 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;
UPDATE `mangos`.`creature_loot_template` SET `ChanceOrQuestChance`=70 WHERE  `entry`=10502 AND `item`=30289 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;
UPDATE `mangos`.`creature_loot_template` SET `ChanceOrQuestChance`=70 WHERE  `entry`=10507 AND `item`=30289 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;
UPDATE `mangos`.`creature_loot_template` SET `ChanceOrQuestChance`=70 WHERE  `entry`=10901 AND `item`=30289 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;

-- BOE T0 dungeon sets

-- 1%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(16723, 16722, 16680, 16681, 16685, 16683, 16716, 16714, 16736, 16735, 16696, 16697, 16702, 16703, 16705, 16713, 16710, 16673, 16671);


-- Chests
-- Healing Potions
UPDATE mangos . gameobject_loot_template
SET minCountOrRef = 1,
    maxcount = 2
WHERE item IN(118, 858, 929, 1710, 3928, 13446) AND maxcount > 2;

-- Mana Potions
UPDATE mangos . gameobject_loot_template
SET minCountOrRef = 1,
    maxcount = 2
WHERE item IN(2455, 13443, 6149, 3385, 3827, 13444) AND maxcount > 2;

-- Misc

-- Ungoro power Crystals
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(11184, 11185, 11186, 11188);

-- Ungoro Soil
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item = 11018;

-- Wastewander Water Pouch
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 45
WHERE item = 8483;

-- Troll Tribal Necklace
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item = 9259;

-- Ran Bloodtooth's Skull
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 100
WHERE item IN(5388);

-- Gorilla Fang
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item = 2799;

-- Skinning

-- Pristine Hide of the Beast
UPDATE mangos . skinning_loot_template
SET ChanceOrQuestChance = 1
WHERE item = 12731;

-- Max amount

-- Morning Glory Dew
UPDATE mangos . creature_loot_template
SET maxcount = 1
WHERE item = 8766;

-- Misc fixes
DELETE FROM `mangos`.`creature_loot_template` WHERE  `entry`=10419 AND `item`=14227 AND `groupid`=0 AND `patch_min`=0 AND `patch_max`=10;
DELETE FROM `mangos`.`creature_loot_template` WHERE  `entry`=11456 AND `item`=14227 AND `groupid`=0 AND `patch_min`=1 AND `patch_max`=10;
UPDATE `mangos`.`creature_template` SET `loot_id`=0 WHERE  `entry`=10387 AND `patch`=0;