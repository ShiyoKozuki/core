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