-- Spells

-- Racials

-- Shadowmeld usable in combat
UPDATE mangos . spell_template 
SET attributes = 169148432,
    recoveryTime = 120000
WHERE entry = 20580;