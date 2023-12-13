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

-- Mantle of the Second War
UPDATE world . item_template
SET stat_type3 = 4,
    stat_value3 = 8,
    stat_type4 = 5,
    stat_value4 = 8
WHERE entry = 210773;

-- Truesilver Breastplate
UPDATE world . item_template
SET stat_type2 = 13,
    stat_value2 = 2,
    stat_type3 = 14,
    stat_value3 = 2
WHERE entry = 7939;

-- Truesilver Gauntlets
UPDATE world . item_template
SET stat_type3 = 19,
    stat_value3 = 2,
WHERE entry = 7938;

-- Demon Forged Breastplate
UPDATE world . item_template
SET stat_type2 = 7,
    stat_value2 = 13,
    stat_type3 = 5,
    stat_value3 = 13,
    stat_type4 = 12,
    stat_value4 = 4,
    stat_type5 = 42,
    stat_value5 = 10
WHERE entry = 12628;

-- Fiery Plate Gauntlets
UPDATE world . item_template
SET stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 5,
    stat_value2 = 20,
    stat_type3 = 12,
    stat_value3 = 8,
    stat_type4 = 42,
    stat_value4 = 18
WHERE entry = 12631;

-- Helm of the Great Chief (Plate and BOP)
UPDATE world . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 15,
    stat_type4 = 12,
    stat_value4 = 10,
    stat_type5 = 43,
    stat_value5 = 5,
WHERE entry = 12636;

-- Silver Bronzed Set
UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3482;

UPDATE world . item_template
SET quality = 3,
    stat_type3 = 6,
    stat_value3 = 10
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
    stat_type4 = 43,
    stat_value4 = 2
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
    stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 9968;

UPDATE world . item_template
SET quality = 3,
    stat_type2 = 3,
    stat_value2 = 10,
    stat_type3 = 4,
    stat_value3 = 10
WHERE entry = 9959;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 5,
    stat_type3 = 4,
    stat_value3 = 5
WHERE entry = 9928;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 5,
    stat_type3 = 4,
    stat_value3 = 5
WHERE entry = 9926;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 7,
    stat_type3 = 4,
    stat_value3 = 7
WHERE entry = 9933;

UPDATE world . item_template
SET stat_type2 = 3,
    stat_value2 = 6,
    stat_type3 = 4,
    stat_value3 = 6
WHERE entry = 9970;

-- Ornate Mithril Set
UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7936;

UPDATE world . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12
WHERE entry = 9972;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 9950;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10
WHERE entry = 9945;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 9980;

UPDATE world . item_template
SET stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 9952;

-- Radiant Armor Set (BOP)
UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12419;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12415;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12420;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12418;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12416;

UPDATE world . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    stat_type3 = 41,
    stat_value3 = 40,
    stat_type4 = 43,
    stat_value4 = 1
WHERE entry = 12417;


