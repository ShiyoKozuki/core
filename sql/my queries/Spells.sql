-- Spells

-- Racials

-- Hardiness
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=4222;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=4878;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=20573 AND `build`=5086;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=1 AND `spell`=20573;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=3 AND `spell`=20573;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=4 AND `spell`=20573;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=7 AND `spell`=20573;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=2 AND `class`=9 AND `spell`=20573;

-- Will of the Forsaken
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4222;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4449;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4544;
DELETE FROM `mangos`.`spell_template` WHERE  `entry`=7744 AND `build`=4695;

DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=1 AND `spell`=7744;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=4 AND `spell`=7744;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=5 AND `spell`=7744;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=8 AND `spell`=7744;
DELETE FROM `mangos`.`playercreateinfo_spell` WHERE  `race`=5 AND `class`=9 AND `spell`=7744;

-- Reforge Sword of Heroes
INSERT INTO `mangos`.`spell_template` (`entry`, `build`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) VALUES (30000, 5302, 1, 101, 56, 56, 9, 3, 1, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 99, 5800, 83, 50, 'Reforged Blade of Heroes', 2031678, 2031662, 'Increases attack power by $s1 for $d.', 2031678, 'Attack power increased by $s1.', 2031678, 133, 1500, 4, -1, 1, 1, 1);
