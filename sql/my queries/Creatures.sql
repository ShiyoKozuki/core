-- Creatures

-- Strath Gargoyles movement speed
UPDATE `mangos`.`creature_template` SET `speed_run`=0.5 WHERE  `entry`=10408 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `speed_run`=0.5 WHERE  `entry`=10409 AND `patch`=0;

-- Fireguard Destroyer
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.0 WHERE  `entry`=8911 AND `patch`=0;

-- Ragereaver Golem
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.0 WHERE  `entry`=8906 AND `patch`=0;

-- Wrath Hammer Construct 
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=3.55 WHERE  `entry`=8907;

-- Molten War Golem
UPDATE `mangos`.`creature_template` SET `damage_multiplier`=5.5 WHERE  `entry`=8908 AND `patch`=0;

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