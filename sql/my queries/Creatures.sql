-- type in creature_template.sql
-- enum CreatureType
-- {
--     CREATURE_TYPE_BEAST            = 1,
--     CREATURE_TYPE_DRAGONKIN        = 2,
--     CREATURE_TYPE_DEMON            = 3,
--     CREATURE_TYPE_ELEMENTAL        = 4,
--     CREATURE_TYPE_GIANT            = 5,
--     CREATURE_TYPE_UNDEAD           = 6,
--     CREATURE_TYPE_HUMANOID         = 7,
--     CREATURE_TYPE_CRITTER          = 8,
--     CREATURE_TYPE_MECHANICAL       = 9,
--     CREATURE_TYPE_NOT_SPECIFIED    = 10,
--     CREATURE_TYPE_TOTEM            = 11,
-- };
-- Rank in creature_template.sql
-- 0 	Normal 	Default type
-- 1 	Elite 	Increased health, damage, better loot
-- 2 	Rare elite 	Like Elite but with increased respawn time
-- 3 	World boss 	Highest rank, best loot, highest respawn time
-- 4 	Rare 	Increased respawn time, better loot 

-- UNIT_NPC_FLAG_NONE                  = 0x00000000,
-- UNIT_NPC_FLAG_GOSSIP                = 0x00000001,       // 100%
-- UNIT_NPC_FLAG_QUESTGIVER            = 0x00000002,       // 100%
-- UNIT_NPC_FLAG_VENDOR                = 0x00000004,       // 100%
-- UNIT_NPC_FLAG_FLIGHTMASTER          = 0x00000008,       // 100%
-- UNIT_NPC_FLAG_TRAINER               = 0x00000010,       // 100%
-- UNIT_NPC_FLAG_SPIRITHEALER          = 0x00000020,       // guessed
-- UNIT_NPC_FLAG_SPIRITGUIDE           = 0x00000040,       // guessed
-- UNIT_NPC_FLAG_INNKEEPER             = 0x00000080,       // 100%
-- UNIT_NPC_FLAG_BANKER                = 0x00000100,       // 100%
-- UNIT_NPC_FLAG_PETITIONER            = 0x00000200,       // 100% 0xC0000 = guild petitions
-- UNIT_NPC_FLAG_TABARDDESIGNER        = 0x00000400,       // 100%
-- UNIT_NPC_FLAG_BATTLEMASTER          = 0x00000800,       // 100%
-- UNIT_NPC_FLAG_AUCTIONEER            = 0x00001000,       // 100%
-- UNIT_NPC_FLAG_STABLEMASTER          = 0x00002000,       // 100%
-- UNIT_NPC_FLAG_REPAIR                = 0x00004000,       // 100%

-- Make creature able to swim, fly, or land only
-- enum InhabitTypeValues
-- {
--     INHABIT_GROUND = 1,
--     INHABIT_WATER  = 2,
--     INHABIT_AIR    = 4,
--     INHABIT_ANYWHERE = INHABIT_GROUND | INHABIT_WATER | INHABIT_AIR
-- };

-- Classes (For MP) unit_class in creature_template.sql
-- enum Classes
-- {
--     CLASS_WARRIOR       = 1,
--     CLASS_PALADIN       = 2,
--     CLASS_HUNTER        = 3,
--     CLASS_ROGUE         = 4,

--  Creature Size
-- .mod scale 1-4 to make creature smaler/larger
-- display_scale1-4 value 1-4 in creature_template.sql

-- movement_type = 2 means follow waypoints

-- .help all GM commands
-- .tele prog (programmer island)
-- .aoedamage 100000 - deal aoe damage to everything around you
-- .namego <name> - summon player
-- .debug ADVANCED COMMANDS

-- NEXT npc_Text 90006
-- NEXT broadcast_text 99996
-- NEXT creature_equip_template 987003

-- graveyards = WorldSafeLocs.dbc and world_safe_facing.sql to set facing @ the spirit healer

-- Combat Reach
UPDATE mangos . creature_display_info_addon 
SET combat_reach = 1
WHERE combat_reach > 1 and combat_reach < 2;

-- Tauren mobs / players
UPDATE mangos . creature_display_info_addon 
SET combat_reach = 2
WHERE display_id IN(59, 60, 12170);

-- Has path nodes, so set movement type to path nodes
UPDATE `mangos`.`creature` SET `movement_type`=2 WHERE  `guid` IN (2000115, 2000127, 2000133, 2000130);

-- Vengful Spirit damage reduced (Not captured)
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.10 WHERE  `entry`=4030 AND `patch`=0;

-- Jandice Barov correct Curse of Blood spellId
-- UPDATE `mangos`.`creature_template` SET `spell_id1`=16098 WHERE  `entry`=10503 AND `patch`=0; -- TODO:

-- Dead Pass Ogre levels
UPDATE `mangos`.`creature_template` SET level_min = 59, level_max = 60 WHERE entry IN(7379, 7371, 7372, 7369);
-- Incorrect normal mobs, were elite in real vanilla. Changed in 2.3 (Classic WoW bug) 
-- https://warcraft.wiki.gg/wiki/Patch_2.3.0

-- Swamp of Sorrows elite dragons reverted back to being elite, they were changed in 1.10ish
-- patch - 10 to revert
UPDATE `mangos`.`creature_template` SET patch = patch + 10 WHERE entry IN (742, 743, 744, 745, 746) AND patch = 10; -- Swamp of Sorrows Green Dragons reverted back to being elite, they were changed in 1.10ish
UPDATE `mangos`.`creature_template` SET patch = patch + 10 WHERE entry IN (4328, 4329, 4331, 4334, 4345) AND patch = 10; -- Dustwallow Mrash elite dragons and crocs reverted back to elite, they were changed in 1.10ish
UPDATE `mangos`.`creature_template` SET patch = patch + 10 WHERE entry IN (4324) AND patch = 6; -- Dustwallow Mrash Searing Whelp reverted back to elite, they were changed in 1.10ish

-- Dune Smasher respawn rate
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=180, `spawntimesecsmax`=180 WHERE  `id`=5469;

-- Garr Salthoof lowered damage
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.0 WHERE  `entry`=2549 AND `patch`=0;

-- Coast Strider / Deep Dweller spawns
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000057, 5466, 0, 0, 0, 0, 1, -8723.12, -4855.07, -70.381, 5.44643, 300, 300, 25, 100, 100, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000058, 5466, 0, 0, 0, 0, 1, -8711.89, -4807.56, -34.8317, 0.931954, 300, 300, 25, 100, 100, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000059, 5466, 0, 0, 0, 0, 1, -8685.11, -4806.28, -23.8272, 5.554, 300, 300, 25, 100, 100, 0, 0, 0, 0, 10);

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000048, 5467, 0, 0, 0, 0, 1, -8919.61, -4739.92, -47.45, 0.103871, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000049, 5467, 0, 0, 0, 0, 1, -8965.08, -4810.8, -66.2799, 4.30496, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000050, 5467, 0, 0, 0, 0, 1, -8988.21, -4842.86, -74.9788, 4.24684, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000051, 5467, 0, 0, 0, 0, 1, -8958.88, -4874.07, -77.1967, 5.51995, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000052, 5467, 0, 0, 0, 0, 1, -8915.76, -4857.74, -68.7016, 1.54661, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000053, 5467, 0, 0, 0, 0, 1, -8917.14, -4803.95, -63.9697, 1.12957, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000054, 5467, 0, 0, 0, 0, 1, -8896.55, -4758.49, -55.3223, 0.285265, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000055, 5467, 0, 0, 0, 0, 1, -8959.39, -4743.93, -47.7043, 5.23091, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000056, 5467, 0, 0, 0, 0, 1, -8988.06, -4777.59, -57.7852, 4.11558, 300, 300, 0, 100, 100, 1, 0, 0, 0, 10);

-- Dark Iron Land Mines shouldn't move
UPDATE `creature_template` SET `movement_type` = 0 WHERE `entry` = 8035;

-- Lady Moongazer damage
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.0 WHERE  `entry`=2184 AND `patch`=0;

-- Kaskk Damage
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.6 WHERE  `entry`=14226 AND `patch`=1;

-- Coast Strider / Deep Dweller respawn rate
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=300, `spawntimesecsmax`=300 WHERE  `id`=5466;
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=300, `spawntimesecsmax`=300 WHERE  `id`=5467;

-- Coast Strider / Deep Dweller wander distance
UPDATE `mangos`.`creature` SET `wander_distance`=25 WHERE `id`=5466;
UPDATE `mangos`.`creature` SET `wander_distance`=0 WHERE `id`=5467;

-- Coast Strider / Deep Dweller attack speed/attack rate
UPDATE `mangos`.`creature_template` SET `base_attack_time`=3000 WHERE  `entry`=5466 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `base_attack_time`=3000 WHERE  `entry`=5467 AND `patch`=0;

-- Crushridge Brute damage multiplier
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.256 WHERE  `entry`=2253 AND `patch`=0;

-- Prince Kellen attack speed/attack rate and damage multiplier
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=2.5, `base_attack_time`=3000, `ranged_attack_time`=3000 WHERE  `entry`=14225 AND `patch`=0;

-- Hayoc attack speed/attack rate and damage multiplier
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=2.5, `base_attack_time`=3000, `ranged_attack_time`=3000 WHERE  `entry`=14234 AND `patch`=0;

-- The Husk attack speed/attack rate and damage multiplier
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=4.0, `base_attack_time`=3000, `ranged_attack_time`=3000 WHERE  `entry`=1851 AND `patch`=0;

-- Razorfen Spearhide (Shouldn't be rare, Blizzard bug)
UPDATE `mangos`.`creature_template` SET `rank`=1 WHERE  `entry`=4438 AND `patch`=0;

-- Ghost of the Past (Trap spawns too many, so greatly reduce their power)
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.4, `damage_multiplier`=0.5 WHERE  `entry`=10940 AND `patch`=0;

-- Caliph Scorpidsting and Andre Firebeard made Elite
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `damage_multiplier`=3.5, `nature_res`=125, `spell_list_id`=200072 WHERE  `entry`=7847 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `damage_multiplier`=3.5, `fire_res`=125, `spell_list_id`=200073 WHERE  `entry`=7883 AND `patch`=0;

-- Lord Shalzaru made elite
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `mana_multiplier`=20.0, `damage_multiplier`=3.5, `frost_res`=125, `spell_list_id`=200074 WHERE  `entry`=8136 AND `patch`=0;

-- Moora, Salia and Shadow Lord Fel'dan made elite
-- UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=2, `mana_multiplier`=5, `damage_multiplier`=2 WHERE  `entry`=9861;
-- UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=2, `mana_multiplier`=5 WHERE  `entry`=9860;
-- UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5, `mana_multiplier`=25, `damage_multiplier`=3.5, `shadow_res`=125, `spell_id1`=0, `spell_id2`=0, `spell_id3`=0, `spell_list_id`=200079 WHERE  `entry`=9517;

-- Twilight Flamereaver
-- UPDATE `mangos`.`creature_template` SET `spell_id1`=15732 WHERE  `entry`=15201 AND `patch`=6; -- TODO

-- Strath Gargoyles movement speed
UPDATE `mangos`.`creature_template` SET `speed_run`=0.5 WHERE  `entry`=10408 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `speed_run`=0.5 WHERE  `entry`=10409 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `speed_run`=0.5 WHERE  `entry`=10809 AND `patch`=0;

-- Fireguard Destroyer
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.0 WHERE  `entry`=8911 AND `patch`=0;

-- Ragereaver Golem
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.0 WHERE  `entry`=8906 AND `patch`=0;

-- Wrath Hammer Construct 
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.55 WHERE  `entry`=8907;

-- Molten War Golem
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=5.5 WHERE  `entry`=8908 AND `patch`=0;

-- Plagued Hatching
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=1.5 WHERE  `entry`=10678 AND `patch`=0;

-- Gordok Brute
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=4.0 WHERE  `entry`=11441 AND `patch`=1;

-- Netherwalker
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=2 WHERE  `entry`=14389 AND `patch`=1;

-- Dark Shade (Scholomance Occultist 2nd form)
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.3 WHERE  `entry`=11284 AND `patch`=0;

-- Flame Buffet Totem (Smolderthorn Witch Doctor)
-- UPDATE `mangos`.`creature_template` SET `spell_id1`=9574 WHERE  `entry`=10217 AND `patch`=0;
-- UPDATE `mangos`.`creature_template` SET `spell_id1`=9574 WHERE  `entry`=10217 AND `patch`=10;

-- Bosses

-- Golem Lord Argelmach
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.0 WHERE  `entry`=8983;

-- Balnazzar
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=5.0 WHERE  `entry`=10813;

-- Kirtonos the Herald
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=5.0 WHERE  `entry`=10506;

-- "Encrusted Tail Fins" Murloc respawn rates
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE  `id`=877;
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE  `id`=871;
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE  `id`=879;
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE  `id`=873;
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE  `id`=875;

-- The "Lyceum" BRD
UPDATE `mangos`.`creature` SET `spawntimesecsmin`=180, `spawntimesecsmax`=180 WHERE  `id`=8901;

-- Risen Lackey levels
UPDATE `mangos`.`creature_template` SET `level_min`=56, `level_max`=56 WHERE  `entry`=10482 AND `patch`=0;

-- Shadow Hunter Vosh'gajin
-- UPDATE `mangos`.`creature_template` SET `spell_id2`=16098 WHERE  `entry`=9236 AND `patch`=0;

-- Silver Stream Mine (Dun Morogh)
DELETE from mangos.creature where guid IN (9408, 9409, 9319, 9410, 9155, 9150, 9192, 9414);

-- Scholo spawns to delete
-- Object GUID is: Creature (Entry: 10485 Guid: 48773)
-- Object GUID is: Creature (Entry: 10485 Guid: 91416)
-- Object GUID is: Creature (Entry: 10485 Guid: 48770)
-- Object GUID is: Creature (Entry: 10485 Guid: 91410)
-- Object GUID is: Creature (Entry: 10485 Guid: 91409)
-- Object GUID is: Creature (Entry: 10485 Guid: 48575)
-- Object GUID is: Creature (Entry: 10485 Guid: 48570)
-- Object GUID is: Creature (Entry: 10485 Guid: 91418)
-- Object GUID is: Creature (Entry: 10481 Guid: 91417)
-- Object GUID is: Creature (Entry: 10485 Guid: 91408)
-- Object GUID is: Creature (Entry: 10485 Guid: 48586)


-- Object GUID is: Creature (Entry: 10495 Guid: 48761)
-- Object GUID is: Creature (Entry: 10495 Guid: 48765)
-- Object GUID is: Creature (Entry: 10495 Guid: 48477)
-- Object GUID is: Creature (Entry: 10495 Guid: 48769)
-- Object GUID is: Creature (Entry: 10495 Guid: 48768)
-- Object GUID is: Creature (Entry: 10495 Guid: 91411)
-- Object GUID is: Creature (Entry: 10495 Guid: 91412)
-- Object GUID is: Creature (Entry: 10481 Guid: 48478)
-- Object GUID is: Creature (Entry: 10481 Guid: 48760)
-- Object GUID is: Creature (Entry: 10481 Guid: 91414)

-- Theramore NPCs
-- Bank / AH
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000061, 2457, 0, 0, 0, 0, 1, -3727.03, -4541.3, 25.8338, 0.47999, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000062, 8670, 0, 0, 0, 0, 1, -3722.77, -4550.1, 25.8338, 0.47214, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Trainers
       -- Classes
            -- Druid
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000064, 5504, 0, 0, 0, 0, 1, -3706.33, -4334.26, 11.4161, 4.06769, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Rogue
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000063, 917, 0, 0, 0, 0, 1, -3817.33, -4565.27, 8.89536, 2.37118, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Priest
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000073, 5489, 0, 0, 0, 0, 1, -3860.48, -4533.29, 8.88212, 5.10441, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Warrior
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000075, 5480, 0, 0, 0, 0, 1, -3786.04, -4373.36, 16.7841, 1.55517, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Hunter
                REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000077, 4138, 0, 0, 0, 0, 1, -3752.28, -4314.76, 9.97051, 5.00311, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Pet 
                REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000078, 10089, 0, 0, 0, 0, 1, -3756.38, -4319.09, 9.97051, 5.45861, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Mage
                REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000079, 5497, 0, 0, 0, 0, 1, -3748.63, -4448.84, 30.5692, 2.54481, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Portal 
                REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `trainer_class`, `civilian`, `equipment_id`, `trainer_id`, `static_flags1`, `flags_extra`) VALUES (90072, 9, 'Jessica Parker', 'Portal Trainer', 35, 35, 80, 23, 4821, 7669, 1, 1, 7, 8, 1.1, 2, 1.45, 8, 1, 4165, 441, 138936390, 2);

                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000102, 90072, 0, 0, 0, 0, 1, -3754.5, -4438.46, 30.5693, 5.03289, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Warlock
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000081, 5495, 0, 0, 0, 0, 1, -3760.26, -4474.78, 26.7946, 1.63534, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Demons 
                REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000082, 6382, 0, 0, 0, 0, 1, -3765.19, -4473.85, 27.1091, 1.25443, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Paladin
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000076, 5492, 0, 0, 0, 0, 1, -3779.93, -4376.56, 15.9607, 6.06338, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Shaman
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000074, 90034, 0, 0, 0, 0, 1, -3704.13, -4332.47, 11.4164, 5.45859, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

        -- Professions
            -- Leatherworking
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000066, 11096, 0, 0, 0, 0, 1, -3737.88, -4329.81, 9.97021, 1.58736, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Skinning
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000067, 1292, 0, 0, 0, 0, 1, -3736.5, -4317.48, 9.97034, 4.63393, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Enchanting
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000068, 11068, 0, 0, 0, 0, 1, -3760.04, -4446.33, 30.5685, 0.038564, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Blacksmithing
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000141, 5511, 0, 0, 0, 0, 1, -3788.73, -4367.35, 16.7863, 4.72128, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Mining
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000140, 6297, 0, 0, 0, 0, 1, -3793.37, -4366.46, 16.7873, 4.97653, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Engineering
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000142, 11029, 0, 0, 0, 0, 1, -3795.02, -4373.67, 16.7673, 1.72813, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Herblist / Alchemist already added

            -- First Aid
            REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000143, 2329, 0, 0, 0, 0, 1, -3658.46, -4512.3, 9.4874, 6.0385, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Vendors
        -- Enchanting Supplies
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000069, 1318, 0, 0, 0, 0, 1, -3755.69, -4451.66, 30.5685, 1.03995, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

        -- Leatherworking Supplies
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000070, 5565, 0, 0, 0, 0, 1, -3743.4, -4316.9, 9.97008, 4.75568, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

        -- Poisons
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000071, 1326, 0, 0, 0, 0, 1, -3825.16, -4573.8, 8.45478, 2.37432, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

        -- Reagents
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000072, 1275, 0, 0, 0, 0, 1, -3853.01, -4527.66, 9.1423, 5.46568, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Custom Content
    -- TODO: Loot IDs (Including summoned stuff)
    -- TODO: Remove weapons off everyone not skeleton warlord
    -- TODO: Damage and HP tuning
    -- TODO: Resistances
    -- TODO: Loot IDs
    -- TODO: Loot Drops - Skill books from T1(Upgrades or new skills?). BOE craft mats for new insane items and consumables (Food too!)
    -- TODO: Fix mob system..i.e. Grub isnt Undead
    -- TODO: Tune T1 for being duoable maybe? As a tank + X? Or kiting?
    -- TODO: Tune T2 for needing a healer and tank (can trio)
    -- TODO: Tune T3 for needing full party

    -- ZNM (EPL)
        -- Skeleton Warlord
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90060, 'Skeletal Warlord-ZNM', 61, 61, 21, 775, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 15, 100, 150, 15, 1788, 0, 445, 1236, 200082, '', 1, 1788, 8602131);
        
            -- Summoned Acolyte
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `movement_type`, `equipment_id`, `static_flags1`) VALUES (90068, 'Summoned Acolyte', 60, 60, 233, 11157, 11145, 11146, 11173, 20, 30, 30, 20, 100, 20, 7, 1, 2, 20, 20, 2, 3.8, 0, 0, 0, 0, 104710, '', 1, 10471, 524288);

        -- Ghoul
        -- TODO: Retest damage and CD on hate reset + knockback
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90061, 'Ghoul-ZNM', 61, 61, 21, 10487, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 15, 100, 150, 15, 1788, 0, 445, 1236, 200083, '', 1, 0, 8602131);

        -- Banshee
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90062, 'Banshee-ZNM', 61, 61, 21, 10751, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 15, 100, 150, 15, 1788, 0, 445, 1236, 200084, '', 1, 0, 8602131);

        -- Crypt Fiend
        -- TODO: None of it's spells work at all
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90063, 'Crypt Fiend-ZNM', 61, 61, 21, 6841, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 150, 15, 15, 15, 1788, 0, 445, 1236, 200085, '', 1, 0, 8602131);

            -- Spiderling
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_run`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `spell_list_id`, `inhabit_type`, `mechanic_immune_mask`, `static_flags1`, `static_flags2`) VALUES (90070, 9, 'Spiderling', 60, 60, 16, 13111, 1, 1, 2.14286, 1, 1, 0.10, 1.0, 0.2, 500, 170550, 1, 1022042625, 524292, 64);

        -- Grub
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90064, 'Grub-ZNM', 60, 60, 21, 7898, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 150, 15, 15, 15, 1788, 0, 445, 1236, 200086, '', 1, 0, 8602131);

        -- Gargoyle
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90065, 'Gargoyle-ZNM', 61, 61, 21, 7854, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 15, 15, 15, 175, 15, 1788, 0, 445, 1236, 200087, '', 1, 0, 8602131);

        -- Zombie
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90066, 'Zombie-ZNM', 61, 61, 21, 4631, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 1788, 15, 15, 100, 150, 15, 0, 445, 1236, 200088, '', 1, 0, 8602131);

        -- Skeletal Mage
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90067, 'Skeletal Mage-ZNM', 61, 61, 21, 11403, 4, 1, 1, 0.888888, 20, 6, 1, 1, 10, 600, 2, 4, 2500, 100, 15, 100, 150, 15, 1788, 0, 445, 1236, 200089, '', 1, 0, 8602131);

            -- Summoned Acolyte
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `spell_list_id`, `ai_name`, `movement_type`, `equipment_id`, `static_flags1`) VALUES (90071, 'Summoned Acolyte', 60, 60, 233, 11157, 11145, 11146, 11173, 20, 30, 30, 20, 100, 20, 7, 1, 2, 20, 20, 2, 0.5, 200090, '', 1, 10471, 524288);

    -- T2
        -- Abomination
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90077, 'Abomination-ZNM', 62, 62, 21, 16174, 4, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200092, '', 1, 0, 8602131);
        
        -- Necromancer
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90078, 'Necromancer-ZNM', 62, 62, 21, 16309, 4, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200093, '', 1, 0, 8602131);
        
        -- Thaddius 
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90079, 'Thaddius-ZNM', 62, 62, 21, 16137, 2, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200094, '', 1, 0, 8602131);
        
        -- Grobbulus
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90080, 'Grobbulus-ZNM', 62, 62, 21, 16035, 2, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200103, '', 1, 0, 8602131);
        
        -- Palid Horror
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90081, 'Palid Horror-ZNM', 62, 62, 21, 14697, 4, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200095, '', 1, 0, 8602131);
        
        -- Gluth
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90082, 'Gluth-ZNM', 62, 62, 21, 16064, 4, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200096, '', 1, 0, 8602131);
        
        -- Loatheb
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90083, 'Loatheb-ZNM', 62, 62, 21, 16110, 4, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200097, '', 1, 0, 8602131);
        
        -- Mad Scientist
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90084, 'Mad Scientst-ZNM', 62, 62, 21, 16063, 0, 1, 1, 0.888888, 20, 6, 1, 1, 20, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200098, '', 1, 0, 8602131);

            -- Summoned Arcane Enforcers
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_school`, `spell_list_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags2`) VALUES (90076, 1, 'Arcane Enforcer', 60, 60, 834, 14253, 20, 4, 1, 2, 30, 4, 2, 4, 6, 200091, 16384, 64, 32, 16);

    -- T3
        -- DK
            -- TODO: HD mod needs model put in to patch
            -- TODO: add 33914 to auras column
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `auras`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90085, 'Zeid', 63, 63, 21, 14591, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200099, 33914, '', 1, 0, 8602131);

            -- Summoned Gargoyle
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `ai_name`, `movement_type`, `mechanic_immune_mask`) VALUES (90073, 'Zeid\'s Gargoyle', 60, 60, 21, 7533, 0.5, 20, 6, 1, 1, 6, 2, 2, 3, 1600, 10408, '', 1, 8388624);

        -- Dread Lord
            -- TODO: HD mod needs model put in to patch?
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90086, 'Lord Ruthven', 63, 63, 21, 10691, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200100, '', 1, 0, 8602131);

            -- Summoned Infernal
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `spell_list_id`, `movement_type`, `school_immune_mask`) VALUES (90074, 'Lord Ruthven\'s Gargoyle', 62, 62, 90, 12817, 20, 3, 1, 1, 25, 25, 2, 8, 71350, 1, 4);

        -- Crypt Lord
            -- TODO: add 33915 to auras column
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `auras`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90087, 'Orcus', 63, 63, 21, 15931, 2, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 200101, 33915, '', 1, 0, 8602131);

            -- Carrion Beetle
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `speed_walk`, `speed_run`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `ranged_attack_time`, `spell_list_id`, `movement_type`, `mechanic_immune_mask`, `static_flags1`, `static_flags2`) VALUES (90075, 9, 'Carrion Beetle', '', 60, 60, 21, 10005, 1.2, 0.833332, 2.14286, 10, 1, 0.2, 2, 2.5, 1000, 1265, 166980, 2, 1022042625, 524294, 64);

        -- Lich
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90088, 'Naphula', 63, 63, 21, 15945, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 0.5, 8, 2500, 1788, 0, 445, 1236, 200102, '', 1, 0, 8602131);

-- Deadwind Pass
    -- Creature_Template

    -- TODO: Make all elite rare type, all drop an item used to summon the t1 znm boss at ritual
    -- TODO: 2-4 hr respawn
        -- Testing:
            -- Brygen
                -- Drain life no animation, spams it as soon as he spawns and spams over and over

        -- -- TODO: Spell list (Cleave, warstomp, aoe fear, disarm)
        -- REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `speed_walk`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `ranged_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `equipment_id`, `immunity_flags`, `static_flags1`, `flags_extra`) VALUES (90091, 1, 'Overlord Xelnu', 61, 61, 90, 12449, 1.0, 2, 1.42857, 20, 3, 1, 1, 6, 2, 2, 6, 1000, 15, 15, 15, 15, 15, 17081, 2400, 3000, 123970, 1, 12397, 12, 3229683712, 32768);

        -- -- TODO: hp, dmg, spells, place in river
        -- Copy Akumai spells but stronger?
        -- +75% Attack Speed (3490), Poison Cloud (3815), Poison Bolt (25424)
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `ranged_attack_time`, `shadow_res`, `loot_id`, `skinning_loot_id`, `spell_list_id`, `movement_type`, `mechanic_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`) VALUES (90092, 'Tinnin', '', 61, 61, 128, 2837, 20, 10, 1, 1, 2, 11, 2, 4.5, 1558, 40, 17082, 7460, 48290, 1, 0, 0, 2416447488, 64);

        -- -- TODO: hp, dmg, spells, inside "Crypt" cave. (replaces other patroll i added)
        -- TODO: The little beam that Baroness uses, single target -66% hit rate curse, AMS from worgens in SFK
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_school`, `loot_id`, `gold_min`, `gold_max`, `movement_type`, `static_flags1`, `static_flags2`, `script_name`) VALUES (90093, 'Dame Blanche', 61, 61, 21, 10698, 20, 6, 1, 2, 2, 15, 4, 2, 7.65, 5, 17083, 1670, 2185, 1, 4096, 64, '');

        -- -- TODO: hp, dmg, spells, inside ogre cave at one of the "Ends" inside the cave - Durium Bar. QUEST: Trade items to something outside ogre cave to pop (drop from ogres in zone)
        -- Knock away (10101), Sunder Armor (15572), demoralizing shout (19778), retaliation (22857), enrage at low hp (8599), thrash (3391)
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `movement_type`, `equipment_id`, `immunity_flags`, `static_flags1`, `static_flags2`, `script_name`) VALUES (90094, 'Highlord Ogrok', 61, 61, 40, 11565, 1, 1, 1.6, 20, 7, 1, 1, 2, 8, 2, 7.9, 3200, 17084, 9196, 920, 2139, 1, 9196, 4, 528384, 64, '0');

        -- -- TODO: hp, dmg, spells, QUEST: Defense at the little camp, final wave spawns him - titans power core
        -- TODO: +Weapon damage - move speed spell from golems in darkshore. spell reflect occasionally.
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `ranged_attack_time`, `loot_id`, `gold_min`, `gold_max`, `equipment_id`, `immunity_flags`, `static_flags1`, `static_flags2`) VALUES (90095, 'Enkidu', '', 61, 61, 14, 5988, 1, 1, 1.5, 20, 5, 1, 1, 2, 13, 2, 3.8, 2600, 1800, 17085, 1352, 1770, 2748, 4, 4192, 64);

        -- -- hp, dmg, spells, Void Star Fragment
        -- Drain Life (17238), Drain Mana (17243), Silence (12528)
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `armor_multiplier`, `loot_id`, `gold_min`, `gold_max`, `movement_type`, `inhabit_type`) VALUES (90096, 'Byrgen', 61, 61, 24, 1131, 1, 1, 1, 3, 1, 2, 17086, 9, 45, 1, 1);

        -- -- hp, dmg, spells, patrolls entire zone - Old Gods Leather
        -- Poison damage that lowers armor (20629?) conal thunder breath that stuns (15797). AOE stun (8285) 
        -- REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_variance`, `loot_id`, `skinning_loot_id`, `movement_type`, `inhabit_type`) VALUES (90097, 'Apademak', 61, 61, 16, 8015, 1, 1, 1.05, 2, 0.07, 17087, 7460, 1, 1);

        -- -- hp, dmg, spells, Deep Underwater in river by the kirin tor chest, Radiating Gemstone
        -- Nature bolt (Copy from NM in Maraudon?), knocback (copy from elementals in Feralas), ice armor
        -- REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `detection_range`, `type`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `ranged_attack_time`, `loot_id`, `spell_list_id`, `movement_type`, `school_immune_mask`, `static_flags1`, `static_flags2`) VALUES (90098, 'Ogopogo', '', 61, 61, 91, 5497, 3, 20, 4, 1, 1, 2, 3, 2, 1.65, 1549, 17088, 70790, 1, 16, 4096, 80);

    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90091, 1, 'Overlord Xelnu', NULL, 61, 61, 90, 0, 0, 12449, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1.42857, 20, 5, 0, 3, 0, 2, 1, 1, 6, 30, 1.5, 4, 0.14, 0, 2000, 1000, 0, 255, 15, 15, 15, 15, 0, 0, 0, 0, 17081, 0, 0, 2400, 3000, 200104, 0, 0, NULL, '', 1, 3, 0, 0, 12397, 0, 0, 0, 0, 12, 3229683712, 0, 32768, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90092, 0, 'Tinnin', '', 61, 61, 128, 0, 0, 2837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 10, 0, 2, 1, 2, 6, 30, 1.5, 2, 0.14, 0, 2000, 1558, 0, 15, 255, 15, 15, 15, 0, 0, 0, 0, 17082, 0, 7460, 2400, 3000, 200105, 0, 0, NULL, '', 1, 3, 0, 0, 0, 0, 0, 0, 0, 2, 2416447488, 64, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90093, 0, 'Dame Blanche', NULL, 61, 61, 21, 0, 0, 10698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 6, 0, 2, 2, 2, 6, 30, 0.5, 1, 0.14, 5, 2000, 2000, 0, 15, 10, 15, 255, 15, 0, 0, 0, 0, 17083, 0, 0, 2400, 3000, 200106, 0, 0, NULL, '', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 64, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90094, 0, 'Highlord Ogrok', NULL, 61, 61, 40, 0, 0, 11565, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.6, 1.14286, 20, 5, 0, 7, 0, 2, 1, 2, 6, 30, 1.5, 1, 0.14, 0, 3200, 2000, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 17084, 0, 0, 2400, 3000, 200107, 0, 0, NULL, 'EventAI', 1, 3, 0, 0, 9196, 0, 0, 0, 0, 4, 528384, 64, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90095, 0, 'Enkidu', NULL, 61, 61, 40, 0, 0, 5988, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.6, 1.14286, 20, 5, 0, 5, 0, 2, 1, 2, 6, 30, 1.5, 2.5, 0.14, 0, 2600, 1800, 0, 15, 15, 15, 15, 255, 0, 0, 0, 0, 17085, 0, 0, 2400, 3000, 200108, 0, 0, NULL, '', 1, 3, 0, 0, 2748, 0, 0, 0, 0, 4, 528384, 64, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90096, 0, 'Byrgen', NULL, 61, 61, 24, 0, 0, 1131, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1.14286, 18, 5, 0, 3, 0, 2, 1, 1, 6, 30, 1.5, 1, 0.14, 0, 2000, 2000, 0, 15, 15, 15, 255, 15, 0, 0, 0, 0, 17086, 0, 0, 2400, 3000, 200109, 0, 0, NULL, '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90097, 0, 'Apademak', NULL, 61, 61, 16, 0, 0, 8015, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 18, 5, 0, 1, 0, 2, 1, 1, 6, 30, 1.5, 2, 0.07, 0, 2000, 2000, 0, 15, 15, 15, 15, 255, 0, 0, 0, 0, 17086, 0, 7460, 2400, 3000, 200110, 0, 0, NULL, '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90098, 0, 'Ogopogo', '', 61, 61, 91, 0, 0, 5497, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 4, 0, 2, 1, 2, 6, 30, 1.25, 1, 0.14, 0, 2000, 1549, 0, 15, 90, 255, 90, 15, 0, 0, 0, 0, 17088, 0, 0, 2400, 3000, 200111, 0, 0, NULL, '', 1, 3, 0, 0, 0, 0, 0, 0, 16, 0, 4096, 80, 0, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90099, 0, 'Prospector Ariden', 'Explorers\' League', 16, 16, 55, 2, 0, 1277, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1.14286, 18, 5, 0, 7, 0, 0, 1, 1, 1, 1, 2, 1, 0.14, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 3, 0, 0, 2917, 0, 0, 0, 0, 0, 4718662, 0, 2, '');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90101, 0, 'Zombie Mother', NULL, 61, 61, 233, 0, 0, 11073, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1.14286, 20, 5, 0, 6, 0, 2, 2, 2, 6, 3, 1.25, 1.5, 0.14, 0, 2000, 2000, 0, 15, 15, 15, 15, 255, 0, 0, 0, 0, 17089, 0, 0, 1376, 1801, 200112, 0, 0, 34181, '', 1, 3, 0, 0, 10503, 0, 0, 0, 0, 0, 4096, 64, 0, '0');
    REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `totem_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90102, 0, 'Zombie Slave', NULL, 61, 61, 21, 0, 0, 10970, 10970, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 0, 1, 1.14286, 18, 5, 0, 6, 0, 0, 1, 1, 0.5, 1, 1, 1, 0.14, 0, 2000, 2000, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44750, 0, 0, 0, NULL, '', 1, 1, 0, 0, 0, 0, 0, 8388624, 0, 0, 0, 0, 0, '');

    -- Creature (Spawns)
    -- Don't forget 5m respawn timer! (300)
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000108, 12377, 0, 0, 0, 0, 0, -11047.8, -1911.19, -16.0885, 4.56643, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000109, 7370, 0, 0, 0, 0, 0, -11053.1, -1914.55, -16.7042, 4.64104, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000110, 12379, 0, 0, 0, 0, 0, -11181.7, -1920.89, -14.5465, 0.121075, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000111, 12379, 0, 0, 0, 0, 0, -11184.4, -1937.2, -14.5012, 0.820078, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000112, 12380, 0, 0, 0, 0, 0, -11186.1, -1930.25, -14.4383, 0.395963, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000113, 12380, 0, 0, 0, 0, 0, -11017.8, -1831.2, -32.8325, 4.33866, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000114, 12379, 0, 0, 0, 0, 0, -11013.2, -1835, -32.8325, 4.30095, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000115, 90093, 0, 0, 0, 0, 0, -11138.9, -1898.76, -13.4389, 0.417099, 7200, 14400, 5, 100, 100, 2, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000116, 12377, 0, 0, 0, 0, 0, -10995.5, -2041.69, 40.7059, 3.94574, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000117, 12378, 0, 0, 0, 0, 0, -11012.2, -2055.61, 55.618, 2.32389, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000118, 7370, 0, 0, 0, 0, 0, -11008.9, -2041.74, 64.2435, 0.678478, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000119, 12379, 0, 0, 0, 0, 0, -10996.1, -2056.35, 68.6625, 2.35845, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000120, 12380, 0, 0, 0, 0, 0, -11002.1, -2062.33, 68.6728, 3.65672, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000121, 12380, 0, 0, 0, 0, 0, -11013, -2069.59, 68.6653, 1.43404, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000122, 12379, 0, 0, 0, 0, 0, -11026.1, -2052.13, 79.9041, 0.0321013, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000123, 12379, 0, 0, 0, 0, 0, -11015.4, -2047.62, 79.8682, 0.400453, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000124, 12380, 0, 0, 0, 0, 0, -11000, -2047.65, 79.8823, 3.71484, 300, 300, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000127, 90092, 0, 0, 0, 0, 0, -10396.7, -1884.9, 41.1894, 3.51375, 7200, 14400, 5, 100, 100, 2, 1, 200, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000130, 90095, 0, 0, 0, 0, 0, -10674.5, -2065.84, 119.886, 2.55459, 7200, 14400, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000128, 90099, 0, 0, 0, 0, 0, -10434.7, -2137.54, 90.7795, 3.41392, 7200, 14400, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000132, 90100, 0, 0, 0, 0, 0, -11021.9, -2046.25, 40.7051, 0.619303, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000133, 90101, 0, 0, 0, 0, 0, -11357.9, -2186.88, 22.902, 6.24189, 7200, 14400, 5, 100, 100, 2, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000135, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000134, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000136, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000137, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000138, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);
    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000139, 90102, 0, 0, 0, 0, 0, -11360.9, -2187.74, 22.8898, 6.22618, 7200, 14400, 5, 100, 100, 1, 0, 0, 0, 10);

    -- creature_groups
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000134, 5.0, 9.5, 1);
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000135, 6.0, 10.0, 1);
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000136, 7.0, 10.5, 1);
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000137, 8.0, 11.0, 1);
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000138, 9.0, 11.5, 1);
    REPLACE INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (2000133, 2000139, 10.0, 12.0, 1);

    -- Creature waypoints
        -- Dame Blanche
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 1, -11110.8, -1885.11, -17.329, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 2, -11078.1, -1866.61, -24.7413, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 3, -11034.1, -1869.44, -31.2589, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 4, -11035.7, -1921.35, -29.1121, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 5, -11017.2, -1834.93, -32.807, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 6, -11138.4, -1900.79, -13.4982, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 7, -11127.9, -1933.39, -13.2166, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 8, -11093.4, -1942.02, -8.56983, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 9, -11049.3, -1929.49, -4.93407, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 10, -11044.4, -1899.95, -4.19389, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 11, -11091.8, -1891.02, 2.15656, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 12, -11096.7, -1922.24, 3.57586, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 13, -11099.6, -1971.76, 4.07907, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 14, -11108.9, -2005.73, 13.5149, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (2000115, 15, -11140.1, -1987.32, 18.0443, 100, 0, 0, 0, 0);

        -- Tinnin
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 1, -10396.7, -1884.9, 41.1894, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 2, -10422.9, -1894.86, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 3, -10448.7, -1906.84, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 4, -10466.1, -1914.93, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 5, -10486.8, -1928.53, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 6, -10507.6, -1940.26, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 7, -10541.3, -1949.5, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 8, -10572.3, -1957.5, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 9, -10597.8, -1963.28, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 10, -10630.3, -1968.38, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 11, -10662.8, -1965.93, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 12, -10684.3, -1951.11, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 13, -10712.9, -1922.83, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 14, -10737.1, -1900.88, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 15, -10763.8, -1899.61, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 16, -10785.8, -1905.6, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 17, -10812.9, -1924.45, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 18, -10833.3, -1947.32, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 19, -10857.8, -1969.54, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 20, -10880.6, -1987.18, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 21, -10899.8, -2004.29, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 22, -10919.9, -2017.02, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 23, -10939.5, -2017.65, 41.2305, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90092, 24, -10957, -2014.87, 41.2305, 100, 0, 0, 0, 0);

        -- Enkidu
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 1, -10702.2, -2047.11, 121.74, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 2, -10733.9, -2021, 121.543, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 3, -10731.7, -1984.44, 121.647, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 4, -10742.5, -1952.18, 121.27, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 5, -10771.1, -1947.25, 122.466, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 6, -10791.6, -1968.23, 123.298, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 7, -10806.1, -1989.75, 122.79, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 8, -10810.4, -2016.7, 124.789, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 9, -10815.5, -2054.84, 121.298, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 10, -10835.6, -2078.51, 121.352, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 11, -10842.7, -2104.54, 121.56, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 12, -10823, -2136.83, 121.757, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 13, -10828.1, -2164.53, 122.153, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 14, -10852, -2195.13, 121.569, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 15, -10879.1, -2207.35, 122.54, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 16, -10903.6, -2224.09, 121.496, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 17, -10925.9, -2249.12, 122.4, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 18, -10954.8, -2264.87, 121.535, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 19, -10989.2, -2274.31, 121.532, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 20, -11017.1, -2263.28, 121.532, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 21, -11041, -2263.52, 121.574, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 22, -11064.7, -2253.42, 121.532, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 23, -11089.3, -2254.69, 121.531, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 24, -11112.6, -2258.65, 121.531, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 25, -11135.7, -2263.47, 121.502, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 26, -11163, -2254.85, 115.909, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 27, -11177.8, -2230.12, 104.721, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 28, -11178.9, -2209.04, 95.1055, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 29, -11167.3, -2181.14, 79.835, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 30, -11157.8, -2163.15, 69.7559, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 31, -11152.9, -2132.35, 57.5117, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 32, -11143.4, -2106.91, 49.4522, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 33, -11133.1, -2077.97, 47.0749, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 34, -11129.4, -2052.41, 47.0745, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90095, 35, -11128, -2027.09, 47.1488, 100, 0, 0, 0, 0);

        -- Scared Spirit
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 1, -11017.4, -2042.87, 40.7058, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 2, -11004.8, -2034.83, 40.7058, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 3, -10999.4, -2039.82, 40.7058, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 4, -10994, -2042.46, 40.7057, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 5, -11000, -2047.39, 45.8644, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 6, -11006.7, -2052.77, 53.12, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 7, -11012.5, -2057.53, 55.6171, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 8, -11019.1, -2049.38, 55.6171, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 9, -11014.5, -2045.71, 57.869, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 10, -11009.3, -2041.53, 64.0559, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 11, -11003.3, -2036.67, 68.2066, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 12, -10998.1, -2042.41, 68.2066, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 13, -11004.5, -2049.08, 68.2066, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 14, -10999.4, -2056.53, 68.6647, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 15, -11005.2, -2064.1, 68.671, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 16, -11012.3, -2069.86, 68.669, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 17, -11017, -2063.66, 69.324, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 18, -11019.9, -2059.81, 73.6299, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 19, -11023, -2055.7, 78.1769, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 20, -11026.3, -2051.24, 79.918, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 21, -11018.2, -2045.37, 79.9135, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 22, -11009.5, -2038.15, 79.9191, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 23, -11000.9, -2049.69, 79.8821, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 24, -11007.1, -2054.87, 81.2169, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 25, -11012, -2058.94, 86.1482, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 26, -11016.4, -2062.65, 89.7202, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 27, -11022.9, -2054.93, 89.6162, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90100, 28, -11017.3, -2050.31, 89.6242, 100, 0, 0, 9000000, 0);

        -- Zombie Mother
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 1, -11343.3, -2187.87, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 2, -11327.3, -2188.32, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 3, -11309.9, -2189.77, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 4, -11293.5, -2191.13, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 5, -11279.8, -2192.27, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 6, -11265.2, -2193.49, 22.7076, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 7, -11252, -2194.82, 22.7026, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 8, -11237.9, -2196.26, 22.7011, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 9, -11224, -2197.69, 22.7155, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 10, -11206.3, -2199.52, 22.7504, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 11, -11204.5, -2170.11, 22.7344, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 12, -11172.4, -2172, 22.723, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 13, -11175.8, -2218.69, 22.738, 100, 0, 0, 0, 0);
            REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`, `path_id`) VALUES (90101, 14, -11208.7, -2217.25, 22.7499, 100, 0, 0, 0, 0);






-- Gossip NPCs
    -- Race Change
    REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `script_name`) VALUES (90054, 0, 'Mr. Pink', 'Race Changer', 50, 50, 35, 1, 0, 7209, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'custom_race_change_npc');

    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000088, 90054, 0, 0, 0, 0, 0, -8894.04, -138.041, 80.4833, 1.35593, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000092, 90054, 0, 0, 0, 0, 1, 9867.21, 2335.98, 1321.59, 2.74493, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000093, 90054, 0, 0, 0, 0, 0, -4911.29, -1001.99, 508.662, 4.07653, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000094, 90054, 0, 0, 0, 0, 0, -8745.3, 661.038, 105.092, 4.774, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000095, 90054, 0, 0, 0, 0, 1, -3704.07, -4543.03, 25.8339, 3.58632, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE  `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000104, 90054, 0, 0, 0, 0, 1, 16238.1, 16276.2, 14.8201, 5.20002, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    REPLACE `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`) VALUES (90006, 99996, 1);
    REPLACE `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (99996, 'You are the wrong class or race.', 'You are the wrong class or race.');

    -- Barber
    REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `script_name`) VALUES (90055, 0, 'Salvatore Manfrellotti', 'Barber', 50, 50, 35, 1, 0, 7209, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'custom_barber_npc');

REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000089, 90055, 0, 0, 0, 0, 0, -8749.6, 659.675, 105.092, 5.0669, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000090, 90055, 0, 0, 0, 0, 0, -4913.88, -999.789, 508.663, 4.02899, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000091, 90055, 0, 0, 0, 0, 1, 9864.53, 2331.56, 1321.59, 2.73077, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000096, 90055, 0, 0, 0, 0, 1, -3705.89, -4539.34, 25.8339, 3.657, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000097, 90055, 0, 0, 0, 0, 0, -8896.44, -136.91, 80.5766, 1.04568, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000103, 90055, 0, 0, 0, 0, 1, 16240.4, 16277.5, 14.6558, 4.91729, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);


-- NPCs
    -- Caretaker of Karazhan rep vendors
        REPLACE INTO `creature_template` 
        (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90035, 'Maximillian Arturo', 'Caretaker of Karazhan', 58, 58, 1681, 2, 1724, 1, 1, 3, 0.8, 1000, 100, 100, 1, 7, '', 264, 524296);

        REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000037, 90035, 0, -10451.66, -1720.62, 85.05, 1.8897, 0);
        -- REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `unit_flags`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90036, 'Wade Wells', 'Caretaker of Karazhan', 58, 58, 1681, 4, 10591, 1, 1, 3, 0.8, 1000, 100, 100, 1, 4096, 7, '', 264, 524296);
        REPLACE INTO `creature_template` 
        (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `unit_class`, `flags_extra`) VALUES (90036, 'Wade Wells', 'Caretaker of Karazhan', 58, 58, 1681, 4, 10591, 1, 524296);

        REPLACE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000038, 90036, 0, -10453.53, -1721.077, 84.94, 1.8964, 0);

-- Battlebots

-- Holy Priest
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (11, 6346); -- Fear Ward
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (11, 19243); -- Desperate Prayer

-- Shadow Priest
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (5, 15487); -- Silence
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (5, 19280); -- Devouring Plague
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (5, 6346); -- Fear Ward
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (5, 19243); -- Desperate Prayer
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (5, 19266); -- Touch of Weakness
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (11, 19266); -- Touch of Weakness
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (57, 19266); -- Touch of Weakness
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (59, 19266); -- Touch of Weakness

-- Destro Lock
INSERT IGNORE `mangos`.`player_premade_spell` (`entry`, `spell`) VALUES (55, 18932); -- Conflag

