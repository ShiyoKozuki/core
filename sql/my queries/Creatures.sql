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

-- .help all GM commands
-- .tele prog (programmer island)
-- .aoedamage 100000 - deal aoe damage to everything around you
-- .namego <name> - summon player
-- .debug ADVANCED COMMANDS

-- NEXT npc_Text 90006
-- NEXT broadcast_text 99996

-- graveyards = WorldSafeLocs.dbc and world_safe_facing.sql to set facing @ the spirit healer

-- Double the armor of any mob < 2.0 multiplier and > 0 multiplier
UPDATE mangos . creature_template
SET armor_multiplier = 2.0
WHERE armor_multiplier < 2.0 AND armor_multiplier > 0;

-- Combat Reach
UPDATE mangos . creature_display_info_addon 
SET combat_reach = 1
WHERE combat_reach > 1 and combat_reach < 2;

-- Tauren mobs / players
UPDATE mangos . creature_display_info_addon 
SET combat_reach = 2
WHERE display_id IN(59, 60, 12170);

-- AOE camp mobs

    -- Hammerfall Peon
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.5, `damage_multiplier`=1.0 WHERE  `entry`=2618 AND `patch`=0;

    -- Southsea Swashbuckler
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.6, `damage_multiplier`=1.0 WHERE  `entry`=7858 AND `patch`=0;
    -- Southsea Pirate
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.5, `damage_multiplier`=1.0 WHERE  `entry`=7855 AND `patch`=0;
    -- Southsea Dock Worker
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.6, `damage_multiplier`=0.9 WHERE  `entry`=7857 AND `patch`=0;
    -- Southsea Freebooter
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.6, `damage_multiplier`=1.0 WHERE  `entry`=7856 AND `patch`=0;

    -- Scarlet Lumberjack
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=1884 AND `patch`=0;

    -- Scarlet Worker
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=1883 AND `patch`=0;

    -- Blighted Zombie (Dalsons Tears)
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=4475 AND `patch`=0;
    -- Rotting Cadaver (Dalsons Tears)
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=4474 AND `patch`=0;
    -- Skeletal Terror (Dalsons Tears)
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=1785 AND `patch`=0;

    -- Skeletal Sorcerer (Sorrow Hill / Felstone Field)
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=1.0 WHERE  `entry`=1784 AND `patch`=0;
    -- Skeletal Flayer (Sorrow Hill / Felstone Field)
    UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.7, `damage_multiplier`=0.6 WHERE  `entry`=1783 AND `patch`=0;
    -- Slavering Ghoul (Sorrow Hill / Felstone Field)


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

-- Archaedas HP adjusted due to 2x elite HP
UPDATE `mangos`.`creature_template` SET `health_multiplier`=7 WHERE  `entry`=2748 AND `patch`=0;

-- Eliza's Guard HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.45, `damage_multiplier`=1.0 WHERE  `entry`=1871 AND `patch`=0;

-- Oozeling HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.2, `damage_multiplier`=0.9 WHERE  `entry`=8257 AND `patch`=0;

-- Maraudon Larvae HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.3, `damage_multiplier`=0.6 WHERE  `entry`=12218 AND `patch`=0;

-- Weapon Technician HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.4, `damage_multiplier`=1.8 WHERE  `entry`=8920 AND `patch`=0;

-- Doomforge Arcanasmith HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.65, `damage_multiplier`=1.7 WHERE  `entry`=8900 AND `patch`=0;

-- Anvilrage Reservist HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.10, `damage_multiplier`=0.8 WHERE  `entry`=8901 AND `patch`=0;

-- Theradrim Shardling HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.4, `damage_multiplier`=1.0 WHERE  `entry`=11783 AND `patch`=0;

-- Theradrim Shardling HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.6, `damage_multiplier`=1.2 WHERE  `entry`=8318 AND `patch`=0;

-- Princess Theradras adjusted due to 2x elite HP
UPDATE `mangos`.`creature_template` SET `health_multiplier`=5 WHERE  `entry`=12201 AND `patch`=0;

-- Atal'ai Slave HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.5, `damage_multiplier`=0.9 WHERE  `entry`=11789 AND `patch`=0;

-- Slime Maggot HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.3, `damage_multiplier`=1.2 WHERE  `entry`=8311 AND `patch`=0;

-- Nightmare Whelp HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.5, `damage_multiplier`=1.4 WHERE  `entry`=8319 AND `patch`=0;
-- Hakkari Minion HP and damage reduced due to DMG and HP multiplier on normal mobs
UPDATE `mangos`.`creature_template` SET `health_multiplier`=0.4, `damage_multiplier`=1.4 WHERE  `entry`=8437 AND `patch`=0;

-- Aku'Mai reduced HP due to elite mobs having 2x HP
UPDATE `mangos`.`creature_template` SET `health_multiplier`=5 WHERE  `entry`=4829 AND `patch`=0;

-- Divino Magic Rod mobs HP reduced due to DMG and HP multiplier on normal mobs
UPDATE mangos.creature_template
SET health_multiplier = 0.35, damage_multiplier = 1.2
WHERE entry IN(8876, 7788, 8877);
UPDATE mangos.creature_template
SET health_multiplier = 0.3, damage_multiplier = 1.0
WHERE entry = 7787;

-- Caliph Scorpidsting and Andre Firebeard made Elite
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `damage_multiplier`=3.5, `nature_res`=125, `spell_list_id`=200072 WHERE  `entry`=7847 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `damage_multiplier`=3.5, `fire_res`=125, `spell_list_id`=200073 WHERE  `entry`=7883 AND `patch`=0;

-- Lord Shalzaru made elite
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5.0, `mana_multiplier`=20.0, `damage_multiplier`=3.5, `frost_res`=125, `spell_list_id`=200074 WHERE  `entry`=8136 AND `patch`=0;

-- Moora, Salia and Shadow Lord Fel'dan made elite
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=2, `mana_multiplier`=5, `damage_multiplier`=2 WHERE  `entry`=9861;
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=2, `mana_multiplier`=5 WHERE  `entry`=9860;
UPDATE `mangos`.`creature_template` SET `rank`=1, `health_multiplier`=5, `mana_multiplier`=25, `damage_multiplier`=3.5, `shadow_res`=125, `spell_id1`=0, `spell_id2`=0, `spell_id3`=0, `spell_list_id`=200079 WHERE  `entry`=9517;

-- Twilight Flamereaver
UPDATE `mangos`.`creature_template` SET `spell_id1`=15732 WHERE  `entry`=15201 AND `patch`=6;

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
UPDATE `mangos`.`creature_template` SET `spell_id1`=9574 WHERE  `entry`=10217 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `spell_id1`=9574 WHERE  `entry`=10217 AND `patch`=10;

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
UPDATE `mangos`.`creature_template` SET `spell_id2`=16098 WHERE  `entry`=9236 AND `patch`=0;

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
    -- TODO: Loot Drops
    -- TODO: Fix mob system..i.e. Grub isnt Undead

    -- ZNM (EPL)
        -- Skeleton Warlord
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90060, 'Skeletal Warlord-ZNM', 61, 61, 21, 775, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200082, '', 1, 1788, 8602131);
        
            -- Summoned Acolyte
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `movement_type`, `equipment_id`, `static_flags1`) VALUES (90068, 'Summoned Acolyte', 60, 60, 233, 11157, 11145, 11146, 11173, 20, 30, 30, 20, 100, 20, 7, 1, 2, 20, 20, 2, 3.8, 0, 0, 0, 0, 17613, 11443, 17615, 16592, 104710, '', 1, 10471, 524288);

        -- Ghoul
        -- TODO: Retest damage and CD on hate reset + knockback
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90061, 'Ghoul-ZNM', 61, 61, 21, 10487, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 2, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200083, '', 1, 0, 8602131);

        -- Banshee
        -- TODO: None of it's spells work at all
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90062, 'Banshee-ZNM', 61, 61, 21, 10751, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200084, '', 1, 0, 8602131);

        -- Crypt Fiend
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90063, 'Crypt Fiend-ZNM', 61, 61, 21, 6841, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200085, '', 1, 0, 8602131);

            -- Spiderling
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_run`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `spell_list_id`, `inhabit_type`, `mechanic_immune_mask`, `static_flags1`, `static_flags2`) VALUES (90070, 9, 'Spiderling', 60, 60, 16, 13111, 1, 1, 2.14286, 1, 1, 0.10, 1.0, 0.2, 500, 170550, 1, 1022042625, 524292, 64);

        -- Grub
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90064, 'Grub-ZNM', 60, 60, 21, 7898, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200086, '', 1, 0, 8602131);

        -- Gargoyle
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90065, 'Gargoyle-ZNM', 61, 61, 21, 7854, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200087, '', 1, 0, 8602131);

        -- Zombie
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90066, 'Zombie-ZNM', 61, 61, 21, 4631, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200088, '', 1, 0, 8602131);

        -- Skeletal Mage
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90067, 'Skeletal Mage-ZNM', 61, 61, 21, 11403, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200089, '', 1, 0, 8602131);

            -- Summoned Acolyte
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `spell_list_id`, `ai_name`, `movement_type`, `equipment_id`, `static_flags1`) VALUES (90071, 'Summoned Acolyte', 60, 60, 233, 11157, 11145, 11146, 11173, 20, 30, 30, 20, 100, 20, 7, 1, 2, 20, 20, 2, 3.8, 200090, '', 1, 10471, 524288);

    -- T2
        -- Abomination
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90077, 'Abomination-ZNM', 62, 62, 21, 16174, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200092, '', 1, 0, 8602131);
        
        -- Necromancer
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90078, 'Necromancer-ZNM', 62, 62, 21, 16309, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200093, '', 1, 0, 8602131);
        
        -- Thaddius 
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90079, 'Thaddius-ZNM', 62, 62, 21, 16137, 2, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200094, '', 1, 0, 8602131);
        
        -- Grobbulus
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90080, 'Grobbulus-ZNM', 62, 62, 21, 16035, 2, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200103, '', 1, 0, 8602131);
        
        -- Palid Horror
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90081, 'Palid Horror-ZNM', 62, 62, 21, 14697, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200095, '', 1, 0, 8602131);
        
        -- Gluth
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90082, 'Gluth-ZNM', 62, 62, 21, 16064, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200096, '', 1, 0, 8602131);
        
        -- Loatheb
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90083, 'Loatheb-ZNM', 62, 62, 21, 16110, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200097, '', 1, 0, 8602131);
        
        -- Mad Scientist
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90084, 'Mad Scientst-ZNM', 62, 62, 21, 16063, 0, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200098, '', 1, 0, 8602131);

            -- Summoned Arcane Enforcers
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_school`, `spell_list_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags2`) VALUES (90076, 1, 'Arcane Enforcer', 60, 60, 834, 14253, 20, 4, 1, 2, 30, 4, 2, 4, 6, 200091, 16384, 64, 32, 16);

    -- T3
        -- DK
            -- TODO: HD mod needs model put in to patch
            -- TODO: add 33914 to auras column
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `auras`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90085, 'Death Knight-ZNM', 63, 63, 21, 14591, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200099, 33914, '', 1, 0, 8602131);

            -- Summoned Gargoyle
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `ai_name`, `movement_type`, `mechanic_immune_mask`) VALUES (90073, 'ZNM Gargoyle Pet', 60, 60, 21, 7533, 0.5, 20, 6, 1, 1, 6, 2, 2, 3, 1600, 10408, '', 1, 8388624);

        -- Dread Lord
            -- TODO: HD mod needs model put in to patch?
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90086, 'Dreadlord-ZNM', 63, 63, 21, 10691, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200100, '', 1, 0, 8602131);

            -- Summoned Infernal
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `spell_list_id`, `movement_type`, `school_immune_mask`) VALUES (90074, 'Infernal', 62, 62, 90, 12817, 20, 3, 1, 1, 25, 25, 2, 8, 71350, 1, 4);

        -- Crypt Lord
            -- TODO: add 33915 to auras column
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `auras`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90087, 'Crypt Lord-ZNM', 63, 63, 21, 15931, 2, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 2, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200101, 33915, '', 1, 0, 8602131);

            -- Carrion Beetle
            REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `speed_walk`, `speed_run`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `ranged_attack_time`, `spell_list_id`, `movement_type`, `mechanic_immune_mask`, `static_flags1`, `static_flags2`) VALUES (90075, 9, 'Carrion Beetle', '', 60, 60, 21, 10005, 1.2, 0.833332, 2.14286, 10, 1, 0.2, 2, 2.5, 1000, 1265, 166980, 2, 1022042625, 524294, 64);

        -- Lich
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `ai_name`, `inhabit_type`, `equipment_id`, `mechanic_immune_mask`) VALUES (90088, 'Lich-ZNM', 63, 63, 21, 15945, 4, 1, 1, 0.888888, 20, 6, 1, 1, 50, 600, 0.5, 8, 2500, 1788, 0, 445, 1236, 16856, 0, 0, 0, 200102, '', 1, 0, 8602131);

-- Gossip NPCs
    -- Race Change
    REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `script_name`) VALUES (90054, 0, 'Mr. Pink', 'Race Changer', 50, 50, 35, 1, 0, 7209, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'custom_race_change_npc');

    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000088, 90054, 0, 0, 0, 0, 0, -8894.04, -138.041, 80.4833, 1.35593, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000092, 90054, 0, 0, 0, 0, 1, 9867.21, 2335.98, 1321.59, 2.74493, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000093, 90054, 0, 0, 0, 0, 0, -4911.29, -1001.99, 508.662, 4.07653, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000094, 90054, 0, 0, 0, 0, 0, -8745.3, 661.038, 105.092, 4.774, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000095, 90054, 0, 0, 0, 0, 1, -3704.07, -4543.03, 25.8339, 3.58632, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
    REPLACE  `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000104, 90054, 0, 0, 0, 0, 1, 16238.1, 16276.2, 14.8201, 5.20002, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);



    REPLACE `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`) VALUES (90006, 99996, 1);
    REPLACE `broadcast_text` (`entry`, `male_text`, `female_text`) VALUES (99996, 'You are the wrong class or race.', 'You are the wrong class or race.');

    -- Barber
    REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `unit_class`, `pet_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `script_name`) VALUES (90055, 0, 'Salvatore Manfrellotti', 'Barber', 50, 50, 35, 1, 0, 7209, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1.14286, 20, 5, 0, 1, 1, 1, 1, 1, 1, 0.14, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'custom_barber_npc');

REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000089, 90055, 0, 0, 0, 0, 0, -8749.6, 659.675, 105.092, 5.0669, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000090, 90055, 0, 0, 0, 0, 0, -4913.88, -999.789, 508.663, 4.02899, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000091, 90055, 0, 0, 0, 0, 1, 9864.53, 2331.56, 1321.59, 2.73077, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000096, 90055, 0, 0, 0, 0, 1, -3705.89, -4539.34, 25.8339, 3.657, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000097, 90055, 0, 0, 0, 0, 0, -8896.44, -136.91, 80.5766, 1.04568, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000103, 90055, 0, 0, 0, 0, 1, 16240.4, 16277.5, 14.6558, 4.91729, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);



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

