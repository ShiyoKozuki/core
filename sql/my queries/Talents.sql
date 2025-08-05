-- NEXT talent ID is 1714
-- Talents

-- Druid
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

    -- Improved Moonfire (2-10% spell crit, renamed Moon Empowerment)
    UPDATE `mangos`.`spell_template` SET `effectApplyAuraName1`=71, `effectMiscValue1`=-1, `name`='Moon Empowerment', `description`='Increases the critical strike chance of your spells by $s1%.' WHERE  `entry`=16821 AND `build`=4222;
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
    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0.5, `effectBasePoints1`=-1, `effectApplyAuraName1`=85, `effectMiscValue1`=0, `spellIconId`=1486, `name`='Dreamstate',
        `description`='Regenerate $s1 mana per 5 sec. This amount increases with your level.' 
    WHERE  `entry`=16918 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0.75, `effectBasePoints1`=-1, `effectApplyAuraName1`=85, `effectMiscValue1`=0, `spellIconId`=1486, `name`='Dreamstate',
        `description`='Regenerate $s1 mana per 5 sec. This amount increases with your level.' 
    WHERE  `entry`=16919 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=1, `effectBasePoints1`=-1, `effectApplyAuraName1`=85, `effectMiscValue1`=0, `spellIconId`=1486, `name`='Dreamstate',
        `description`='Regenerate $s1 mana per 5 sec. This amount increases with your level.' 
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
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and  cooldown by $/1000;s2 sec.' WHERE  `entry`=17123 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-240001, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=128, `effectMiscValue2`=11 WHERE  `entry`=17124 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and  cooldown by $/1000;s2 sec.' WHERE  `entry`=17124 AND `build`=5875;

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

-- Vile Poisons
UPDATE mangos . spell_template 
SET effectBasePoints1 = 32,
    effectBasePoints2 = 32
WHERE entry = 16513;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 65, 
    effectBasePoints2 = 65 
WHERE entry = 16514;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 99, 
    effectBasePoints2 = 99 
WHERE entry = 16515;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 31,
    effectBasePoints2 = 31 
WHERE entry = 16719;

UPDATE mangos . spell_template 
SET effectBasePoints1 = 39,
    effectBasePoints2 = 39 
WHERE entry = 16720;

-- Rogue

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

    -- Improved Sap (45%/90% chance, 4%/8% spell hit)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1 , `effectBaseDice2`=1, `effectBasePoints1`=44, `effectBasePoints2`=3, `effectApplyAuraName2`=55, `effectImplicitTargetA2`=1,
        `description`='Gives you a $s1% chance to return to stealth mode after using your Sap ability and increases your chance to hit with spells by $s2%.' 
        WHERE  `entry`=14076 AND `build`=5302;
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1 , `effectBaseDice2`=1, `effectBasePoints1`=89, `effectBasePoints2`=7, `effectApplyAuraName2`=55, `effectImplicitTargetA2`=1,
        `description`='Gives you a $s1% chance to return to stealth mode after using your Sap ability and increases your chance to hit with spells by $s2%.' 
        WHERE  `entry`=14094 AND `build`=5302;

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
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=60000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=1, `effectApplyAuraName3`=87, `effectMiscValue1`=1, 
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.'
    WHERE  `entry`=16511;
    
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=60000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=2, `effectApplyAuraName3`=87, `effectMiscValue1`=1 ,
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.'
    WHERE  `entry`=17347;
    
    UPDATE `mangos`.`spell_template` SET `recoveryTime`=60000, `procCharges`=0, `durationIndex`=3, `manaCost`=10, `effectBasePoints3`=3, `effectApplyAuraName3`=87, `effectMiscValue1`=1, 
        `description`='An instant strike that damages the opponent and causes the target to hemorrhage, increasing any Physical damage dealt to the target by $s3%.  Lasts $d.  Awards $s2 combo $lpoint:points;.'
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
