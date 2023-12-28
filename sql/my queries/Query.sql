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
SET effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 2
WHERE entry = 18731;

UPDATE mangos . spell_template 
SET effectApplyAuraName2 = 85,
    effectBaseDice2 = 1,
    effectBasePoints2 = 5
WHERE entry = 18743;

UPDATE mangos . spell_template 
SET effectApplyAuraName2 = 85,
    effectBaseDice2 = 1,
    effectBasePoints2 = 8
WHERE entry = 18744;

UPDATE mangos . spell_template 
SET effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 11
WHERE entry = 18745;

UPDATE mangos . spell_template 
SET effectApplyAuraName2 = 85, 
    effectBaseDice2 = 1,
    effectBasePoints2 = 14
WHERE entry = 18746;

-- Fel Domination
UPDATE mangos . spell_template 
SET recoveryTime = 60000
WHERE entry = 18708;

-- Soul Link
UPDATE mangos . spell_template 
SET effectBasePoints1 = 10,
    effectBasePoints2 = 20 
WHERE entry = 25228;

-- Master Demonologist (Felhunter)
UPDATE mangos . spell_template 
SET effectApplyAuraName1 = 85, 
    effectBasePoints1 = 10,
WHERE entry = 23762;

UPDATE mangos . spell_template 
SET effectApplyAuraName1 = 85, 
    effectBasePoints1 = 20,
WHERE entry = 23837;

UPDATE mangos . spell_template 
SET effectApplyAuraName1 = 85, 
    effectBasePoints1 = 30,
WHERE entry = 23838;

UPDATE mangos . spell_template 
SET effectApplyAuraName1 = 85, 
    effectBasePoints1 = 40,
WHERE entry = 23839;

UPDATE mangos . spell_template 
SET effectApplyAuraName1 = 85, 
    effectBasePoints1 = 50,
WHERE entry = 23840;

-- Items
-- Delete the WDB folder in your client directory.

-- Sul'thraze the Lasher
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 146,
    dmg_max1 = 206
WHERE entry = 9372;

-- Helm of Fire
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 22,
    stat_type2 = 4,
    stat_value2 = 25,
    stat_type2 = 7,
    stat_value2 = 22,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 8348;

-- Runic Leather Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 15094;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 15090;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 15095;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 15091;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 15096;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 15093;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 15092;

-- Chimeric Set
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 17,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 17997, -- +40 Nature Damage
    spelltrigger_1 = 1,
    spellid_2 = 17838, -- +40 Arcane Damage
    spelltrigger_2 = 1,
    arcane_res = 0,
    nature_res = 0
WHERE entry = 15075;

UPDATE mangos . item_template
SET quality = 3,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 17990, -- +27 Nature Damage
    spelltrigger_1 = 1,
    spellid_2 = 17824, -- +27 Arcane Damage
    spelltrigger_2 = 1,
    arcane_res = 0,
    nature_res = 0
WHERE entry = 15072;

UPDATE mangos . item_template
SET quality = 3,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 17988, -- +24 Nature Damage
    spelltrigger_1 = 1,
    spellid_2 = 17822, -- +24 Arcane Damage
    spelltrigger_2 = 1,
    arcane_res = 0,
    nature_res = 0
WHERE entry = 15073;

UPDATE mangos . item_template
SET quality = 3,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 17988, -- +24 Nature Damage
    spelltrigger_1 = 1,
    spellid_2 = 17822, -- +24 Arcane Damage
    spelltrigger_2 = 1,
    arcane_res = 0,
    nature_res = 0
WHERE entry = 15074;

-- Warbear Harness
UPDATE mangos . item_template
SET required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 300
WHERE entry = 15064;

-- Warbear Woolies
UPDATE mangos . item_template
SET required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 250,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 15065;

-- Frostsaber Set
UPDATE mangos . item_template
SET quality = 3,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 15071;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    spellid_1 = 18382, -- +2% Spell Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 15068;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    spellid_1 = 23729, -- +2% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 15069;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 15070;

-- Ironfeather Set
UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18042, -- +68 Healing
    spelltrigger_1 = 1
WHERE entry = 15066;

UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18032, -- +42 Healing
    spelltrigger_1 = 1
WHERE entry = 15067;

-- Guardian Set
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4256;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5962;

UPDATE mangos . item_template
SET quality = 2,
    stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 8,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5966;

UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5965;

UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4258;

UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4260;

-- Gauntlets of the Sea
UPDATE mangos . item_template
SET required_level = 55,
    quality = 3,
    stat_type1 = 6,
    stat_value1 = 25,
    spellid_2 = 18033, -- +46 Healing
    spelltrigger_2 = 1
WHERE entry = 8346;

-- Living Armor Set
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18045, -- +75 Healing
    spelltrigger_1 = 1
WHERE entry = 15059;

UPDATE mangos . item_template
SET spellid_1 = 18035, -- +51 Healing
    spelltrigger_1 = 1
WHERE entry = 15061;

UPDATE mangos . item_template
SET spellid_1 = 18033, -- +46 Healing
    spelltrigger_1 = 1
WHERE entry = 15060;

-- Stormshroud Armor Set
UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 40
WHERE entry = 15056;

UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 35
WHERE entry = 15057;

UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 27
WHERE entry = 15058;

UPDATE mangos . item_template
SET bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 27
WHERE entry = 21278;

-- Heavy Scorpid Armor Set
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15078;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 10,
    stat_type2 = 6,
    stat_value2 = 15,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 15076;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 6,
    stat_value2 = 13,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15079;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15081;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 15080;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 10,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 15082;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 10,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15077;

-- Wicked Leather Set
UPDATE mangos . item_template
SET quality = 3, 
    stat_type1 = 3,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 5,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15083;

UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15085;

UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15087;

UPDATE mangos . item_template
    SET quality = 3,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15086;

UPDATE mangos . item_template
    SET quality = 3,
    stat_type2 = 7,
    stat_value2 = 5,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 15088;

UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 7,
    stat_value2 = 5,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 15084;

-- Gloves of Spell Mastery
UPDATE mangos . item_template
SET spellid_2 = 18049, -- +26 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 14146;

-- Belt of the Archmage
UPDATE mangos . item_template
SET spellid_2 = 18049, -- +26 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18405;

-- Argent Boots
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 197, -- Tailoring
    required_skill_rank = 300,
    spellid_1 = 14127, -- +28 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 19056;

-- Argent Shoulders
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 197, -- Tailoring
    required_skill_rank = 300,
    spellid_1 = 18052, -- +34 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 19059;

-- Runecloth Armor Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 13857;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13865;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13867;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13856;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13864;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 13866;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13860;

-- Mooncloth Armor Set
UPDATE mangos . item_template
SET spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 15802;

UPDATE mangos . item_template
SET spellid_1 = 18035, -- +51 Healing
    spelltrigger_1 = 1
WHERE entry = 18486;

UPDATE mangos . item_template
SET spellid_1 = 18033, -- +46 Healing
    spelltrigger_1 = 1
WHERE entry = 14137;

UPDATE mangos . item_template
SET spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 14140;

UPDATE mangos . item_template
SET spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 14139;

UPDATE mangos . item_template
SET spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 18409;

-- Ghostweave Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 18014, -- +34 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 14141;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 18014, -- +34 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 14144;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 14794, -- +24 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 14142;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 14794, -- +24 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 14143;

-- Cindercloth Set
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 7,
    stat_value3 = 7
WHERE entry = 10044;

UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 9,
    spellid_1 = 17873, -- +36 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 14042;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 7,
    stat_value3 = 7,
    spellid_1 = 9298, -- +21 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 14043;

UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 6,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 9,
    spellid_1 = 17873, -- +36 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 14045;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 7,
    stat_value3 = 7,
    spellid_1 = 9298, -- +21 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 14044;

-- Frostweave Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17896, -- +34 Frost Damage
    spelltrigger_1 = 1
WHERE entry = 13871;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17890, -- +24 Frost Damage
    spelltrigger_1 = 1
WHERE entry = 13870;

-- Ironforge Breastplaste 
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 6731;

-- Truesilver Breastplate
UPDATE mangos . item_template
SET spellid_1 = 13667, -- +2% Parry
    spelltrigger_1 = 1,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 7939;

-- Truesilver Gauntlets
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7938;

-- Demon Forged Breastplate
UPDATE mangos . item_template
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
UPDATE mangos . item_template
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
UPDATE mangos . item_template
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

-- Green Iron Set 
UPDATE mangos . item_template
    SET spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3484;

UPDATE mangos . item_template
    SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3844;

UPDATE mangos . item_template
    SET spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3842;

UPDATE mangos . item_template
    SET spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3485;

UPDATE mangos . item_template
    SET spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3840;

-- Silver Bronzed Set
UPDATE mangos . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3482;

UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 6,
    stat_value3 = 10,
    stat_type4 = 5,
    stat_value4 = 10
WHERE entry = 2869;

UPDATE mangos . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3483;

UPDATE mangos . item_template
SET stat_type4 = 5,
    stat_value4 = 6
WHERE entry = 10423;

UPDATE mangos . item_template
SET stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3481;

-- Golden Scale Set
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 8
WHERE entry = 3847;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 10
WHERE entry = 3837;

UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 6,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 3845;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 9366;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 3843;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 3841;

-- Heavy Mithril Set
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 4,
    stat_value3 = 13
WHERE entry = 7933;

UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 4,
    stat_value3 = 20
WHERE entry = 7930;

UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 4,
    stat_value3 = 13
WHERE entry = 7919;

UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 4,
    stat_value3 = 13
WHERE entry = 7918;

UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 4,
    stat_value3 = 20
WHERE entry = 7921;

UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 4,
    stat_value3 = 13
WHERE entry = 7934;

-- Ornate Mithril Set
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7936;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12
WHERE entry = 7935;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7927;

UPDATE mangos . item_template
SET stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10
WHERE entry = 7926;

UPDATE mangos . item_template
SET stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 7937;

UPDATE mangos . item_template
SET stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 7928;

-- Radiant Armor Set (BOP)
UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 386,
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

UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 570,
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

UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 507,
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

UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 386,
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

UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 285,
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

UPDATE mangos . item_template
SET subclass = 4,
    quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 456,
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
UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 7,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12409;

UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 15,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12405;

UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12406;

UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12408;

UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 12,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12410;

UPDATE mangos . item_template
SET required_level = 55,
    stat_type1 = 4,
    stat_value1 = 12,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 0,
    fire_res = 0,
    nature_res = 0,
    frost_res = 0,
    shadow_res = 0
WHERE entry = 12414;

-- Imperial Plate Set
UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12426;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12422;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12427;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12424;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12425;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12429;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12428;

-- Enchanted Thorium Set
UPDATE mangos . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 13670, -- +2% Dodge
    spelltrigger_3 = 1
WHERE entry = 12620;

UPDATE mangos . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 20,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 12618;

UPDATE mangos . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 20,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 12619;

-- Runic Armor Set
UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12611;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12613;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12612;

UPDATE mangos . item_template
    SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 17,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12614;

UPDATE mangos . item_template
SET quality = 3,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    fire_res = 0,
    nature_res = 0
WHERE entry = 12610;

-- Darkrune Set
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 18,
    stat_type2 = 4,
    stat_value2 = 27,
    stat_type3 = 7,
    stat_value3 = 15
WHERE entry = 20550;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 14,
    stat_type2 = 4,
    stat_value2 = 22,
    stat_type3 = 7,
    stat_value3 = 10
WHERE entry = 20549;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 16,
    stat_type2 = 4,
    stat_value2 = 25,
    stat_type3 = 7,
    stat_value3 = 12
WHERE entry = 20551;

-- The Darksoul Set
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 24,
    stat_type2 = 7,
    stat_value2 = 40,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 19693;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 20,
    stat_type2 = 7,
    stat_value2 = 33,
    spellid_2 = 13667, -- 2% Parry
    spelltrigger_2 = 1
WHERE entry = 19694;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 7,
    stat_value2 = 30,
    spellid_2 = 21471, -- 2% Shield Block
    spelltrigger_2 = 1
WHERE entry = 19695;

-- Bloodsoul Set
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 30,
    stat_type2 = 4,
    stat_value2 = 12,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 19690;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 25,
    stat_type2 = 4,
    stat_value2 = 10,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 19691;

UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 22,
    stat_type2 = 4,
    stat_value2 = 9,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 19692;

-- Invulnerable Mail
UPDATE mangos . item_template
SET subclass = 4,
    required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    armor = 900,
    bonding = 1,
    stat_type1 = 4,
    stat_value1 = 25,
    stat_type2 = 7,
    stat_value2 = 50,
    spellid_3 = 21423, -- +25 Defense
    spelltrigger_3 = 1,
    arcane_res = 10,
    fire_res = 10,
    nature_res = 10,
    frost_res = 10,
    shadow_res = 10
WHERE entry = 12641;

-- Corruption
UPDATE mangos . item_template
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
UPDATE mangos . item_template
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

-- Serenity
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    delay = 1800,
    dmg_min1 = 55,
    dmg_max1 = 90,
    spellid_2 = 26228, -- +121 Healing
    spelltrigger_2 = 1,
    spellid_3 = 21626, -- 6 MP/5
    spelltrigger_3 = 1
WHERE entry = 12781;

-- Black Amnesty
UPDATE mangos . item_template
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

-- Blackguard 
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    dmg_min1 = 80,
    dmg_max1 = 120
WHERE entry = 19168;

-- Frostguard
UPDATE mangos . item_template
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
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 1800,
    dmg_min1 = 71,
    dmg_max1 = 101,
    spellid_1 = 26158, -- +60 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22383;

-- Nightfall
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    bonding = 1,
    delay = 3800,
    dmg_min1 = 225,
    dmg_max1 = 345
WHERE entry = 19169;

-- Annihilator
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    quality = 4,
    bonding = 1,
    delay = 2900,
    dmg_min1 = 125,
    dmg_max1 = 190
WHERE entry = 12798;

-- Copper Battle Axe
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 35,
    dmg_max1 = 48
WHERE entry = 3488;

-- Thick War Axe
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 11,
    dmg_max1 = 27
WHERE entry = 3489;

-- Heavy Copper Broadsword
UPDATE mangos . item_template
SET quality = 3,
    delay = 3400,
    dmg_min1 = 47,
    dmg_max1 = 70
WHERE entry = 3487;

-- Big Bronze Knife
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 17,
    dmg_max1 = 33
WHERE entry = 3848;

-- Pearl-handled Dagger
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 19,
    dmg_max1 = 37
WHERE entry = 5540;

-- Deadly Bronze Poniard
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 21,
    dmg_max1 = 39
WHERE entry = 3490;

-- Heavy Bronze Mace
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 30,
    dmg_max1 = 57
WHERE entry = 3491;

-- Iridescent Hammer
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 19,
    dmg_max1 = 37
WHERE entry = 5541;

-- Solid Iron Maul
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    armor = 300,
    dmg_min1 = 71,
    dmg_max1 = 111,
    spellid_1 = 13667, -- +2% Parry
    spelltrigger_1 = 1,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 3851;

-- Mighty Iron Hammer
UPDATE mangos . item_template
SET quality = 3,
    delay = 2700,
    dmg_min1 = 35,
    dmg_max1 = 67
WHERE entry = 3492;

-- Hardened Iron Shortsword
UPDATE mangos . item_template
SET quality = 3,
    delay = 2700,
    dmg_min1 = 35,
    dmg_max1 = 67
WHERE entry = 3849;

-- Golden Iron Destroyer
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 88,
    dmg_max1 = 132
WHERE entry = 3852;

-- Jade Serpentblade
UPDATE mangos . item_template
SET quality = 3,
    delay = 2700,
    dmg_min1 = 52,
    dmg_max1 = 82
WHERE entry = 3850;

-- Moonsteel Broadsword
UPDATE mangos . item_template
SET quality = 3,
    delay = 3300,
    dmg_min1 = 80,
    dmg_max1 = 120
WHERE entry = 3853;

-- Massive Iron Axe
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 86,
    dmg_max1 = 129
WHERE entry = 3855;

-- Blue Glittering Axe
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 15
WHERE entry = 7942;

-- Wicked Mithril Blade
UPDATE mangos . item_template
SET quality = 3,
    delay = 1800,
    dmg_min1 = 42,
    dmg_max1 = 72,
    spellid_1 = 13667, -- +2% Parry
    spelltrigger_1 = 1
WHERE entry = 7943;

-- Reforged Blade of Heroes
UPDATE mangos . item_template
SET required_level = 50,
    quality = 4,
    delay = 1700,
    dmg_min1 = 51,
    dmg_max1 = 76,
    spellid_1 = 15602, -- +50 Attack Power for 30s
    spelltrigger_1 = 2
WHERE entry = 9718;

-- Edge of Winter
UPDATE mangos . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 44,
    dmg_max1 = 80
WHERE entry = 17704;

-- Searing Golden Blade
UPDATE mangos . item_template
SET quality = 3,
    delay = 2000,
    dmg_min1 = 40,
    dmg_max1 = 75
WHERE entry = 12260;

-- Frost Tiger Blade
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 110,
    dmg_max1 = 165
WHERE entry = 3854;

-- Shadow Crescent Axe
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 115,
    dmg_max1 = 175,
    spellid_2 = 9081,
    spelltrigger_2 = 2
WHERE entry = 3856;

-- Big Black Mace
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 5,
    spellid_1 = 9314, -- +24 Healing
    spelltrigger_1 = 1
WHERE entry = 7945;

-- The Shatterer
UPDATE mangos . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 45,
    dmg_max1 = 85
WHERE entry = 7954;

-- Dazzling Mithril Rapier
UPDATE mangos . item_template
SET quality = 3,
    delay = 2500,
    dmg_min1 = 55,
    dmg_max1 = 108
WHERE entry = 7944;

-- Phantom Blade
UPDATE mangos . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 72,
    dmg_max1 = 132
WHERE entry = 7961;

-- Runed Mithril Hammer
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    spellid_1 = 9316, -- +29 Healing
    spelltrigger_1 = 1
WHERE entry = 7946;

-- Blight
UPDATE mangos . item_template
SET quality = 4,
    delay = 3800,
    dmg_min1 = 145,
    dmg_max1 = 220,
    spellid_2 = 26153, -- +140 Feral attack Power
    spelltrigger_2 = 1
WHERE entry = 7959;

-- Truesilver Champion
UPDATE mangos . item_template
SET quality = 4,
    delay = 3400,
    dmg_min1 = 145,
    dmg_max1 = 220
WHERE entry = 7960;

-- Blazing Rapier
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12777;

-- Enchanted Battlehammer
UPDATE mangos . item_template
SET quality = 4,
    delay = 3600,
    dmg_min1 = 166,
    dmg_max1 = 250,
    spellid_3 = 15715, -- +25 Spell Damage
    spelltrigger_3 = 1
WHERE entry = 12776;

-- Volcanic Hammer
UPDATE mangos . item_template
SET quality = 3,
    delay = 2800,
    dmg_min1 = 75,
    dmg_max1 = 145
WHERE entry = 12792;

-- Ornate Thorium Handaxe
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 49,
    dmg_max1 = 92
WHERE entry = 12773;

-- Huge Thorium Battleaxe
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 151,
    dmg_max1 = 227
WHERE entry = 12775;

-- Arcanite Champion
UPDATE mangos . item_template
SET  delay = 3800,
    dmg_min1 = 153,
    dmg_max1 = 256
WHERE entry = 12790;

-- Hammer of the Titans
UPDATE mangos . item_template
SET dmg_min1 = 153,
    dmg_max1 = 256,
    stat_type1 = 7,
    stat_value1 = 35
WHERE entry = 12796;

-- Blackfury
UPDATE mangos . item_template
SET  delay = 3800,
    dmg_min1 = 165,
    dmg_max1 = 280
WHERE entry = 19167;

-- Darkspear
UPDATE mangos . item_template
SET quality = 4, 
    delay = 3800,
    dmg_min1 = 165,
    dmg_max1 = 280,
    stat_type1 = 3,
    stat_value1 = 35
WHERE entry = 12802;

-- Heartseeker
UPDATE mangos . item_template
SET quality = 4, 
    delay = 1800,
    dmg_min1 = 59,
    dmg_max1 = 100
WHERE entry = 12783;

-- Masterwork Stormhammer
UPDATE mangos . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 65,
    dmg_max1 = 121
WHERE entry = 12794;

-- Dark Iron Reaver
UPDATE mangos . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 104,
    dmg_max1 = 193
WHERE entry = 17015;

-- Dark Iron Destroyer
UPDATE mangos . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 104,
    dmg_max1 = 193
WHERE entry = 17016;

-- Ebon Hand
UPDATE mangos . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 104,
    dmg_max1 = 193
WHERE entry = 19170;

-- Ankh of Life
UPDATE mangos . item_template
SET spellid_1 = 10928 -- Heals the target of 510 damage over 15 sec.
WHERE entry = 1713;



