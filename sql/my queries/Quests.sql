-- Quests

-- A Lack of Fear (Fear Ward Quest)
UPDATE mangos . quest_template 
SET RequiredRaces = 0
WHERE entry IN(5641, 5645, 5647);