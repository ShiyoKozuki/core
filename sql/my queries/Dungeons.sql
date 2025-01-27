-- BRD
UPDATE mangos.creature_template ct
JOIN mangos.creature c
    ON ct.entry = c.id
SET ct.level_min = 58, ct.level_max = 60
WHERE c.map = 230 AND ct.level_min >= 50 AND ct.level_max <= 60;


UPDATE mangos.creature_template ct
JOIN mangos.creature c
    ON ct.entry = c.id
SET ct.damage_multiplier = 0.75, ct.health_multiplier = 0.5
WHERE c.map = 230 AND ct.name = 'Bloodhound';


-- Bosses

    -- Lord Roccor
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9025 AND `patch`=0;

    -- Houndmaster Grebmar
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9319 AND `patch`=0;

    -- High Interrogator Gerstahn
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9018 AND `patch`=0;

    -- Ok'thor the Breaker
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9030 AND `patch`=0;

    -- Pyromancer Loregrain
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9024 AND `patch`=0;

    -- Golem Lord Argelmach
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=8983 AND `patch`=0;

    -- Ribbly Screwspigot
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9543 AND `patch`=0;

    -- Hurley Blackbreath
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9537 AND `patch`=0;

    -- Plugger Spazzring
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9499 AND `patch`=0;

    -- Warder Stilgiss
    UPDATE `mangos`.`creature_template` SET `damage_multiplier`=6.0 WHERE  `entry`=9041 AND `patch`=0;








