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

