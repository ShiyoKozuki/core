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
