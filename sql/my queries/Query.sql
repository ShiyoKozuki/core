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

-- Silver Bronzed Set
UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3482;

UPDATE world . item_template
SET stat_type4 = 5,
    stat_value4 = 4
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
SET stat_type3 = 5,
    stat_value3 = 6
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




