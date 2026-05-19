-- NEXT talent ID is 1727
-- Talents that grant a new spell (i.e. feral charge) need flags set to "1"
-- Talents

-- Mage
    -- Ice Barrier Now level 30 instead of 40. (Rank 1 Reduced spell level, absorbed amount and mana cost)
    UPDATE `mangos`.`spell_template` SET `baseLevel`=30, `spellLevel`=30, `manaCost`=245, `effectBasePoints1`=326 WHERE  `entry`=11426 AND `build`=5464;

    -- Flame Throwing (Added Living Bomb Meteor)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=51543801879 WHERE  `entry`=11100 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=51543801879 WHERE  `entry`=12353 AND `build`=5875;

    -- Burning Soul (Added Living Bomb and Meteor)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=51543801877 WHERE  `entry`=11083 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=51543801877 WHERE  `entry`=12351 AND `build`=5464;

    -- Fire Power (Added Living Bomb and Meteor)
        -- Damage
            UPDATE `mangos`.`spell_template` SET `effectItemType1`=34372321303 WHERE  entry IN (11124, 12378, 12398, 12399, 12400) AND `build`=5875;
        -- DOT damage
            UPDATE `mangos`.`spell_template` SET `effectItemType2`=51543801861 WHERE  entry IN (11124, 12378, 12398, 12399, 12400) AND `build`=5875;

    -- Critical Mass (Added Meteor)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=34372321303 WHERE  `entry` IN (11115, 11367, 11368) AND `build`=5875;

    -- Combustion (Added Meteor)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=34372321303 WHERE  `entry`=28682 AND `build`=5464;

    -- Elemental Precision (Added Flurry, Living Bomb, Meteor, and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=124566635255 WHERE  `entry` IN (29438, 29439, 29440);

    -- Clearcasting (Added Flurry, Living Bomb, Meteor, and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=124566641399 WHERE  `entry`=12536 AND `build`=5464;

    -- Shatter (Added Flurry, Living Bomb, Meteor, and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=124569260055 WHERE  entry IN (11170, 12982, 12983, 12984, 12985) AND `build`=5464;

    -- Frost Channeling (Added Flurry Summon Water Elemental and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=81604902912 WHERE  entry IN(11160, 12518, 12519) AND `build`=5464;

    -- Artic Reach (Added Flurry and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=73014444192 WHERE  entry IN(16757, 16758) AND `build`=5464;

    -- Piercing Ice (Added Flury and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4294968032, `effectItemType2`=68719476864 WHERE  entry IN(11151, 12952, 12953) AND `build`=4222;

    -- Ice Shards (Added Flurry and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=73014444768 WHERE  entry IN (11207, 12672, 15047, 15052, 15053) AND `build`=4222;

    -- Frostbite (Added Flurry)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4296015872 WHERE  entry IN(11071, 12496, 12497) AND `build`=5464;

-- Priest
-- Inner Focus (Add Penance)
UPDATE `mangos`.`spell_template` SET `effectItemType1`=29107945435, `effectItemType2`=29147545232 WHERE  `entry`=14751 AND `build`=5302;

-- Mental Agility (-2% -> -3% Per Rank)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-4 WHERE  `entry`=14520;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-7 WHERE  `entry`=14780;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-10 WHERE  `entry`=14781;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-13 WHERE  `entry`=14782;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-16 WHERE  `entry`=14783;

-- Improved Inner Fire (Inner Fire increases your Spell damage and healing by 3/6/9%)
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=588;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=7128;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=602;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=1006;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=10951;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=469024465, `effectMiscValue2`=8 WHERE `entry`=10952;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=2, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14747;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14770;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=8, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14771;

-- Force of Will (2 Ranks, 2% Spell Damage and 2% Spell Hit per rank)
    UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectImplicitTargetA1`=1, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=1, `effectBasePoints2`=1, `effectBasePoints3`=1, `effectApplyAuraName1`=55, `effectItemType1`=17185644688, `effectItemType2`=17185644688, `description`='Increases your spell damage by $s2% and the hit chance of your offensive spells by $s1%.' WHERE `entry`=18544;

    UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectImplicitTargetA1`=1, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=3, `effectBasePoints2`=3, `effectBasePoints3`=3, `effectApplyAuraName1`=55,`effectItemType1`=17185644688, `effectItemType2`=17185644688, `description`='Increases your spell damage by $s2% and the hit chance of your offensive spells by $s1%.' WHERE `entry`=18547;

-- Atonement (100% of Smite damage heals nearby allies)
    -- Spell (This is the aura that procs the AOE Heal)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (34001, 5464, 4, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 4, 128, 34002, 332, 'Atonement', 4128830, '0', 4128830, 'When you deal damage with Smite, you instantly heal all party members within 30 yards equal to 100% of the damage dealt.  If the Priest is healed through Atonement, the effect is reduced in half.', 4128830, 4128828, 6, -1, 1);

    -- Proc (AoE heal)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `castingTimeIndex`, `procChance`, `baseLevel`, `spellLevel`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectRadiusIndex1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) VALUES (34002, 5464, 5, 134217728, 268435456, 1, 101, 1, 1, 4, -1, 10, 0, -1, -1, 20, 10, 3542, 150, 'Atonement', 4128830, 4128828, 4128828, 'When you deal damage with Smite, you instantly heal all party members within 30 yards equal to 100% of the damage dealt.  If the Priest is healed through Atonement, the effect is reduced in half', 4128830, 6, -1, 1);

-- Evangelism
    -- Rank 1
    -- Spell (This is the aura that procs the actual buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (34003, 5464, 2, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 128, 34004, 1873, 'Evangelism', 4128830, '0', 4128830, 'When you cast Smite you gain Evangelism. Increases the damage done by your Smite, Holy Fire, and Penance spells by $34004s2% and reduces the mana cost of those spells by $34004s1%. Stacks up to 5 times.  Lasts for 20 sec.', 4128830, 4128828, 6, -1, 1);

    -- Proc (This is the actual buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (34004, 5464, 2, 1, 327680, 1, 87376, 100, 0, 10, 10, 85, 6, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 108, 8590983296, 8, 0, 1873, 'Evangelism', 4128830, 4128828, 4128828, 'Increases the damage done by your Smite, Holy Fire, and Penance spells by $s2% and reduces the mana cost of those spells by $s1%', 4128830, 6, 1, 1, -1, 1, 1, 1);

    UPDATE `mangos`.`spell_template` SET `stackAmount`=5, `effect1`=6, `effect2`=6, `effectDieSides1`=1, `effectDieSides2`=1, `effectBaseDice1`=1, `effectBaseDice2`=1, `effectBasePoints1`=-4, `effectBasePoints2`=1, `effectImplicitTargetA1`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName1`=108, `effectApplyAuraName2`=108, `effectItemType1`=25770852480, `effectItemType2`=17180917888, `effectMiscValue1`=14, `effectMiscValue2`=8 WHERE entry = 34004;

    -- Rank 2
    -- Spell (This is the aura that procs the actual buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx3`, `castingTimeIndex`, `procFlags`, `procChance`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectTriggerSpell1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `stanceBarOrder`, `dmgMultiplier1`) 
    VALUES (34005, 5464, 2, 464, 67108864, 1, 87376, 100, 21, 1, -1, 6, 1, 1, -1, 0, -1, -1, 1, 42, 128, 34006, 1873, 'Evangelism', 4128830, '0', 4128830, 'When you cast Smite you gain Evangelism. Increases the damage done by your Smite, Holy Fire, and Penance spells by $34004s2% and reduces the mana cost of those spells by $34006s1%. Stacks up to 5 times.  Lasts for 20 sec.', 4128830, 4128828, 6, -1, 1);

    -- Proc (This is the actual buff)
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `dispel`, `attributes`, `castingTimeIndex`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectApplyAuraName1`, `effectItemType1`, `effectMiscValue1`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
    VALUES (34006, 5464, 2, 1, 327680, 1, 87376, 100, 0, 10, 10, 85, 6, -1, -1, 6, 1, 1, 49, 0, -1, -1, 1, 108, 8590983296, 8, 0, 1873, 'Evangelism', 4128830, 4128828, 4128828, 'Increases the damage done by your Smite, Holy Fire, and Penance spells by $s2% and reduces the mana cost of those spells by $s1%', 4128830, 6, 1, 1, -1, 1, 1, 1);

    UPDATE `mangos`.`spell_template` SET `stackAmount`=5, `effect1`=6, `effect2`=6, `effectDieSides1`=1, `effectDieSides2`=1, `effectBaseDice1`=1, `effectBaseDice2`=1, `effectBasePoints1`=-7, `effectBasePoints2`=3, `effectImplicitTargetA1`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName1`=108, `effectApplyAuraName2`=108, `effectItemType1`=25770852480, `effectItemType2`=17180917888, `effectMiscValue1`=14, `effectMiscValue2`=8 WHERE entry = 34006;

-- Archangel
    REPLACE `mangos`.`spell_template` (`entry`, `build`, `dispel`, `attributes`, `attributesEx2`, `stances`, `castingTimeIndex`, `recoveryTime`, `procFlags`, `procChance`, `procCharges`, `durationIndex`, `rangeIndex`, `equippedItemClass`, `effect1`, `effect2`, `effectDieSides1`, `effectDieSides2`, `effectBaseDice1`, `effectBaseDice2`, `effectBasePoints1`, `effectBasePoints2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectItemType1`, `effectItemType2`, `effectMiscValue1`, `effectMiscValue2`, `spellVisual1`, `spellIconId`, `name`, `nameFlags`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `spellFamilyName`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `script_name`) VALUES (34007, 5302, 1, 33882112, 524288, 134217728, 1, 180000, 87376, 100, 0, 21, 1, -1, 6, 6, 1, 1, 1, 1, -101, 24, 0, 0, -1, 1, 1, 108, 107, 3338141659, 8741199424, 14, 7, 7370, 1880, 'Archangel', 2031678, 2031676, 'Instantly restores $s3 mana and increases your healing done by $s2% for each stack.  Lasts 18 sec.', 2031678, 'Healing done increased.', 2031678, 6, 1, 1, -1, 1, 1, 'spell_priest_archangel');

    UPDATE `mangos`.`spell_template` SET `recoveryTime`=30000, `maxLevel`=61, `baseLevel`=20, `spellLevel`=20, `durationIndex`=9, `powerType`=0, `manaCost`=0, `effect1`=30, `effect2`=6, `effect3`=77, `effectDieSides1`=1, `effectDieSides2`=1, `effectBaseDice2`=1, `effectRealPointsPerLevel1`=15, `effectBasePoints1`=99, `effectBasePoints2`=2, `effectBonusCoefficient1`=0, `effectImplicitTargetA1`=1, `effectImplicitTargetA2`=21, `effectImplicitTargetA3`=1, `effectApplyAuraName2`=108, `effectApplyAuraName3`=4, `effectItemType1`=0, `effectItemType2`=8741199424, `effectMiscValue1`=0, `effectMiscValue2`=8, `spellFamilyFlags`=0 WHERE  `entry`=34007;

    UPDATE `mangos`.`spell_template` SET `effect1`=77, `effect3`=30, `effectDieSides3`=1, `effectBaseDice3`=1, `effectRealPointsPerLevel1`=0, `effectRealPointsPerLevel3`=10, `effectBasePoints1`=0, `effectBasePoints3`=99, `effectBonusCoefficient3`=0, `effectApplyAuraName1`=4, `effectApplyAuraName3`=108 WHERE  `entry`=34007 AND `build`=5302;

    -- Skill Line Ability
    REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15118, 5875, 613, 34007, 16, 1);

-- Mental Strength (PW:S MP cost -5% and reduces physical damage target takes by 1/2/3/4/5% while active)
UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=17;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=592;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=600;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=3747;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=6065;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=6066;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=10898;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=10899;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=10900;

UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=57, `effectApplyAuraName2`=4, `effectMiscValue2`=0,`effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectBasePoints3`=-1, `effectBonusCoefficient3`=0, `effectImplicitTargetA3`=57, `effectApplyAuraName3`=87, `effectMiscValue3`=1 WHERE  `entry`=10901;

UPDATE `mangos`.`spell_template` SET `effect2`=0, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-2, `effectBasePoints2`=-2, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectApplyAuraName1`=108, `effectApplyAuraName2`=108, `effectItemType1`=1, `effectItemType2`=1, `effectMiscValue1`=14, `effectMiscValue2`=8, `description`='Reduces the mana cost of your Power Word: Shield by $s1%. Power Word: Shield reduces physical damage taken while active by 1%.', `spellFamilyName`=6 WHERE  `entry`=18551;

UPDATE `mangos`.`spell_template` SET `effect2`=0, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints1`=-3, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectItemType1`=1, `effectItemType2`=0, `effectMiscValue1`=14, `effectMiscValue2`=0, `description`='Reduces the mana cost of your Power Word: Shield by $s1%. Power Word: Shield reduces physical damage taken while active by 2%.', `spellFamilyName`=6 WHERE  `entry`=18552;

UPDATE `mangos`.`spell_template` SET `effect2`=0, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints1`=-4, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectItemType1`=1, `effectItemType2`=0, `effectMiscValue1`=14, `effectMiscValue2`=0, `description`='Reduces the mana cost of your Power Word: Shield by $s1%. Power Word: Shield reduces physical damage taken while active by 3%.', `spellFamilyName`=6 WHERE  `entry`=18553;

UPDATE `mangos`.`spell_template` SET `effect2`=0, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints1`=-5, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectItemType1`=1, `effectItemType2`=0, `effectMiscValue1`=14, `effectMiscValue2`=0, `description`='Reduces the mana cost of your Power Word: Shield by $s1%. Power Word: Shield reduces physical damage taken while active by 4%.', `spellFamilyName`=6 WHERE  `entry`=18554;

UPDATE `mangos`.`spell_template` SET `effect2`=0, `effectDieSides2`=0, `effectBaseDice2`=0, `effectBasePoints1`=-6, `effectBasePoints2`=0, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=0, `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectItemType1`=1, `effectItemType2`=0, `effectMiscValue1`=14, `effectMiscValue2`=0, `description`='Reduces the mana cost of your Power Word: Shield by $s1%. Power Word: Shield reduces physical damage taken while active by 5%.', `spellFamilyName`=6 WHERE  `entry`=18555;

-- Penance
    -- TODO: 3 ranks, Lvl: 40 / 48 / 56
    -- Rank1
        -- Spell (This is the spell that casts either HEALING or DAMAGE depending on target)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributes`, `attributesEx3`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (34008, 5302, 1, 892, 327680, 67108864, 1, 12000, 87376, 101, 1, 40, 40, 8, 450, 4, -1, -1, 3, 1, -1, -1, 25, 1868, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage to an enemy, or $34010s1 healing to an ally instantly and every 1 sec for 2 sec.', 2031678, 2031676, 133, 1500, 6, 25769803776, 1, -1, 1, 1, 1, 'spell_priest_penance');

        -- Heal
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34009, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 21, 21, 23, 4, 1000, 34010, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34010s1 healing instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 0, 1, -1, 1, 1, 1, 128);

        -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34010, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 10, 90, 1, 0.6, 599, 0.24, -1, -1, 21, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 healing instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 8589934592, 1, 1, -1, 1, 1, 1, 128);

        -- Damage
            -- Spell (CF_PRIEST_PENANCE_DAMAGE_CHANNEL)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34011, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 1, 6, 23, 4, 1000, 34012, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 51539607552, 1, -1, 1, 1, 1, 128);

            -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34012, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 2, 1, 1, 0.6, 199, 0.24, -1, -1, 6, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 Holy damage instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 17179869184, 1, 1, -1, 1, 1, 1, 128);

    -- Rank2
        -- Spell (This is the spell that casts either HEALING or DAMAGE depending on target)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributes`, `attributesEx3`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (34013, 5302, 1, 892, 327680, 67108864, 1, 12000, 87376, 101, 1, 40, 40, 8, 450, 4, -1, -1, 3, 1, -1, -1, 25, 1868, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage to an enemy, or $34010s1 healing to an ally instantly and every 1 sec for 2 sec.', 2031678, 2031676, 133, 1500, 6, 25769803776, 1, -1, 1, 1, 1, 'spell_priest_penance');

        -- Learn spell(for trainer):
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (34014, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 34013, 107, 1868, 0, 'Penance', 7274526, 'Rank 2', 7274526, 7274508, 983052, -1, 1, 1, 1);

        -- Heal
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34015, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 21, 21, 23, 4, 1000, 34010, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34010s1 healing instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 0, 1, -1, 1, 1, 1, 128);

        -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34016, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 10, 90, 1, 0.6, 599, 0.24, -1, -1, 21, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 healing instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 8589934592, 1, 1, -1, 1, 1, 1, 128);

        -- Damage
            -- Spell (CF_PRIEST_PENANCE_DAMAGE_CHANNEL)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34017, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 1, 6, 23, 4, 1000, 34012, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 51539607552, 1, -1, 1, 1, 1, 128);

            -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34018, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 2, 1, 1, 0.6, 199, 0.24, -1, -1, 6, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 Holy damage instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 17179869184, 1, 1, -1, 1, 1, 1, 128);

    -- Rank3
        -- Spell (This is the spell that casts either HEALING or DAMAGE depending on target)
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `category`, `attributes`, `attributesEx3`, `castingTimeIndex`, `categoryRecoveryTime`, `procFlags`, `procChance`, `procCharges`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `script_name`) VALUES (34019, 5302, 1, 892, 327680, 67108864, 1, 12000, 87376, 101, 1, 40, 40, 8, 450, 4, -1, -1, 3, 1, -1, -1, 25, 1868, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage to an enemy, or $34010s1 healing to an ally instantly and every 1 sec for 2 sec.', 2031678, 2031676, 133, 1500, 6, 25769803776, 1, -1, 1, 1, 1, 'spell_priest_penance');

        -- Learn spell(for trainer):
        REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `targets`, `castingTimeIndex`, `procChance`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `activeIconId`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `descriptionFlags`, `auraDescriptionFlags`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`) 
        VALUES (34020, 4222, 1, 262400, 256, 1, 101, 6, -1, -1, 36, 1, 1, -1, 0, -1, -1, 34013, 107, 1868, 0, 'Penance', 7274526, 'Rank 3', 7274526, 7274508, 983052, -1, 1, 1, 1);

        -- Heal
            -- Spell
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34021, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 21, 21, 23, 4, 1000, 34010, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34010s1 healing instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 0, 1, -1, 1, 1, 1, 128);

        -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34022, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 10, 90, 1, 0.6, 599, 0.24, -1, -1, 21, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 healing instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 8589934592, 1, 1, -1, 1, 1, 1, 128);

        -- Damage
            -- Spell (CF_PRIEST_PENANCE_DAMAGE_CHANNEL)
            REPLACE `mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx`, `castingTimeIndex`, `recoveryTime`, `interruptFlags`, `channelInterruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `manaCost`, `rangeIndex`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effect2`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectAmplitude1`, `effectTriggerSpell1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `startRecoveryCategory`, `startRecoveryTime`, `spellFamilyName`, `spellFamilyFlags`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34023, 5464, 1, 536936704, 268453004, 1, 30000, 15, 31756, 101, 47, 40, 40, 39, 240, 4, -1, -1, 6, 6, 0, 0, -1, 1, 6, 23, 4, 1000, 34012, 7160, 1868, 50, 'Penance', 4128830, 'Rank 1', 4128830, 'Launches a volley of holy light at the target, causing $34012s1 Holy damage instantly and every 1 sec for 2 sec.', 4128830, 4128828, 133, 1500, 6, 51539607552, 1, -1, 1, 1, 1, 128);

            -- Proc
            REPLACE`mangos`.`spell_template` (`entry`, `build`, `school`, `attributes`, `attributesEx2`, `attributesEx3`, `castingTimeIndex`, `interruptFlags`, `procChance`, `maxLevel`, `baseLevel`, `spellLevel`, `rangeIndex`, `speed`, `equippedItemClass`, `equippedItemSubClassMask`, `effect1`, `effectDieSides1`, `effectBaseDice1`, `effectRealPointsPerLevel1`, `effectBasePoints1`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectImplicitTargetA1`, `spellVisual1`, `spellIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescriptionFlags`, `spellFamilyName`, `spellFamilyFlags`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `customFlags`) VALUES (34024, 5086, 1, 65536, 4194304, 512, 1, 8, 101, 47, 40, 40, 4, 20, -1, -1, 2, 1, 1, 0.6, 199, 0.24, -1, -1, 6, 7160, 1868, 50, 'Penance', 2031678, 'Rank 1', 2031678, 'Launches a volley of holy light at the target, causing $s1 Holy damage instantly and every 1 sec for 2 sec', 2031678, 2031676, 6, 17179869184, 1, 1, -1, 1, 1, 1, 128);

    -- Skill Line Ability
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (15119, 5875, 613, 34008, 16, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (34013, 5875, 613, 34008, 16, 1);
        REPLACE `mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `class_mask`, `req_skill_value`) VALUES (34019, 5875, 613, 34008, 16, 1);

    -- Holy Specialization (Add Penance)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=14889;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15008;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15009;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15010;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15011;

    -- Inspiration (Add Penance)
    UPDATE `mangos`.`spell_template` SET `description`='Increases your target\'s armor by $14893s1% for $14893d after getting a critical effect from your Flash Heal, Heal, Greater Heal, Penance, or Prayer of Healing spell.' WHERE  `entry`=14892;

    UPDATE `mangos`.`spell_template` SET `description`='Increases your target\'s armor by $14893s1% for $14893d after getting a critical effect from your Flash Heal, Heal, Greater Heal, Penance, or Prayer of Healing spell.' WHERE  `entry`=15362;

    UPDATE `mangos`.`spell_template` SET `description`='Increases your target\'s armor by $14893s1% for $14893d after getting a critical effect from your Flash Heal, Heal, Greater Heal, Penance, or Prayer of Healing spell.' WHERE  `entry`=15363;

    -- Holy Reach (Add Penance)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25770852480, `description`='Increases the range of your Smite, Holy Fire and Penance spells and the radius of your Prayer of Healing and Holy Nova spells by $s1%.' WHERE  `entry`=27789;

    UPDATE `mangos`.`spell_template` SET `effectItemType1`=25770852480, `description`='Increases the range of your Smite, Holy Fire and Penance spells and the radius of your Prayer of Healing and Holy Nova spells by $s1%.' WHERE  `entry`=27790;

    -- Spiritual Healing (Add Penance)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=8741199424 WHERE  `entry`=14898;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=8741199424 WHERE  `entry`=15349;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=8741199424 WHERE  `entry`=15354;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=8741199424 WHERE  `entry`=15355;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=8741199424 WHERE  `entry`=15356;

-- Druid
    -- Savage Fury (Add Lacerate, Thrash, Brutal Slash)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=481036343296, `effectItemType2`=481036341248, `description`='Increases the damage caused by your Claw, Rake, Lacerate, Brutal Slash, Thrash, Maul and Swipe abilities by $s1%.' WHERE entry IN (16998, 16999);

    -- Brutal Impact (2-4% Phys and magic hit rate)
    UPDATE `mangos`.`spell_template` SET `effectBaseDice2`=1, `effectBasePoints1`=1, `effectBasePoints2`=1, `effectApplyAuraName1`=54, `effectApplyAuraName2`=55, `description`='Increases your chance to hit with phyical attacks and spells by $s1%.' WHERE  `entry`=16940 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBaseDice2`=1, `effectBasePoints1`=3, `effectBasePoints2`=3, `effectApplyAuraName1`=54, `effectApplyAuraName2`=55, `description`='Increases your chance to hit with phyical attacks and spells by $s1%.' WHERE  `entry`=16941 AND `build`=4878;

    -- Improved Shred (-9/-18 Shred cost)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-10 WHERE  `entry`=16966 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-19 WHERE  `entry`=16968 AND `build`=5875;

    -- Moonglow (-10%/-20%/-30% MP Costs)
    UPDATE mangos . spell_template 
    SET effectBasePoints1 = -11
    WHERE entry = 16845;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = -21
    WHERE entry = 16846;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = -31
    WHERE entry = 16847;

    -- Improved Wrath (-10/-20/-30/-40/-50% MP cost)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-101, `effectBasePoints2`=-11, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=1,      
        `effectMiscValue2`=14, `description`='Reduces the cast time of your Wrath spell by $/1000;S1 sec and mana cost by $s2%.'  
    WHERE  `entry`=16814 AND `build`=4695;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-201, `effectBasePoints2`=-21, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=1,      
        `effectMiscValue2`=14, `description`='Reduces the cast time of your Wrath spell by $/1000;S1 sec and mana cost by $s2%.'  
    WHERE  `entry`=16815 AND `build`=4695;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-301, `effectBasePoints2`=-31, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=1,      
        `effectMiscValue2`=14, `description`='Reduces the cast time of your Wrath spell by $/1000;S1 sec and mana cost by $s2%.'  
    WHERE  `entry`=16816 AND `build`=4695;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-401, `effectBasePoints2`=-41, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=1,      
        `effectMiscValue2`=14, `description`='Reduces the cast time of your Wrath spell by $/1000;S1 sec and mana cost by $s2%.'  
    WHERE  `entry`=16817 AND `build`=4695;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-501, `effectBasePoints2`=-51, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=1,      
        `effectMiscValue2`=14, `description`='Reduces the cast time of your Wrath spell by $/1000;S1 sec and mana cost by $s2%.'  
    WHERE  `entry`=16818 AND `build`=4695;

    -- Improved Moonfire (2-10% spell crit, renamed Moon Empowerment)
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16821 AND     `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16822 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16823 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16824 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16825 AND `build`=4222;

    -- Moonfury (3-15%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=2 WHERE  `entry`=16896 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5 WHERE  `entry`=16897 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=8 WHERE  `entry`=16899 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=11 WHERE  `entry`=16900 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14 WHERE  `entry`=16901 AND `build`=4878;

    -- Natural Weapons (5-25% melee damage in all forms)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=4 WHERE  `entry`=16902 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=16903 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14 WHERE  `entry`=16904 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=16905 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=24 WHERE  `entry`=16906 AND `build`=5086;

    -- Thick Hide (3/6/10%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=2 WHERE  `entry`=16929 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5 WHERE  `entry`=16930 AND `build`=5086;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=16931 AND `build`=5086;

    -- Improved Mark of the Wild (17%/35%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=16 WHERE  `entry`=17050 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=34 WHERE  `entry`=17051 AND `build`=4222;

    -- Reflection (5-25% Mana regen in combat)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=17109 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=24, `name`='Reflection' WHERE  `entry`=17110 AND `build`=5086;

    -- Improved Entangling Roots (Renamed Dreamstate)
    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=0, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=2049, `name`='Dreamstate',
        `description`='Regenerate $s1% mana per 5 sec.' 
    WHERE  `entry`=16918 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=1, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=2049, `name`='Dreamstate',
        `description`='Regenerate $s1% mana per 5 sec.' 
    WHERE  `entry`=16919 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=2, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=2049, `name`='Dreamstate',
        `description`='Regenerate $s1% mana per 5 sec.' 
    WHERE  `entry`=16920 AND `build`=4222;

    -- Feral Aggression (Renamed to Druidic Insight)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1, `effectApplyAuraName1`=137, `effectApplyAuraName2`=0, `effectMiscValue1`=-1, 
        `spellIconId`=1487, `name`='Druidic Insight', `description`='Increases your total stats by $s1%.' 
    WHERE  `entry`=16858;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=3, `effectApplyAuraName1`=137, `effectApplyAuraName2`=0, `effectMiscValue1`=-1, 
        `spellIconId`=1487, `name`='Druidic Insight', `description`='Increases your total stats by $s1%.' 
    WHERE  `entry`=16859;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5, `effectApplyAuraName1`=137, `effectApplyAuraName2`=0, `effectMiscValue1`=-1, 
        `spellIconId`=1487, `name`='Druidic Insight', `description`='Increases your total stats by $s1%.' 
    WHERE  `entry`=16860;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=7, `effectApplyAuraName1`=137, `effectApplyAuraName2`=0, `effectMiscValue1`=-1, 
        `spellIconId`=1487, `name`='Druidic Insight', `description`='Increases your total stats by $s1%.' 
    WHERE  `entry`=16861;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9, `effectApplyAuraName1`=137, `effectApplyAuraName2`=0, `effectMiscValue1`=-1, 
        `spellIconId`=1487, `name`='Druidic Insight', `description`='Increases your total stats by $s1%.' 
    WHERE  `entry`=16862;

    -- Improved Thorns (24-70% spell interrupt reduction on Wrath / Entangling Roots / Starfire Renamed to Elune's Protection)
    -- TODO: Balance spells only
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=149, `effectApplyAuraName2`=117, `effectApplyAuraName3`=117, `effectMiscValue1`=127, `effectMiscValue2`=26, `effectMiscValue3`=9, 
        `spellIconId`=1714, `name`='Elune\'s Protection', `description`='Gives your Wrath, Entangling Roots and Starfire spells a $s1% chance to ignore spell interruption when damaged.' 
    WHERE  `entry`=16836 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectItemType1`=517, `effectMiscValue1`=9, `effectMiscValue2`=0, `effectMiscValue3`=0 
    WHERE  `entry`=16836 AND `build`=4878;

    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=149, `effectApplyAuraName2`=117, `effectApplyAuraName3`=117, `effectMiscValue1`=127, `effectMiscValue2`=26, `effectMiscValue3`=9, 
        `spellIconId`=1714, `name`='Elune\'s Protection', `description`='Gives your Wrath, Entangling Roots and Starfire spells a $s1% chance to ignore spell interruption when damaged.' 
    WHERE  `entry`=16839 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectItemType1`=517, `effectMiscValue1`=9, `effectMiscValue2`=0, `effectMiscValue3`=0 
    WHERE  `entry`=16839 AND `build`=4878;

    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=149, `effectApplyAuraName2`=117, `effectApplyAuraName3`=117, `effectMiscValue1`=127, `effectMiscValue2`=26, `effectMiscValue3`=9, 
        `spellIconId`=1714, `name`='Elune\'s Protection', `description`='Gives your Wrath, Entangling Roots and Starfire spells a $s1% chance to ignore spell interruption when damaged.' 
    WHERE  `entry`=16840 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=108, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectItemType1`=517, `effectMiscValue1`=9, `effectMiscValue2`=0, `effectMiscValue3`=0 
    WHERE  `entry`=16840 AND `build`=4878;

    -- Omen of Clarity (Procs on any melee attack, ability OR offensive spell and 30m duration)
    UPDATE `mangos`.`spell_template` SET `procFlags`=4116, 
        `auraDescription`='Each melee attack, melee ability, or offensive spell has a chance of causing the caster to enter a Clearcasting state.' ,
        `description`='Imbues the Druid with natural energy.  Each of the Druid\'s melee attacks, melee ability,  or offensive spell has a chance of causing the caster to enter a Clearcasting state.  The Clearcasting state reduces the Mana, Rage or Energy cost of your next damage or healing spell or offensive ability by $16870s1%.  Lasts $d.'
    WHERE  `entry`=16864 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `durationIndex`=30 WHERE  `entry`=16864 AND `build`=5464;

    UPDATE `mangos`.`spell_proc_event` SET `procFlags`=4116 WHERE  `entry`=16864 AND `build_min`=4878 AND `build_max`=5875;

    -- Nature's Focus (35%/40%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=34 WHERE  `entry`=17063 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=69 WHERE  `entry`=17065 AND `build`=4878;

    -- Improved Starfire (-2/-4/-6/-8/-10% spell damage taken Renamed Celestial Alignment)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-3, `effectBasePoints2`=0, `effectApplyAuraName1`=87, `effectApplyAuraName2`=0, `effectMiscValue1`=126, `effectMiscValue2`=0, 
        `name`='Celestial Alignment', `description`='Reduces all spell damage taken by $s1%.' WHERE  
    `entry`=16850 AND `build`=5302;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-5, `effectBasePoints2`=0, `effectApplyAuraName1`=87, `effectApplyAuraName2`=0, `effectMiscValue1`=126, `effectMiscValue2`=0, 
        `name`='Celestial Alignment', `description`='Reduces all spell damage taken by $s1%.' WHERE  
    `entry`=16923 AND `build`=5302;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-7, `effectBasePoints2`=0, `effectApplyAuraName1`=87, `effectApplyAuraName2`=0, `effectMiscValue1`=126, `effectMiscValue2`=0, 
        `name`='Celestial Alignment', `description`='Reduces all spell damage taken by $s1%.' WHERE  
    `entry`=16924 AND `build`=5302;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-9, `effectBasePoints2`=0, `effectApplyAuraName1`=87, `effectApplyAuraName2`=0, `effectMiscValue1`=126, `effectMiscValue2`=0, 
        `name`='Celestial Alignment', `description`='Reduces all spell damage taken by $s1%.' WHERE  
    `entry`=16925 AND `build`=5302;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-11, `effectBasePoints2`=0, `effectApplyAuraName1`=87, `effectApplyAuraName2`=0, `effectMiscValue1`=126, `effectMiscValue2`=0, 
        `name`='Celestial Alignment', `description`='Reduces all spell damage taken by $s1%.' WHERE  
    `entry`=16926 AND `build`=5302;

    -- Moonkin Form (Remove transform)
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=36 WHERE  `entry`=24858 AND `build`=5464;

    -- Insect Swarm
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=20, `effectBonusCoefficient1`=0.167 WHERE  `entry`=5570 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=44, `effectBonusCoefficient1`=0.167 WHERE  `entry`=24974 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=56, `effectBonusCoefficient1`=0.167 WHERE  `entry`=24975 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=86, `effectBonusCoefficient1`=0.167 WHERE  `entry`=24976 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=106, `effectBonusCoefficient1`=0.167 WHERE  `entry`=24977 AND `build`=5302;

    -- Improved Rejuvenation (10%/20%/30%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=17111 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=17112 AND `build`=4878;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=17113 AND `build`=4878;

    -- Improved Tranquaility (-2m/-4m CD)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-120001, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=128, `effectMiscValue2`=11 WHERE  `entry`=17123 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and cooldown by $/1000;s2 sec.' WHERE  `entry`=17123 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-240001, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=128, `effectMiscValue2`=11 WHERE  `entry`=17124 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and cooldown by $/1000;s2 sec.' WHERE  `entry`=17124 AND `build`=5875;

    -- Improved Regrowth ALSO (-5%/-10%/-15%/-20%/-25% MP cost of Regrowth)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-6, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17074 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-11, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17075 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-16, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17076 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-21, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17077 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-26, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17078 AND `build`=4222;


    -- Swiftmend (1.5s cast)
    UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=16 WHERE  `entry`=18562 AND `build`=5464;

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

-- Improved Devotion Aura
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

    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20128s1% after being hit or blocking ($h% chance).  Lasts $20128d or $20128n blocks.' WHERE  `entry`=20127;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20131s1% after being hit or blocking ($h% chance).  Lasts $20131d or $20131n blocks.' WHERE  `entry`=20130;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20132s1% after being hit or blocking ($h% chance).  Lasts $20132d or $20132n blocks.' WHERE  `entry`=20135;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20133s1% after being hit or blocking ($h% chance).  Lasts $20133d or $20133n blocks.' WHERE  `entry`=20136;
    UPDATE `mangos`.`spell_template` SET `description`='Increases your chance to block attacks with your shield by $20134s1% after being hit or blocking ($h% chance).  Lasts $20134d or $20134n blocks.' WHERE  `entry`=20137;

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

    UPDATE `mangos`.`spell_template` SET `description`='Increases Physical and Holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20196;
    UPDATE `mangos`.`spell_template` SET `description`='Increases Physical and Holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20197;
    UPDATE `mangos`.`spell_template` SET `description`='Increases Physical and Holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20198;
    UPDATE `mangos`.`spell_template` SET `description`='Increases Physical and Holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20199;
    UPDATE `mangos`.`spell_template` SET `description`='Increases Physical and Holy damage you deal with one-handed melee weapons by $s1%.' WHERE  `entry`=20200;


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

-- Vile Poisons (Poison damage by 25%/50%)
UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=66, `effectApplyAuraName3`=108, `effectMiscValue3`=4, `description`='Increases the damage dealt by your poisons by $s1%.'  WHERE  `entry`=16513 AND `build`=5875;

UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=131, `effectApplyAuraName3`=108, `effectMiscValue3`=4, `description`='Increases the damage dealt by your poisons by $s1%.'  WHERE  `entry`=16514 AND `build`=5875;

UPDATE `mangos`.`spell_template` SET `effectBasePoints3`=199, `effectApplyAuraName3`=108, `effectMiscValue3`=4, `description`='Increases the damage dealt by your poisons by $s1%.'  WHERE  `entry`=16515 AND `build`=5875;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 24,
    effectBasePoints2 = 24
WHERE entry = 16513;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 49, 
    effectBasePoints2 = 49 
WHERE entry = 16514;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 74, 
    effectBasePoints2 = 74 
WHERE entry = 16515;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 99,
    effectBasePoints2 = 99 
WHERE entry = 16719;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 124,
    effectBasePoints2 = 124 
WHERE entry = 16720;

-- Rogue

    -- Cold Blood (Add script for Mutilate functionality)
    UPDATE `mangos`.`spell_template` SET `effect2`=77, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=4 WHERE  `entry`=14177 AND `build`=5302;

    -- Sword Specialization (Add Axes)
    UPDATE `mangos`.`spell_template` SET `equippedItemSubClassMask`=387, `name`='Slicing Specialization', `description`='Gives you a $h% chance to get an extra attack on the same target after dealing damage with your Sword or Axe.' WHERE  `entry`=13960 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `equippedItemSubClassMask`=387, `name`='Slicing Specialization', `description`='Gives you a $h% chance to get an extra attack on the same target after dealing damage with your Sword or Axe.' WHERE  `entry`=13961 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `equippedItemSubClassMask`=387, `name`='Slicing Specialization', `description`='Gives you a $h% chance to get an extra attack on the same target after dealing damage with your Sword or Axe.' WHERE  `entry`=13962 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `equippedItemSubClassMask`=387, `name`='Slicing Specialization', `description`='Gives you a $h% chance to get an extra attack on the same target after dealing damage with your Sword or Axe.' WHERE  `entry`=13963 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `equippedItemSubClassMask`=387, `name`='Slicing Specialization', `description`='Gives you a $h% chance to get an extra attack on the same target after dealing damage with your Sword or Axe.' WHERE  `entry`=13964 AND `build`=5875;

    -- Weapon Expertise (Sword, Dagger, Fist, Axe, Mace and Throwing)
    UPDATE `mangos`.`spell_template` SET `effect2`=0, `effect3`=0, `effectDieSides2`=0, `effectDieSides3`=0, `effectBaseDice2`=0, `effectBaseDice3`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectMiscValue1`=793, `effectMiscValue2`=0, `effectMiscValue3`=0, `description`='Increases your skill with Sword, Dagger, Fist, Axe, Mace and Throwing weapons by $s1.' WHERE  `entry`=30919 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=0, `effect3`=0, `effectDieSides2`=0, `effectDieSides3`=0, `effectBaseDice2`=0, `effectBaseDice3`=0, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectImplicitTargetA2`=0, `effectImplicitTargetA3`=0, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, `effectMiscValue1`=793, `effectMiscValue2`=0, `effectMiscValue3`=0, `description`='Increases your skill with Sword, Dagger, Fist, Axe, Mace and Throwing weapons by $s1.' WHERE  `entry`=30920 AND `build`=5875;

    -- Coldblood (Add Mutilate and Envenom)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=21474968070, `description`='When activated, increases the critical strike chance of your next Sinister Strike, Backstab, Mutilate, Ambush, Envenom or Eviscerate by $s1%.' WHERE  `entry`=14177 AND `build`=5302;

    -- Lethality (Add Mutilate)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4395630606, `description`='Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate and Hemorrhage abilities by $s1%.' WHERE  `entry`=14128 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4395630606, `description`='Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate and Hemorrhage abilities by $s1%.' WHERE  `entry`=14132 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4395630606, `description`='Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate and Hemorrhage abilities by $s1%.' WHERE  `entry`=14135 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4395630606, `description`='Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate and Hemorrhage abilities by $s1%.' WHERE  `entry`=14136 AND `build`=5464;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=4395630606, `description`='Increases the critical strike damage bonus of your Sinister Strike, Gouge, Backstab, Ghostly Strike, Mutilate and Hemorrhage abilities by $s1%.' WHERE  `entry`=14137 AND `build`=5464;

    -- Temp, revert to 29 after
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=14137 AND `build`=5464;

    -- Premeditation (20s CD)
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=20000 WHERE  `entry`=14183 AND `build`=5875;

    -- Blade Flurry (60s CD)
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=60000 WHERE  `entry`=13877 AND `build`=5302;

    -- Adnrelina Rush (3m CD)
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=180000 WHERE  `entry`=13750 AND `build`=5875;

    -- Cold Blood (60s CD)
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=60000 WHERE  `entry`=14177 AND `build`=5302;

    -- Improved Poisons (10%/20%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=14113 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=14114 AND `build`=5875;

    -- Opportunity (10%/20%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9, `effectBasePoints2`=9 WHERE  `entry`=14057 AND `build`=4222;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19, `effectBasePoints2`=19 WHERE  `entry`=14072 AND `build`=4222;

    -- Improved Sap (45%/90% chance, 4%/8% spell hit and only 2 talent points now - 14076 + 14095)
    UPDATE `mangos`.`spell_template` SET `procChance`=45, `effect2`=6, `effectDieSides2`=1 , `effectBaseDice2`=1, `effectBasePoints1`=44, `effectBasePoints2`=3, `effectApplyAuraName2`=55, `effectImplicitTargetA2`=1,
        `description`='Gives you a $s1% chance to return to stealth mode after using your Sap ability and increases your chance to hit with spells by $s2%.' 
        WHERE  `entry`=14076 AND `build`=5302;
    
    UPDATE `mangos`.`spell_template` SET `procChance`=66, `effect2`=6, `effectDieSides2`=1 , `effectBaseDice2`=1, `effectBasePoints1`=65, `effectBasePoints2`=7, `effectApplyAuraName2`=55, `effectImplicitTargetA2`=1,
        `description`='Gives you a $s1% chance to return to stealth mode after using your Sap ability and increases your chance to hit with spells by $s2%.' 
        WHERE  `entry`=14094 AND `build`=5302;

        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1 , `effectBaseDice2`=1, `effectBasePoints2`=7, `effectApplyAuraName2`=55, `effectImplicitTargetA2`=1,
        `description`='Gives you a $s1% chance to return to stealth mode after using your Sap ability and increases your chance to hit with spells by $s2%.' 
        WHERE  `entry`=14095 AND `build`=5302;


    -- Sleight of Hand (-5%/-10% Crit Rate)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=-6, `effectBasePoints3`=-6 WHERE  `entry`=30892 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints2`=-11, `effectBasePoints3`=-11 WHERE  `entry`=30893 AND `build`=5875;

    -- Serrated Blades (-5, -10, -16.66 armor per level)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14, `effectRealPointsPerLevel2`=-6 WHERE  `entry`=14171 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29, `effectRealPointsPerLevel2`=-10 WHERE  `entry`=14172 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=44, `effectRealPointsPerLevel2`=-17.66 WHERE  `entry`=14173 AND `build`=5875;

    -- Initiative (33%/66%/100%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=32 WHERE  `entry`=13976 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=65 WHERE  `entry`=13979 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=99 WHERE  `entry`=13980 AND `build`=5875;

    -- Hemorrhage (+2%/+3%/+4% Physical damage taken debuff)
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=20000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=1, `effectApplyAuraName3`=87, `effectMiscValue1`=1, 
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.', `auraDescription`='Increases Physical damage taken by $s3%.'
    WHERE  `entry`=16511;
    
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=20000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=2, `effectApplyAuraName3`=87, `effectMiscValue1`=1 ,
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.', `auraDescription`='Increases Physical damage taken by $s3%.'
    WHERE  `entry`=17347;
    
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=20000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=3, `effectApplyAuraName3`=87, `effectMiscValue1`=1, 
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.', `auraDescription`='Increases Physical damage taken by $s3%.'
    WHERE  `entry`=17348;

    -- Combine Endurance and Improved Sprint
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=49, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=109, 
        `effectItemType2`=64, `effectTriggerSpell2`=30918, 
        `description`='Reduces the cooldown of your Sprint and Evasion abilities by $/1000;s1 sec and gives a $s2% chance to remove all movement impairing effects when you activate your Sprint ability.'
    WHERE  `entry`=13742 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=99, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=109,
        `effectItemType2`=64, `effectTriggerSpell2`=30918, 
        `description`='Reduces the cooldown of your Sprint and Evasion abilities by $/1000;s1 sec and Gives a $s2% chance to remove all movement impairing effects when you activate your Sprint ability.' 
    WHERE  `entry`=13872 AND `build`=5875;

    -- Combine Improved Kidney Shot and Improved Kick (Renamed Deadly Tricks)
    UPDATE `mangos`.`spell_template` SET `attributesEx3`=524288, `procFlags`=87376, `procChance`=33, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, 
        `effectTriggerSpell2`=0, `effectTriggerSpell2`=18425, `name`='Deadly Tricks',
        `description`='While affected by your Kidney Shot ability, the target receives an additional $s1% damage from all sources and gives your Kick ability a $h% chance to silence the target for $18425d.' 
    WHERE  `entry`=14174 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `attributesEx3`=524288, `procFlags`=87376, `procChance`=66, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, 
        `effectTriggerSpell2`=0, `effectTriggerSpell2`=18425, `name`='Deadly Tricks',
        `description`='While affected by your Kidney Shot ability, the target receives an additional $s1% damage from all sources and gives your Kick ability a $h% chance to silence the target for $18425d.' 
    WHERE  `entry`=14175 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `attributesEx3`=524288, `procFlags`=87376, `procChance`=100, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, 
        `effectTriggerSpell2`=0, `effectTriggerSpell2`=18425, `name`='Deadly Tricks',
        `description`='While affected by your Kidney Shot ability, the target receives an additional $s1% damage from all sources and gives your Kick ability a $h% chance to silence the target for $18425d.' 
    WHERE  `entry`=14176 AND `build`=5875;

    REPLACE `mangos`.`spell_proc_event` (`entry`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`) VALUES (14174, 16, 16, 16);

    -- Lightning Reflexes (2%/4%/6%/8%/10%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1 WHERE  `entry`=13712;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=3 WHERE  `entry`=13788;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5 WHERE  `entry`=13789;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=7 WHERE  `entry`=13790;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=13791;

    -- Ghostly Strike (+25% dodge, 20s duration)
    UPDATE `mangos`.`spell_template` SET `durationIndex`=18, `effectBasePoints2`=24 WHERE  `entry`=14278 AND `build`=5875;

    -- Heightened Senses (-5/-10 Cost of Backstab Renamed Shadow Efficiency)
    UPDATE `mangos`.`spell_template` SET `effect2`=0, `effect3`=0, `effectBasePoints1`=-6, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectApplyAuraName1`=107, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0, 
        `effectItemType1`=4, `effectMiscValue1`=14, `spellFamilyName`=8, `spellIconId`=164,
        `name`='Shadow Efficiency', `description`='Reduces the Energy cost of Backstab by $s1.' 
    WHERE  `entry`=30894 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=0, `effect3`=0, `effectBasePoints1`=-11, `effectBasePoints2`=0, `effectBasePoints3`=0, `effectApplyAuraName1`=107, `effectApplyAuraName2`=0, `effectApplyAuraName3`=0,
        `effectItemType1`=4, `effectMiscValue1`=14,  `spellFamilyName`=8, `spellIconId`=164,
        `name`='Shadow Efficiency', `description`='Reduces the Energy cost of Backstab by $s1.' 
    WHERE  `entry`=30895 AND `build`=5875;

    -- Stance with +100% threat like RF. Next to Blade Flurry
    -- Rogue overpower clone on MISS
    -- NE racials
    -- Rep rewards for major cities
    -- Sap code from my bug report

    -- Dirty Deeds (Added Ambush)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=1792  WHERE  `entry`=14082 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=1792 WHERE  `entry`=14083 AND `build`=5875;

    -- Deadliness (3%/6%/9%/12%/15%)
    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 2
    WHERE entry = 30902;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 5
    WHERE entry = 30903;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 8
    WHERE entry = 30904;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 11
    WHERE entry = 30905;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 14
    WHERE entry = 30906;

    -- Skill Line Abiity

    -- Sleight of Hand
    UPDATE mangos . skill_line_ability
    SET skill_id = 253
    WHERE spell_id IN (30892, 30893);

    -- Improved Backstab
    UPDATE mangos . skill_line_ability
    SET skill_id = 39
    WHERE spell_id IN (13733, 13865, 13866);

    -- Dagger Spec
    UPDATE mangos . skill_line_ability
    SET skill_id = 38
    WHERE spell_id IN (13706, 13804, 13805, 13806, 13807);

    -- Improved Gouge
    UPDATE mangos . skill_line_ability
    SET skill_id = 39
    WHERE spell_id IN (13741, 13793, 13792);

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

-- Warlock
-- Improved Drain Life (2 points now, +15%/30% damage per CASTERS Affliction DoT on target)
UPDATE `mangos`.`spell_template` SET `description`='Increases the Health drained by your Drain Life spell by $s1%.  Additionally, this effect is also increased by 15% per Affliction damage over time effect active on the target.', `effectBasePoints1`=9 WHERE  `entry`=17804;
UPDATE `mangos`.`spell_template` SET `description`='Increases the Health drained by your Drain Life spell by $s1%.  Additionally, this effect is also increased by 30% per Affliction damage over time effect active on the target.', `effectBasePoints1`=19 WHERE  `entry`=17805;

-- Improved Curse of Agony (Also applies attack speed reduction)
-- TODO: Add all ranks of CoA for the IN (). Test rank1 first
-- TODO: 138 is melee haste
-- TODO: Starts at -1, needs to be negative effect (-1). Figure out the math for 3%/6%/10%
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=6, `effectApplyAuraName2`=138 WHERE  `entry` IN (980, 1014, 6217, 11711, 11712, 11713);

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-2, `description`='Increases the damage done by your Curse of Agony by $s1% and also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18827);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=2, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18827;

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-5, `description`='Increases the damage done by your Curse of Agony by $s1% and also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18829);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18829;

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-9, `description`='Increases the damage done by your Curse of Agony by $s1% and also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18830);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=9, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18830;

-- Improved Curse of Weakness (Now works on Curse of the Elements and Shadows too)
-- TODO: Is     CF_WARLOCK_CURSE_SHADOWS_ELEMENTS       = 34,   // CM1 00000004 unneeded? Was working without it..
UPDATE `mangos`.`spell_template` SET `effectItemType1`=17179901952, `name`='Improved Curses', `description`='Increases the effect of your Curse of Weakness, Curse of the Elements, and Curse of Shadows by $s1%.' WHERE  `entry` IN (18179, 18180, 18181) AND `build`=4222;

-- Demonic Sacrifice
UPDATE mangos . skill_line_ability
SET skill_id = 355
WHERE spell_id = 18788;

-- Fel Stamina (3 points, 5% per point. Also added 5%/10%/15% Mana Regen to continue while casting)
UPDATE mangos . spell_template SET effect2 = 6, effectImplicitTargetA2 = 1, effectDieSides2 = 1, effectBaseDice2 = 1, effectBasePoints2 = 4, effectApplyAuraName2 = 134 WHERE entry = 18748;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=4, `description`='Increases the maximum Health of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, allows $s2% of your Mana regeneration to continue while casting.' WHERE  `entry`=18748 AND `build`=4222;

UPDATE mangos . spell_template SET effect2 = 6, effectImplicitTargetA2 = 1, effectDieSides2 = 1, effectBaseDice2 = 1, effectBasePoints2 = 9, effectApplyAuraName2 = 134 WHERE entry = 18749;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9, `description`='Increases the maximum Health of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, allows $s2% of your Mana regeneration to continue while casting.' WHERE  `entry`=18749 AND `build`=4222;

UPDATE mangos . spell_template SET effect2 = 6, effectImplicitTargetA2 = 1, effectDieSides2 = 1, effectBaseDice2 = 1, effectBasePoints2 = 14, effectApplyAuraName2 = 134 WHERE entry = 18750;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14, `description`='Increases the maximum Health of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, allows $s2% of your Mana regeneration to continue while casting.' WHERE  `entry`=18750 AND `build`=4222;

-- Fel Intellect (3 points, 5% per point. Also added 1% Spell Hit per point)
UPDATE mangos . spell_template SET effect3 = 6, effectImplicitTargetA3 = 1, effectDieSides3 = 1, effectBaseDice3 = 1, effectBasePoints3 = 0, effectApplyAuraName3 = 55 WHERE entry = 18731;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=4, `description`='Increases the maximum Mana of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, increases your chance to hit with spells by $s3%.' WHERE  `entry`=18731 AND `build`=4222;

UPDATE mangos . spell_template SET effect3 = 6, effectImplicitTargetA3 = 1, effectDieSides3 = 1, effectBaseDice3 = 1, effectBasePoints3 = 1, effectApplyAuraName3 = 55 WHERE entry = 18743;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9, `description`='Increases the maximum Mana of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, increases your chance to hit with spells by $s3%.' WHERE  `entry`=18743 AND `build`=4222;

UPDATE mangos . spell_template SET effect3 = 6, effectImplicitTargetA3 = 1, effectDieSides3 = 1, effectBaseDice3 = 1, effectBasePoints3 = 2, effectApplyAuraName3 = 55 WHERE entry = 18744;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14, `description`='Increases the maximum Mana of your Imp, Voidwalker, Succubus, Felhunter, and Felguard by $s1%. Additionally, increases your chance to hit with spells by $s3%.' WHERE  `entry`=18744 AND `build`=4222;

-- Renamed Improved Enslave Demon to Improved Greater Demons (-15m/30m CD on Inferno)
UPDATE `mangos`.`spell_template` SET `spellFamilyName`=5, `spellFamilyFlags`=34359738368 WHERE  `entry`=1122 AND `build`=4695;

UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=-900001, `effectImplicitTargetA1`=1, `effectApplyAuraName1`=107, `effectItemType1`=34359738368, `effectMiscValue1`=11 WHERE  `entry`=18821;

UPDATE `mangos`.`spell_template` SET `name`='Improved Greater Demons', `effectBasePoints1`=-900001, `description`='Reduces the cooldown of Inferno by $/60000;s1 min.' WHERE  `entry` IN (18821);


UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=-1800001, `effectImplicitTargetA1`=1, `effectApplyAuraName1`=107, `effectItemType1`=34359738368, `effectMiscValue1`=11 WHERE  `entry`=18822;

UPDATE `mangos`.`spell_template` SET `name`='Improved Greater Demons', `effectBasePoints1`=-1800001, `description`='Reduces the cooldown of Inferno by $/60000;s1 min.' WHERE  `entry` IN (18822);

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

-- Curse of Exhaustion (Now -30% default)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-31 WHERE  `entry`=18223 AND `build`=5464;

-- Improved Health Funnel (Now 50%/100%)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=49 WHERE  `entry`=18703 AND `build`=4878;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=99 WHERE  `entry`=18704 AND `build`=4878;

-- Unholy Power
UPDATE `mangos`.`spell_template` SET `description`='Increases the damage done by your Voidwalker, Succubus, Felhunter and Felguard\'s melee attacks by $s1%.' WHERE  `entry` IN (18769, 18770, 18771, 18772, 18773);

-- Fel Domination
UPDATE mangos . spell_template 
SET recoveryTime = 60000,
    description = 'Your next Imp, Voidwalker, Succubus, Felhunter, or Felguard Summon spell has its casting time reduced by $/1000;S1 sec and its Mana cost reduced by $s2%.',
    auraDescription = 'Imp, Voidwalker, Succubus, Fellhunter, and Felguard casting time reduced by $/1000;S1 sec.  Mana cost reduced by $s2%.'
WHERE entry = 18708;

-- Master Summoner
UPDATE `mangos`.`spell_template` SET `description`='Reduces the casting time of your Imp, Voidwalker, Succubus, Felhunter, and Felguard Summoning spells by $/1000;s1 sec and the Mana cost by $s2%.' WHERE  `entry`=18709 AND `build`=4449;
UPDATE `mangos`.`spell_template` SET `description`='Reduces the casting time of your Imp, Voidwalker, Succubus, Felhunter, and Felguard Summoning spells by $/1000;s1 sec and the Mana cost by $s2%.' WHERE  `entry`=18710 AND `build`=4449;

-- Soul Link
    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 9,
        effectBasePoints2 = 9 
    WHERE entry = 25228;

    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=18814 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `description`='When active, $18814s1% of all damage taken by the caster is taken by your Imp, Voidwalker, Succubus, Felhunter, or Felguard demon instead.  In addition, both the demon and master will inflict $25228s1% more damage.  Lasts as long as the demon is active.' WHERE  `entry`=19028 AND `build`=5464;

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
