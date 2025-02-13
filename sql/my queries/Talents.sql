-- Talents

-- Precision (Paladin)
    UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20189;
    UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20189;
    UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20189;
    UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20189;
    UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20189;
    UPDATE mangos . spell_template SET description = 'Increases your chance to hit with melee weapons and spells by $s1%.' WHERE  entry = 20189;

    UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20192;
    UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20192;
    UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20192;
    UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20192;
    UPDATE mangos . spell_template SET effectBasePoints2 = 1 WHERE entry = 20192;
    UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20192;
    UPDATE mangos . spell_template SET description = 'Increases your chance to hit with melee weapons and spells by $s1%.' WHERE  entry = 20192;

    UPDATE mangos . spell_template SET effect2 = 6 WHERE entry = 20193;
    UPDATE mangos . spell_template SET effectImplicitTargetA2 = 1 WHERE entry = 20193;
    UPDATE mangos . spell_template SET effectDieSides2 = 1 WHERE entry = 20193;
    UPDATE mangos . spell_template SET effectBaseDice2 = 1 WHERE entry = 20193;
    UPDATE mangos . spell_template SET effectBasePoints2 = 2 WHERE entry = 20193;
    UPDATE mangos . spell_template SET effectApplyAuraName2 = 55 WHERE entry = 20193;
    UPDATE mangos . spell_template SET description = 'Increases your chance to hit with melee weapons and spells by $s1%.' WHERE  entry = 20193;

-- Improved Devotion Aura TODO: Doesn't work.
    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=465;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=10290;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=643;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=10291;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=1032;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=10292;

    UPDATE `mangos`.`spell_template` SET `effect2`=35, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=118, `effectItemType2`=64 
    WHERE  `entry`=10293;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=64, `effectMiscValue2`=8, 
    `description`='Increases the armor bonus of your Devotion Aura by $s1% and increases the amount healed on any target affected by $s2%.' WHERE  `entry`=20138;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=3, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=64, `effectMiscValue2`=8, 
    `description`='Increases the armor bonus of your Devotion Aura by $s1% and increases the amount healed on any target affected by $s2%.' WHERE  `entry`=20139;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=64, `effectMiscValue2`=8, 
    `description`='Increases the armor bonus of your Devotion Aura by $s1% and increases the amount healed on any target affected by $s2%.' WHERE  `entry`=20140;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=7, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=64, `effectMiscValue2`=8, 
    `description`='Increases the armor bonus of your Devotion Aura by $s1% and increases the amount healed on any target affected by $s2%.' WHERE  `entry`=20141;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=9, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=64, `effectMiscValue2`=8, 
    `description`='Increases the armor bonus of your Devotion Aura by $s1% and increases the amount healed on any target affected by $s2%.' WHERE  `entry`=20142;

-- Redoubt
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20127;
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20130;
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20135;
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20136;
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20137;

    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20127; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20130; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20135; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20136; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20137; -- Proc on hit/crit taken and block (was on crit taken)

    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20128s1% after being hit or blocking($h% chance).  Lasts $20128d or $20128n blocks.' WHERE  `entry`=20127;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20131s1% after being hit or blocking($h% chance).  Lasts $20131d or $20131n blocks.' WHERE  `entry`=20130;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20132s1% after being hit or blocking($h% chance).  Lasts $20132d or $20132n blocks.' WHERE  `entry`=20135;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20133s1% after being hit or blocking($h% chance).  Lasts $20133d or $20133n blocks.' WHERE  `entry`=20136;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20134s1% after being hit or blocking($h% chance).  Lasts $20134d or $20134n blocks.' WHERE  `entry`=20137;

-- Anticipation (Paladin)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=4 WHERE  `entry`=20096;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=20097;

-- Holy Shield
    UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20925;
    UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20927;
    UPDATE mangos . spell_template SET procCharges = 100 WHERE entry = 20928;

-- Reckoning
    UPDATE mangos . spell_template SET procChance = 2 WHERE entry = 20177;
    UPDATE mangos . spell_template SET procChance = 4 WHERE entry = 20179;
    UPDATE mangos . spell_template SET procChance = 6 WHERE entry = 20181;
    UPDATE mangos . spell_template SET procChance = 8 WHERE entry = 20180;
    UPDATE mangos . spell_template SET procChance = 10 WHERE entry = 20182;

    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20177; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20179; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20181; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20180; -- Proc on hit/crit taken and block (was on crit taken)
    UPDATE mangos . spell_proc_event SET procEx = 67 WHERE entry = 20182; -- Proc on hit/crit taken and block (was on crit taken)

    UPDATE `mangos`.`spell_template` SET `description`='Gives you a $h% chance to gain an extra attack after being hit or blocking.' WHERE  `entry`=20177;
    UPDATE `mangos`.`spell_template` SET `description`='Gives you a $h% chance to gain an extra attack after being hit or blocking.' WHERE  `entry`=20179;
    UPDATE `mangos`.`spell_template` SET `description`='Gives you a $h% chance to gain an extra attack after being hit or blocking.' WHERE  `entry`=20181;
    UPDATE `mangos`.`spell_template` SET `description`='Gives you a $h% chance to gain an extra attack after being hit or blocking.' WHERE  `entry`=20180;
    UPDATE `mangos`.`spell_template` SET `description`='Gives you a $h% chance to gain an extra attack after being hit or blocking.' WHERE  `entry`=20182;

-- One handed weapon spec (Paladin)
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=3 WHERE  `entry`=20196;
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=3 WHERE  `entry`=20197;
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=3 WHERE  `entry`=20198;
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=3 WHERE  `entry`=20199;
    UPDATE `mangos`.`spell_template` SET `effectMiscValue1`=3 WHERE  `entry`=20200;

    UPDATE `mangos`.`spell_template` SET `description`='Increases physical and holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20196;
    UPDATE `mangos`.`spell_template` SET `description`='Increases physical and holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20197;
    UPDATE `mangos`.`spell_template` SET `description`='Increases physical and holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20198;
    UPDATE `mangos`.`spell_template` SET `description`='Increases physical and holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20199;
    UPDATE `mangos`.`spell_template` SET `description`='Increases physical and holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20200;




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

-- Mace Spec (Warrior)
UPDATE `spell_template` SET `effect2`=30, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=199, `effectBonusCoefficient2`=-1, `effectImplicitTargetA2`=1, `effectMiscValue2`=1 WHERE `entry`=5530;

INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12284, 4222, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 983070, 'Rank 1', 7274526, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 983070, '', 983052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12284, 5302, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 2031678, 'Rank 1', 8323134, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 2031678, '', 2031676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12701, 4222, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 983070, 'Rank 2', 983070, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 983070, '', 983052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12701, 5302, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 2, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 2031678, 'Rank 2', 2031678, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 2031678, '', 2031676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12702, 4222, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 983070, 'Rank 3', 983070, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 983070, '', 983052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12702, 5302, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 3, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 2031678, 'Rank 3', 2031678, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 2031678, '', 2031676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12703, 4222, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 983070, 'Rank 4', 983070, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 983070, '', 983052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12703, 5302, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 4, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 2031678, 'Rank 4', 2031678, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 2031678, '', 2031676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12704, 4222, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 983070, 'Rank 5', 983070, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 983070, '', 983052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');
INSERT IGNORE `spell_template` (`entry`, `build`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`, `script_name`) VALUES (12704, 5302, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 6, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 48, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5530, 0, 0, 0, 0, 0, 0, 0, 367, 0, 50, 'Mace Specialization', 2031678, 'Rank 5', 2031678, 'Gives you a $h% chance to stun your target for $5530d with a Mace and generate 20 rage.', 2031678, '', 2031676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, '');


-- Polearm Spec TODO: Needs C++ code or it works for all weapons
-- UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=2, `effectApplyAuraName1`=9 WHERE  `entry`=12165;
-- UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=4, `effectApplyAuraName1`=9 WHERE  `entry`=12830;
-- UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=7, `effectApplyAuraName1`=9 WHERE  `entry`=12831;
-- UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=8, `effectApplyAuraName1`=9 WHERE  `entry`=12832;
-- UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=10, `effectApplyAuraName1`=9 WHERE  `entry`=12833;
