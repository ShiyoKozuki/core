-- Talents
UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20925;
UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20927;
UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20928;

UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20127;
UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20130;
UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20135;
UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20136;
UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20137;
UPDATE mangos . spell_proc_event SET procEx = 3 WHERE entry = 20127;

UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20189;
UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20189;
UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20189;
UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20189;
UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20189;

UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20192;
UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20192;
UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20192;
UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20192;
UPDATE mangos . spell_template SET effectBasePoints2 = 1 WHERE entry = 20192;
UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20192;

UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20193;
UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20193;
UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20193;
UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20193;
UPDATE mangos . spell_template SET effectBasePoints2 = 2 WHERE entry = 20193;
UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20193;

-- Improved Moonfire
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=16821 AND `build`=5875;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=16821 AND `build`=4222;
INSERT INTO `mangos`.`spell_template` (`entry`, `build`, `attributes`, `castingTimeIndex`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectItemType1`, `effectItemType2`, `effectMiscValue1`, `effectMiscValue2`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `dmgMultiplier1`, `dmgMultiplier2`) VALUES (16821, 4222, 464, 1, 101, 21, 1, -1, 6, 1, 1, 1, 1, 3, 1, 1, -1, 1, 1, 57, 2, 2, 7, 8, 225, 'Improved Moonfire', 983070, 'Rank 2', 983070, 'Increases the damage and critical strike chance of your Moonfire spell by $s1%.', 983054, 983052, 7, 1, 1);
UPDATE `mangos`.`spell_template` SET `nameSubtext`='Rank 1' WHERE  `entry`=16821 AND `build`=4222;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1 WHERE  `entry`=16821 AND `build`=4222;


UPDATE mangos . spell_template 
SET effect2 = 0, 
    effect3 = 0, 
    effectApplyAuraName1 = 57,
    effectApplyAuraName2 = 0,
    effectApplyAuraName3 = 0,
    effectBasePoints2 = 0,
    effectBasePoints3 = 0
WHERE entry = 16822;

UPDATE mangos . spell_template 
SET effect2 = 0, 
    effect3 = 0, 
    effectApplyAuraName1 = 57,
    effectApplyAuraName2 = 0,
    effectApplyAuraName3 = 0,
    effectBasePoints2 = 0,
    effectBasePoints3 = 0
WHERE entry = 16823;

UPDATE mangos . spell_template 
SET effect2 = 0, 
    effect3 = 0, 
    effectApplyAuraName1 = 57,
    effectApplyAuraName2 = 0,
    effectApplyAuraName3 = 0,
    effectBasePoints2 = 0,
    effectBasePoints3 = 0
WHERE entry = 16824;

UPDATE mangos . spell_template 
SET effect2 = 0, 
    effect3 = 0, 
    effectApplyAuraName1 = 57,
    effectApplyAuraName2 = 0,
    effectApplyAuraName3 = 0,
    effectBasePoints2 = 0,
    effectBasePoints3 = 0
WHERE entry = 16825;

-- Moonglow
UPDATE mangos . spell_template 
SET effectBasePoints1 = -11
WHERE entry = 16845;

UPDATE mangos . spell_template 
SET effectBasePoints1 = -21
WHERE entry = 16846;

UPDATE mangos . spell_template 
SET effectBasePoints1 = -31
WHERE entry = 16847;

-- Vile Poisons
UPDATE mangos . spell_template 
SET effectBasePoints1 = 7,
    effectBasePoints2 = 7 
WHERE entry = 16513;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 15, 
    effectBasePoints2 = 15 
WHERE entry = 16514;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 23, 
    effectBasePoints2 = 23 
WHERE entry = 16515;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 31,
    effectBasePoints2 = 31 
WHERE entry = 16719;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 39,
    effectBasePoints2 = 39 
WHERE entry = 16720;

-- Deadliness
UPDATE mangos . spell_template 
SET effectBasePoints1 = 4
WHERE entry = 30902;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 9
WHERE entry = 30903;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 14
WHERE entry = 30904;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 19
WHERE entry = 30905;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 24
WHERE entry = 30906;

-- Skill Line Abiity
-- Improved Backstab
UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13733;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13865;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13866;

-- Dagger Spec
UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13706;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13804;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13805;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13806;

UPDATE mangos . skill_line_ability
SET skill_id = 253
WHERE spell_id = 13807;

-- Improved Kidney Shot
UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14174;

UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14175;

UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14176;

-- Improved Slice n Dice
UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14165;

UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14166;

UPDATE mangos . skill_line_ability
SET skill_id = 38
WHERE spell_id = 14167;

-- Demonic Sacrifice
UPDATE mangos . skill_line_ability
SET skill_id = 355
WHERE spell_id = 18788;

-- Dark Pact
UPDATE mangos . skill_line_ability
SET skill_id = 593
WHERE spell_id = 18220;

UPDATE mangos . skill_line_ability
SET skill_id = 593
WHERE spell_id = 18937;

UPDATE mangos . skill_line_ability
SET skill_id = 593
WHERE spell_id = 18938;

-- Fel Intellect
UPDATE mangos . spell_template 
SET effect2 = 6,
    effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 2
WHERE entry = 18731;

UPDATE mangos . spell_template 
SET effect2 = 6,
    effectApplyAuraName2 = 85,
    effectBaseDice2 = 1,
    effectBasePoints2 = 5
WHERE entry = 18743;

UPDATE mangos . spell_template 
SET effect2 = 6,
    effectApplyAuraName2 = 85,
    effectBaseDice2 = 1,
    effectBasePoints2 = 8
WHERE entry = 18744;

UPDATE mangos . spell_template 
SET effect2 = 6,
    effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 11
WHERE entry = 18745;

UPDATE mangos . spell_template 
SET effect2 = 6,
    effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 14
WHERE entry = 18746;

-- Fel Domination
UPDATE mangos . spell_template 
SET recoveryTime = 60000
WHERE entry = 18708;

-- Soul Link
UPDATE mangos . spell_template 
SET effectBasePoints1 = 9,
    effectBasePoints2 = 19 
WHERE entry = 25228;

-- Searing Light
UPDATE mangos . spell_template 
SET effectBasePoints1 = 9,
    effectBasePoints2 = 9
WHERE entry = 14909;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 19,
    effectBasePoints2 = 19
WHERE entry = 15017;