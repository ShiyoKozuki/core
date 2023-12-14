UPDATE world . spell_template SET procCharges = 100 WHERE entry = 20925;
UPDATE world . spell_template SET procCharges = 100 WHERE entry = 20927;
UPDATE world . spell_template SET procCharges = 100 WHERE entry = 20928;

UPDATE world . spell_template SET procChance = 10 WHERE entry = 20127;
UPDATE world . spell_template SET procChance = 10 WHERE entry = 20130;
UPDATE world . spell_template SET procChance = 10 WHERE entry = 20135;
UPDATE world . spell_template SET procChance = 10 WHERE entry = 20136;
UPDATE world . spell_template SET procChance = 10 WHERE entry = 20137;
UPDATE world . spell_proc_event SET procEx = 3 WHERE entry = 20127;

UPDATE world . spell_template SET effect2 = 6 WHERE entry = 20189;
UPDATE world . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20189;
UPDATE world . spell_template SET effectDieSides2 = 1 WHERE entry = 20189;
UPDATE world . spell_template SET effectBaseDice2 = 1 WHERE entry = 20189;
UPDATE world . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20189;

UPDATE world . spell_template SET effect2 = 6 WHERE entry = 20192;
UPDATE world . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20192;
UPDATE world . spell_template SET effectDieSides2 = 1 WHERE entry = 20192;
UPDATE world . spell_template SET effectBaseDice2 = 1 WHERE entry = 20192;
UPDATE world . spell_template SET effectBasePoints2 = 1 WHERE entry = 20192;
UPDATE world . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20192;

UPDATE world . spell_template SET effect2 = 6 WHERE entry = 20193;
UPDATE world . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20193;
UPDATE world . spell_template SET effectDieSides2 = 1 WHERE entry = 20193;
UPDATE world . spell_template SET effectBaseDice2 = 1 WHERE entry = 20193;
UPDATE world . spell_template SET effectBasePoints2 = 2 WHERE entry = 20193;
UPDATE world . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20193;

-- Items
-- Delete the WDB folder in your client directory.

-- Mantle of the Second War Doesn't exist?
-- UPDATE world . item_template
-- SET stat_type3 = 4,
--     stat_value3 = 8,
--     stat_type4 = 5,
--     stat_value4 = 8
-- WHERE entry = 210773;

-- Ironforge Breastplaste 
UPDATE world . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 6731;

-- Truesilver Breastplate
UPDATE world . item_template
SET spellid_1 = 13667, -- +2% Parry
    spelltrigger_1 = 1,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 7939;

-- Truesilver Gauntlets
UPDATE world . item_template
SET spellid_1 = 7598, -- +2% Melee Crit
    spelltrigger_1 = 1
WHERE entry = 7938;

-- Demon Forged Breastplate
UPDATE world . item_template
SET stat_type1 = 7,
    stat_value1 = 13,
    stat_type2 = 5,
    stat_value2 = 13,
    spellid_1 = 21408, -- +12 Defense
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12628;

-- Fiery Plate Gauntlets
UPDATE world . item_template
SET stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 5,
    stat_value2 = 20,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1,
    spellid_2 = 9417, -- +12 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12631;

-- Helm of the Great Chief
UPDATE world . item_template
SET subclass = 4,
    quality = 4,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 225,
    armor = 534,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 15,
    spellid_1 = 13390, -- +10 Defense
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 12636;

-- Silver Bronzed Set
UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3482;

UPDATE world . item_template
SET quality = 3,
    stat_type3 = 6,
    stat_value3 = 10,
    stat_type4 = 5,
    stat_value4 = 10
WHERE entry = 2869;

UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3483;

UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 6
WHERE entry = 10423;

UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3481;

-- Golden Scale Set
UPDATE world . item_template
SET stat_type3 = 5,
    stat_value3 = 8
WHERE entry = 3847;

UPDATE world . item_template
SET stat_type3 = 5,
    stat_value3 = 10
WHERE entry = 3837;

UPDATE world . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 6,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 3845;

UPDATE world . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 9366;

UPDATE world . item_template
SET stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 3843;

UPDATE world . item_template
SET stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 3841;

-- Heavy Mithril Set
UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 5,
    stat_type3 = 4,
    stat_value3 = 5
WHERE entry = 7933;

UPDATE world . item_template
SET quality = 3,
    stat_type2 = 3,
    stat_value2 = 10,
    stat_type3 = 4,
    stat_value3 = 10
WHERE entry = 7930;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 5,
    stat_type3 = 4,
    stat_value3 = 5
WHERE entry = 7919;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 5,
    stat_type3 = 4,
    stat_value3 = 5
WHERE entry = 7918;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 7,
    stat_type3 = 4,
    stat_value3 = 7
WHERE entry = 7921;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 6,
    stat_type3 = 4,
    stat_value3 = 6
WHERE entry = 7934;

-- Ornate Mithril Set
UPDATE world . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7936;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12
WHERE entry = 7935;

UPDATE world . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7927;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10
WHERE entry = 7926;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 7937;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7928;

-- Radiant Armor Set (BOP)
UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21359, -- 1 MP/5
    spelltrigger_2 = 1
WHERE entry = 12419;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18035, -- +51 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 12415;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18033, -- +46 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 12420;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18029, -- +35 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21359, -- 1 MP/5
    spelltrigger_2 = 1
WHERE entry = 12418;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18029, -- +35 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21359, -- 1 MP/5
    spelltrigger_2 = 1
WHERE entry = 12416;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    frost_res = 0,
    shadow_res = 0,
    spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 12417;

-- Thorium Armor Set
UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 7,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12409;

UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 15,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12405;

UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 4,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12406;

UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 3,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12408;

UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 12,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12410;

UPDATE world . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 12,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12414;

-- Imperial Plate Set
UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12426;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 7598, -- +2% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12422;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12427;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12424;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12425;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12429;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 7598, -- +2% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Melee Hit
    spelltrigger_2 = 1
WHERE entry = 12428;

-- Enchanted Thorium Set
UPDATE world . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_2 = 15465, -- +2% Melee Hit
    spelltrigger_2 = 1,
    spellid_3 = 13670, -- +2% Dodge
    spelltrigger_3 = 1
WHERE entry = 12620;

UPDATE world . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 20,
    spellid_2 = 15465, -- +2% Melee Hit
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 12618;

UPDATE world . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 20,
    spellid_2 = 15465, -- +2% Melee Hit
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 12619;

-- Runic Armor Set
UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12611;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 7598, -- +2% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12613;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12612;

UPDATE world . item_template
    SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 15465, -- +2% Melee Hit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12614;

UPDATE world . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 7597, -- +1% Melee Crit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12610;

-- Corruption
UPDATE world . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    delay = 3800,
    dmg_min1 = 225,
    dmg_max1 = 345
WHERE entry = 12782;

-- Persuader 
UPDATE world . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 2900,
    dmg_min1 = 130,
    dmg_max1 = 190
WHERE entry = 22384;

-- Black Amnesty
UPDATE world . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 2000,
    dmg_min1 = 90,
    dmg_max1 = 130
WHERE entry = 19166;

-- Frostguard
UPDATE world . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 2900,
    dmg_min1 = 125,
    dmg_max1 = 190
WHERE entry = 12797;

-- Sageblade
UPDATE world . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 2000,
    dmg_min1 = 50,
    dmg_max1 = 100,
    spellid_1 = 26158, -- +60 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22383;

-- Copper Battle Axe
UPDATE world . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 35,
    dmg_max1 = 48
WHERE entry = 3488;

-- Thick War Axe
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 11,
    dmg_max1 = 27
WHERE entry = 3489;

-- Heavy Copper Broadsword
UPDATE world . item_template
SET quality = 3,
    delay = 3400,
    dmg_min1 = 47,
    dmg_max1 = 70
WHERE entry = 3487;

-- Big Bronze Knife TEST
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 17,
    dmg_max1 = 33
WHERE entry = 3848;

-- Pearl-handled Dagger
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 19,
    dmg_max1 = 37
WHERE entry = 5540;

-- Deadly Bronze Poniard
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 21,
    dmg_max1 = 39
WHERE entry = 3490;

-- Heavy Bronze Mace
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 30,
    dmg_max1 = 57
WHERE entry = 3491;

-- Iridescent Hammer
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 19,
    dmg_max1 = 37
WHERE entry = 5541;

-- Mighty Iron Hammer
UPDATE world . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 75,
    dmg_max1 = 100
WHERE entry = 3492;

-- Hardened Iron Shortsword
UPDATE world . item_template
SET quality = 3,
    delay = 2700,
    dmg_min1 = 35,
    dmg_max1 = 67
WHERE entry = 3849;

-- Golden Iron Destroyer
UPDATE world . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 88,
    dmg_max1 = 132
WHERE entry = 3852;

-- Moonsteel Broadsword
UPDATE world . item_template
SET quality = 3,
    delay = 3300,
    dmg_min1 = 80,
    dmg_max1 = 120
WHERE entry = 3853;

-- Massive Iron Axe
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 86,
    dmg_max1 = 129
WHERE entry = 3855;

-- Edge of Winter
UPDATE world . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 44,
    dmg_max1 = 80
WHERE entry = 17704;

-- Searing Golden Blade
UPDATE world . item_template
SET quality = 3,
    delay = 2000,
    dmg_min1 = 40,
    dmg_max1 = 75
WHERE entry = 12260;

-- Frost Tiger Blade
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 110,
    dmg_max1 = 165
WHERE entry = 3854;

-- Shadow Crescent Axe
UPDATE world . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 115,
    dmg_max1 = 175,
    spellid_2 = 9081,
    -- 18217
    spelltrigger_2 = 2
WHERE entry = 3856;

-- Big Black Mace
UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 5,
    spellid_1 = 9314, -- +24 Healing
    spelltrigger_1 = 1
WHERE entry = 7945;

-- The Shatterer
UPDATE world . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 45,
    dmg_max1 = 85
WHERE entry = 7954;

-- Dazzling Mithril Rapier
UPDATE world . item_template
SET quality = 3,
    delay = 2500,
    dmg_min1 = 55,
    dmg_max1 = 108
WHERE entry = 7944;

-- Phantom Blade
UPDATE world . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 72,
    dmg_max1 = 132
WHERE entry = 7961;

-- Runed Mithril Hammer
UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    spellid_1 = 9316, -- +29 Healing
    spelltrigger_1 = 1
WHERE entry = 7946;

-- Blight
UPDATE world . item_template
SET quality = 4,
    delay = 3800,
    dmg_min1 = 145,
    dmg_max1 = 220,
    spellid_2 = 26153, -- +140 Feral attack Power
    spelltrigger_2 = 1
WHERE entry = 7959;

-- Truesilver Champion
UPDATE world . item_template
SET quality = 4,
    delay = 3400,
    dmg_min1 = 145,
    dmg_max1 = 220
WHERE entry = 7960;

-- Blazing Rapier
UPDATE world . item_template
SET quality = 4,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12777;

-- Enchanted Battlehammer
UPDATE world . item_template
SET quality = 4,
    delay = 3600,
    dmg_min1 = 166,
    dmg_max1 = 250,
    spellid_3 = 15715, -- +25 Spell Damage
    spelltrigger_3 = 1
WHERE entry = 12776;

-- Serenity
UPDATE world . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 55,
    dmg_max1 = 90
WHERE entry = 12781;

-- Volcanic Hammer
UPDATE world . item_template
SET quality = 3,
    delay = 2800,
    dmg_min1 = 75,
    dmg_max1 = 145
WHERE entry = 12792;

-- Ornate Thorium Handaxe
UPDATE world . item_template
SET quality = 3,
    dmg_min1 = 49,
    dmg_max1 = 92
WHERE entry = 12773;

-- Huge Thorium Battleaxe
UPDATE world . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 151,
    dmg_max1 = 227
WHERE entry = 12775;

-- Arcanite Champion
UPDATE world . item_template
SET  delay = 3800,
    dmg_min1 = 153,
    dmg_max1 = 256
WHERE entry = 12790;

-- Hammer of the Titans
UPDATE world . item_template
SET dmg_min1 = 153,
    dmg_max1 = 256,
    stat_type1 = 7,
    stat_value1 = 35
WHERE entry = 12796;

-- Blackfury
UPDATE world . item_template
SET  delay = 3800,
    dmg_min1 = 165,
    dmg_max1 = 280
WHERE entry = 19167;

-- Darkspear
UPDATE world . item_template
SET quality = 4, 
    delay = 3800,
    dmg_min1 = 165,
    dmg_max1 = 280,
    stat_type1 = 3,
    stat_value1 = 35
WHERE entry = 12802;

-- Heartseeker
UPDATE world . item_template
SET quality = 4, 
    delay = 1800,
    dmg_min1 = 59,
    dmg_max1 = 100
WHERE entry = 12783;

