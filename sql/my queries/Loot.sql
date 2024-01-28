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
8083, 8752, 13818, 13823, 13825, 3954, 3988, 4009, 13819, 3955, 3980, 3984, 3956, 3977, 3983, 4008, 4025, 13823, 3944, 4019, 8752, 13822, 3970,
13820, 3967, 3986, 3987, 4020, 3975, 3993, 3999, 4024, 3939, 3940, 3962, 3968, 3974, 8082, 13816, 3937, 3941, 3942, 3947, 3992, 4001, 4002, 4003, 
4004, 4017, 4021, 8086, 3964, 3965, 4007, 4022, 8083, 3946, 13824, 3816, 8749, 3804, 3800, 3806, 4018, 8750, 3814, 3936, 4982, 3786, 4000, 3783, 
3784, 3989, 8747, 3787, 3803, 3943, 3963, 4005, 8751, 3794, 3795, 3797, 3798, 3799, 3961, 4023, 4026, 3785, 3810, 3813, 3966, 4006, 3782, 3801,
3811, 3812, 3938, 6196, 3808, 3781, 3792, 3802, 8746, 3796, 3807, 3780, 3815, 3817, 3779, 3809, 3793, 3805, 3778, 8748, 3278, 1758, 1782, 1803, 
1808, 3380, 1780, 2766, 1829, 1757, 1786, 1807, 2222, 2786, 11411, 1831, 2221, 1830, 1825, 1761, 1785, 3381, 1756, 1806, 2785, 1827, 1760, 1810, 
1784, 1755, 1828, 1805, 1826, 1809, 1759, 1754, 1783, 1804, 1485, 1746, 1801, 1775, 1796, 1751, 1821, 1818, 1774, 2782, 1795, 1800, 1750, 1822, 
2765, 1772, 1778, 2220, 1749, 1824, 1799, 1819, 1798, 1748, 2219, 1777, 1820, 1823, 2783, 3379, 1753, 1752, 1802, 1797, 1747, 1776, 3378, 1793, 
1744, 6174, 1769, 7170, 1794, 1739, 1789, 1768, 1814, 1816, 1788, 3377, 1738, 1767, 1743, 1817, 2780, 2764, 3376, 1792, 2781, 1742, 1766, 1787, 
1813, 1770, 2217, 1815, 1741, 1741, 1764, 1791, 1811, 1812, 5516, 1740, 1745, 1790, 2216, 1503, 1733, 1498, 2214, 1502, 1514, 1497, 1507, 1732, 
2763, 1513, 1495, 1506, 2777, 1501, 1511, 2778, 1731, 1515, 1510, 1730, 1512, 1505, 1735, 3375, 1499, 1509, 1734, 1504, 2215, 1427, 2056, 2648, 
2643, 1421, 1420, 1414, 1415, 3373, 1425, 1416, 2642, 5379, 2646, 1411, 1413, 1431, 3370, 2773, 1417, 1419, 2635, 2213, 1412, 2774, 1423, 1433, 
1430, 2138, 2645, 1418);

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
WHERE item IN(118, 858, 929, 1710, 3928, 13446) AND ChanceOrQuestChance > 1 ;

-- Mana Potions
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1,
    minCountOrRef = 1,
    maxcount = 1
WHERE item IN(2455, 13443, 6149, 3385, 3827, 13444) AND ChanceOrQuestChance > 1;

-- Solid Stone
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20,
    minCountOrRef = 1,
    maxcount = 1
WHERE item IN(7912) AND maxcount > 1;

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
11203, 21547, 13499, 13496, 13494, 15772, 15753, 15732, 15770, 15781, 16056, 16045, 16049, 15774, 14473, 14480, 14477, 
13476, 15738);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(13497, 16244, 13491, 13495, 15764, 15749, 18657, 18658, 15760, 15748, 14495, 14486, 12834, 12833, 12838);

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
1357, 8704, 8623, 8705, 20741, 20742);

-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(7077, 7079, 7081, 7075, 18512, 14256, 12662, 1288, 1475, 12811, 20520, 12871, 
23320, 4213, 9214, 5635, 8146, 5637, 19943, 12804, 4639, 11818, 12820, 12771, 12219);

-- 10%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 10
WHERE item IN(7068, 7070, 7067, 7069, 10286, 7972, 8150, 7307, 4096, 12431, 12436, 12432, 12434, 12430, 12433, 12435);

-- 20%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 20
WHERE item IN(12809, 20404, 20424, 12206, 12208, 12205, 12204, 12037, 12203, 12202, 3712, 3731, 3667, 3730, 1081, 1080, 2924, 2674, 3173, 2673, 5467, 5469, 
729, 769, 12223, 2672, 3174, 2251, 5465, 3172, 3685, 12207, 3404, 4402, 12184, 5471, 5470, 723, 731, 2296, 730, 732, 6530, 12735, 4480, 4479, 4481, 3164, 
9326, 4556, 21377, 18945, 12335, 12336, 12337);

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

-- Food & Drink
-- 5%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(4537, 2287, 3770, 4538, 3771, 4544, 1707, 4539, 4607, 3927, 4608, 4599, 4601, 4602, 8932, 8952, 8953, 8948, 8950, 1708, 1645, 
8766, 4540, 4541, 414, 4605, 422, 4542, 4606, 117, 4536, 2070, 4604, 159, 1179, 1205, 4656) AND ChanceOrQuestChance >= 1;

-- Spider Silks
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(3182, 4337, 14227, 10285) AND ChanceOrQuestChance >= 1;

-- Fused wiring
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 1
WHERE item IN(7191);

-- Wildvine
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 5
WHERE item IN(8153) AND ChanceOrQuestChance > 5;

-- Bags
-- 0.01%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 0.01
WHERE item IN(4500, 3914, 1725, 5572, 804, 5575, 856, 5573, 5574, 805, 828, 857, 5571);

-- High Value (10s+) Gray mob drops
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 10
WHERE item IN(4092, 4099, 4558, 9242, 9336, 11387, 11388, 11389, 11402, 11403, 11404, 11414, 11417, 11419, 11420, 11941, 11942, 11943, 11944, 18222, 
18223, 18224, 18228, 18236, 18237, 18285, 18286, 19934, 20015, 20016, 20030, 21222, 21223, 21224, 21225, 21226, 21227, 24283, 24282, 13362, 13363, 
13364, 13365, 13366) AND ChanceOrQuestChance > 10 AND ChanceOrQuestChance < 100;

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

-- 100%
UPDATE mangos . creature_loot_template
SET ChanceOrQuestChance = 100
WHERE item IN(11885);
 
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