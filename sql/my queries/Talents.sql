-- NEXT talent ID is 1745
-- Talents that grant a new spell (i.e. feral charge) need flags set to "1"
-- Talents

-- Mage
    -- Improved Arcane Missles (4/8/12/16/20% chance after casting any spell next Arcane Missles has -100% mana cost)
        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=2, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectItemType2`=7797347063, `effectTriggerSpell2`=34173, `description`='Gives you a $s1% chance to avoid interruption caused by damage while channeling Arcane Missiles.  In addition, your damaging spells have a $h% chance to reduce the mana cost of your next Arcane Missles by $34173s1%' WHERE  `entry`=11237;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=4, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectItemType2`=7797347063, `effectTriggerSpell2`=34173, `description`='Gives you a $s1% chance to avoid interruption caused by damage while channeling Arcane Missiles.  In addition, your damaging spells have a $h% chance to reduce the mana cost of your next Arcane Missles by $34173s1%' WHERE  `entry`=12463;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=6, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectItemType2`=7797347063, `effectTriggerSpell2`=34173, `description`='Gives you a $s1% chance to avoid interruption caused by damage while channeling Arcane Missiles.  In addition, your damaging spells have a $h% chance to reduce the mana cost of your next Arcane Missles by $34173s1%' WHERE  `entry`=12464;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=8, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectItemType2`=7797347063, `effectTriggerSpell2`=34173, `description`='Gives you a $s1% chance to avoid interruption caused by damage while channeling Arcane Missiles.  In addition, your damaging spells have a $h% chance to reduce the mana cost of your next Arcane Missles by $34173s1%' WHERE  `entry`=16769;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=10, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectItemType2`=7797347063, `effectTriggerSpell2`=34173, `description`='Gives you a $s1% chance to avoid interruption caused by damage while channeling Arcane Missiles.  In addition, your damaging spells have a $h% chance to reduce the mana cost of your next Arcane Missles by $34173s1%' WHERE  `entry`=16770;


    -- Improved Fireball (4/8/12/16/20% chance after casting Fireball next Fireblast has -100% mana cost)
        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=4, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=34060, `effectItemType2`=1, `effectMiscValue2`=42, `description`='Reduces the casting time of your Fireball spell by $/1000;S1 sec.  Additonally, your Fireball spell has a $h% chance to reduce the mana cost of your next Fireblast by $34060s1%.' WHERE  `entry`=11069;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=8, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=34060, `effectItemType2`=1, `effectMiscValue2`=42, `description`='Reduces the casting time of your Fireball spell by $/1000;S1 sec.  Additonally, your Fireball spell has a $h% chance to reduce the mana cost of your next Fireblast by $34060s1%.' WHERE  `entry`=12338;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=12, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=34060, `effectItemType2`=1, `effectMiscValue2`=42, `description`='Reduces the casting time of your Fireball spell by $/1000;S1 sec.  Additonally, your Fireball spell has a $h% chance to reduce the mana cost of your next Fireblast by $34060s1%.' WHERE  `entry`=12339;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=16, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=34060, `effectItemType2`=1, `effectMiscValue2`=42, `description`='Reduces the casting time of your Fireball spell by $/1000;S1 sec.  Additonally, your Fireball spell has a $h% chance to reduce the mana cost of your next Fireblast by $34060s1%.' WHERE  `entry`=12340;

        UPDATE `mangos`.`spell_template` SET `procFlags`=87376, `procChance`=20, `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=42, `effectTriggerSpell2`=34060, `effectItemType2`=1, `effectMiscValue2`=42, `description`='Reduces the casting time of your Fireball spell by $/1000;S1 sec.  Additonally, your Fireball spell has a $h% chance to reduce the mana cost of your next Fireblast by $34060s1%.' WHERE  `entry`=12341;

    -- Incinerate (Also reduces MP cost of Fire spells by 15/30%)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-11, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=51543801879, `effectMiscValue2`=14, `description`='Increases the critical strike chance of your Fire Blast and Scorch spells by $s1%.  Additionally, reduces the mana cost of your Fire Spells by $s2%.' WHERE  `entry`=18459;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-21, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=51543801879, `effectMiscValue2`=14, `description`='Increases the critical strike chance of your Fire Blast and Scorch spells by $s1%.  Additionally, reduces the mana cost of your Fire Spells by $s2%.' WHERE  `entry`=18460;

    -- Master of the Elements (20/40/60% base MP refunded on Frost and Fire spell crits)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=19 WHERE  `entry`=29074;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=39 WHERE  `entry`=29075;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=59 WHERE  `entry`=29076;

    -- Fire Power (Now also grants Ignite ticks a 20/40/60/80/100% chance to restore 2% Mana)
        UPDATE `mangos`.`spell_template` SET `procFlags`=262144, `procChance`=20, `effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=42, `effectItemType3`=134217728, `effectTriggerSpell3`=34061, `description`='Increases the damage done by your Fire spells by $s1%.  In addition, each time your Ignite talent causes damage, you have a $h% chance to regain $34061s1% mana.' WHERE  `entry`=11124;

        UPDATE `mangos`.`spell_template` SET `procFlags`=262144, `procChance`=40, `effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=42, `effectItemType3`=134217728, `effectTriggerSpell3`=34061, `description`='Increases the damage done by your Fire spells by $s1%.  In addition, each time your Ignite talent causes damage, you have a $h% chance to regain $34061s1% mana.' WHERE  `entry`=12378;

        UPDATE `mangos`.`spell_template` SET `procFlags`=262144, `procChance`=60, `effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=42, `effectItemType3`=134217728, `effectTriggerSpell3`=34061, `description`='Increases the damage done by your Fire spells by $s1%.  In addition, each time your Ignite talent causes damage, you have a $h% chance to regain $34061s1% mana.' WHERE  `entry`=12398;

        UPDATE `mangos`.`spell_template` SET `procFlags`=262144, `procChance`=80, `effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=42, `effectItemType3`=134217728, `effectTriggerSpell3`=34061, `description`='Increases the damage done by your Fire spells by $s1%.  In addition, each time your Ignite talent causes damage, you have a $h% chance to regain $34061s1% mana.' WHERE  `entry`=12399;

        UPDATE `mangos`.`spell_template` SET `procFlags`=262144, `procChance`=100, `effect3`=6, `effectDieSides3`=1, `effectBaseDice3`=1, `effectImplicitTargetA3`=1, `effectApplyAuraName3`=42, `effectItemType3`=134217728, `effectTriggerSpell3`=34061, `description`='Increases the damage done by your Fire spells by $s1%.  In addition, each time your Ignite talent causes damage, you have a $h% chance to regain $34061s1% mana.' WHERE  `entry`=12400;

    -- Winter's Chill (3 points, 33/66/100%)
    UPDATE `mangos`.`spell_template` SET `procChance`=33 WHERE  `entry`=11180;
    UPDATE `mangos`.`spell_template` SET `procChance`=66 WHERE  `entry`=28592;
    UPDATE `mangos`.`spell_template` SET `procChance`=100 WHERE  `entry`=28593;

    -- Improved Blizzard (Also Reduces MP cost of Blizzard by 15/30/45%)

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
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=811761402615 WHERE  `entry` IN (29438, 29439, 29440);

    -- Clearcasting (Added Flurry, Living Bomb, Meteor, and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=262005594871 WHERE  `entry`=12536 AND `build`=5464;

    -- Shatter (Added Flurry, Living Bomb, Meteor, and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=811761408759 WHERE  entry IN (11170, 12982, 12983, 12984, 12985) AND `build`=5464;

    -- Frost Channeling (Added Flurry Summon Water Elemental and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=768799670272 WHERE  entry IN(11160, 12518, 12519) AND `build`=5464;

    -- Artic Reach (Added Flurry and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=760209211552 WHERE  entry IN(16757, 16758) AND `build`=5464;

    -- Piercing Ice (Added Flury and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=687194768096, `effectItemType2`=68719476864 WHERE  entry IN(11151, 12952, 12953) AND `build`=4222;

    -- Ice Shards (Added Flurry and Frost Bomb)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=755914244832 WHERE  entry IN (11207, 12672, 15047, 15052, 15053) AND `build`=4222;

    -- Frostbite (Added Flurry)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=549756862464 WHERE  entry IN(11071, 12496, 12497) AND `build`=5464;

-- Shaman
    -- Ancestral Knowledge (Buffed to 2/4/6/8/10%)
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1 WHERE  `entry`=17485;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=3 WHERE  `entry`=17486;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=5 WHERE  `entry`=17487;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=7 WHERE  `entry`=17488;
    UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=17489;

    -- Improved Lightning Shield (Now works on Water Shield too)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=2748779070464, `name`='Improved Shields', `description`='Increases the damage done by your Lightning Shield orbs by $s1%, amount gained by your Water Shield orbs by $s1% and the amount healed by your Earth Shield orbs by $s1%.'  WHERE  `entry`=16261;

    UPDATE `mangos`.`spell_template` SET `effectItemType1`=2748779070464, `name`='Improved Shields', `description`='Increases the damage done by your Lightning Shield orbs by $s1%, amount gained by your Water Shield orbs by $s1% and the amount healed by your Earth Shield orbs by $s1%.'  WHERE  `entry`=16290;

    UPDATE `mangos`.`spell_template` SET `effectItemType1`=2748779070464, `name`='Improved Shields', `description`='Increases the damage done by your Lightning Shield orbs by $s1%, amount gained by your Water Shield orbs by $s1% and the amount healed by your Earth Shield orbs by $s1%.' WHERE  `entry`=16291;

    -- Toughness (3 points, 3/6/10% Armor, also grants 3/6/10% HP)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=2, `effectBasePoints2`=2, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=133, `description`='Increases your armor value from items by $s1% and your total Health by $s2%.' WHERE  `entry`=16252;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=5, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=133, `description`='Increases your armor value from items by $s1% and your total Health by $s2%.' WHERE  `entry`=16306;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=9, `effectBasePoints2`=9, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=133, `description`='Increases your armor value from items by $s1% and your total Health by $s2%.' WHERE  `entry`=16307;
    
-- Priest
-- Inner Focus (Add Penance)
UPDATE `mangos`.`spell_template` SET `effectItemType1`=29107945435, `effectItemType2`=29147545232 WHERE  `entry`=14751 AND `build`=5302;

-- Mental Agility (-2% -> -3% Per Rank and added Shadow Word: Death)
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-4, `effectItemType1`=139624300875 WHERE  `entry`=14520;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-7, `effectItemType1`=139624300875 WHERE  `entry`=14780;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-10, `effectItemType1`=139624300875 WHERE  `entry`=14781;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-13, `effectItemType1`=139624300875 WHERE  `entry`=14782;
UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=-16, `effectItemType1`=139624300875 WHERE  `entry`=14783;

-- Improved Inner Fire (Inner Fire increases your Spell damage and healing by 3/6/9%)
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=588;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=7128;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=602;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=1006;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=10951;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=232397258449, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.' WHERE `entry`=10952;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=2, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.', `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14747;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.', `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14770;

UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=8, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=2, `effectMiscValue2`=8, `procCharges`=0, `description`='A burst of Holy energy fills the caster, increasing armor by $s1.  Lasts $d.', `description`='Increases the beneficial effects of your Inner Fire spell by $s1%. While Inner Fire is active, your spell damage and healing is increased by $s2%.' WHERE  `entry`=14771;

-- Force of Will (2 Ranks, 2% Spell Damage and 2% Spell Hit per rank)
    UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectImplicitTargetA1`=1, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=1, `effectBasePoints2`=1, `effectBasePoints3`=1, `effectApplyAuraName1`=55, `effectItemType1`=17185644688, `effectItemType2`=17185644688, `description`='Increases your spell damage by $s2% and the hit chance of your offensive spells by $s1%.' WHERE `entry`=18544;

    UPDATE `mangos`.`spell_template` SET `effect1`=6, `effectImplicitTargetA1`=1, `effectDieSides1`=1, `effectBaseDice1`=1, `effectBasePoints1`=3, `effectBasePoints2`=3, `effectBasePoints3`=3, `effectApplyAuraName1`=55,`effectItemType1`=17185644688, `effectItemType2`=17185644688, `description`='Increases your spell damage by $s2% and the hit chance of your offensive spells by $s1%.' WHERE `entry`=18547;

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

    -- Shadow Affinity (Added Vampiric Touch and Shadow Word: Death)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206268260608 WHERE  `entry`=15318;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206268260608 WHERE  `entry`=15272;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206268260608 WHERE  `entry`=15320;

    -- Shadow Focus (Now also reduces MP cost of Shadow spells by 2/4/6/8/10% + Added Vampiric Touch and Shadow Word: Death)
        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-4, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectMultipleValue2`=14, `effectItemType1`=206268243968, `effectItemType2`=206268243968, `effectMiscValue2`=14, `description`='Reduces your target\'s chance to resist your Shadow spells by $s1%, and reduces the mana cost of your Shadow spells by $s2%.' WHERE  `entry`=15260;

        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-7, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectMultipleValue2`=14, `effectItemType1`=206268243968, `effectItemType2`=206268243968, `effectMiscValue2`=14, `description`='Reduces your target\'s chance to resist your Shadow spells by $s1%, and reduces the mana cost of your Shadow spells by $s2%.' WHERE  `entry`=15327;

        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-10, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectMultipleValue2`=14, `effectItemType1`=206268243968, `effectItemType2`=206268243968, `effectMiscValue2`=14, `description`='Reduces your target\'s chance to resist your Shadow spells by $s1%, and reduces the mana cost of your Shadow spells by $s2%.' WHERE  `entry`=15328;

        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-13, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectMultipleValue2`=14, `effectItemType1`=206268243968, `effectItemType2`=206268243968, `effectMiscValue2`=14, `description`='Reduces your target\'s chance to resist your Shadow spells by $s1%, and reduces the mana cost of your Shadow spells by $s2%.' WHERE  `entry`=15329;

        UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-16, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectMultipleValue2`=14, `effectItemType1`=206268243968, `effectItemType2`=206268243968, `effectMiscValue2`=14, `description`='Reduces your target\'s chance to resist your Shadow spells by $s1%, and reduces the mana cost of your Shadow spells by $s2%.' WHERE  `entry`=15330;

    -- Shadow Reach (Added Vampiric Touch and Shadow Word: Death)
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206267654144 WHERE  `entry`=17322;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206267654144 WHERE  `entry`=17323;
    UPDATE `mangos`.`spell_template` SET `effectItemType1`=206267654144 WHERE  `entry`=17325;

    -- Shadow Weaving (2 points 50/100% and Added Vampiric Touch and Shadow Word: Death)
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=49, `effectItemType1`=206200938496 WHERE  `entry`=15257 AND `build`=5464;
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=99, `effectItemType1`=206200938496 WHERE  `entry`=15331 AND `build`=5464;

    -- Vampiric Embrace (Buffed to 30% baseline, improved talents removed)
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=15286 AND `build`=5302;

    -- Darkness (Added Vampiric Touch and Shadow Word: Death))
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=1, `effectItemType1`=137472516096, `effectItemType2`=68727898112 WHERE  `entry`=15259 AND `build`=4375;
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=3, `effectItemType1`=137472516096, `effectItemType2`=68727898112 WHERE  `entry`=15307 AND `build`=4375;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=137472516096, `effectItemType2`=68727898112 WHERE  `entry`=15308;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=137472516096, `effectItemType2`=68727898112 WHERE  `entry`=15309;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=137472516096, `effectItemType2`=68727898112 WHERE  `entry`=15310;

    -- Shadowform (Now additionally allows 50% of your mana regeneration to continue while casting)
        UPDATE `mangos`.`spell_template` SET `description`='Assume a Shadowform, increasing your Shadow damage by $s2% and reducing Physical damage done to you by $s3%.  Additionally, allows $34257s1% of your mana regeneration to continue while casting.  However, you may not cast Holy spells while in this form.', `auraDescription`='Shadow damage you deal increased by $s2%.  Physical damage you take reduced by $s3%.  Allows $34257s1% of your mana regeneration to continue while casting.   You may not cast Holy spells.'  WHERE  `entry`=15473 AND `build`=5302;

    -- Healing Focus (Added Penance)
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=8590204416 WHERE  `entry`=14913;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=8590204416 WHERE  `entry`=15012;

    -- Holy Specialization (Add Penance)
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=14889;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15008;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15009;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15010;
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=25926311552 WHERE  `entry`=15011;

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
    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=0, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=6049, `name`='Dreamstate',
        `description`='Regenerate $s1% mana per 5 sec.' 
    WHERE  `entry`=16918 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=1, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=6049, `name`='Dreamstate',
        `description`='Regenerate $s1% mana per 5 sec.' 
    WHERE  `entry`=16919 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effectRealPointsPerLevel1`=0, `effectBasePoints1`=2, `effectApplyAuraName1`=21, `effectAmplitude1`=5000, `effectMiscValue1`=0, `spellIconId`=6049, `name`='Dreamstate',
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

    -- Moonkin Form (Change to Star Form)
        -- Moonkin Form
        UPDATE `mangos`.`spell_template` SET `spellVisual1`=72, `name`='Star Form', `description`='Transforms the Druid into Star Form.  While in this form the armor contribution from items is increased by $24905s1% and all party members within $24907a1 yards have their spell critical chance increased by $24907s1%.  The Star Form can only cast Balance spells while shapeshifted.\r\n\r\nThe act of shapeshifting frees the caster of Polymorph and Movement Impairing effects.' WHERE  `entry`=24858 AND `build`=5464;

        -- Moonkin Aura (Changed to Star Aura)
        UPDATE `mangos`.`spell_template` SET `name`='Star Aura' WHERE  `entry`=24907 AND `build`=4878;

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
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and cooldown by $/60000;s1 min.' WHERE  `entry`=17123 AND `build`=5875;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-240001, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=128, `effectMiscValue2`=11 WHERE  `entry`=17124 AND `build`=5875;
    UPDATE `mangos`.`spell_template` SET `description`='Reduces threat caused by Tranquility by $s1% and cooldown by $/60000;s1 min.' WHERE  `entry`=17124 AND `build`=5875;

    -- Improved Regrowth ALSO (-5%/-10%/-15%/-20%/-25% MP cost of Regrowth)
    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-6, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17074 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-11, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17075 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-16, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17076 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-21, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17077 AND `build`=4222;

    UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-26, `effectBonusCoefficient2`=1, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=108, `effectItemType2`=64, `effectMiscValue2`=14, `description`='Increases the critical effect chance of your Regrowth spell by $s1% and reduces the Mana cost by $s2%.' WHERE  `entry`=17078 AND `build`=4222;


    -- Swiftmend (1.5s cast)
    UPDATE `mangos`.`spell_template` SET `castingTimeIndex`=@CASTING_TIME_INSTANT WHERE  `entry`=18562 AND `build`=5464;

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

-- Blessing of Sanctuary (Blocked attacks also restore 2% of max Mana)
    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectImplicitTargetA3`=21, `effectApplyAuraName3`=42, `effectTriggerSpell3`=34256, `description`='Places a Blessing on the friendly target, reducing damage dealt from all sources by up to $s1 for $d.  In addition, when the target blocks a melee attack the attacker will take $s2 Holy damage and the target will gain $34256s1% of their max mana.  Players may only have one Blessing on them per Paladin at any one time.', `auraDescription`='Damage taken reduced by up to $s1 and blocked melee attacks cause $s2 Holy damage to the attacker and the defender will restore $34256s1% of their max mana.' WHERE  `entry`=20911;

    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectImplicitTargetA3`=21, `effectApplyAuraName3`=42, `effectTriggerSpell3`=34256, `description`='Places a Blessing on the friendly target, reducing damage dealt from all sources by up to $s1 for $d.  In addition, when the target blocks a melee attack the attacker will take $s2 Holy damage and the target will gain $34256s1% of their max mana.  Players may only have one Blessing on them per Paladin at any one time.', `auraDescription`='Damage taken reduced by up to $s1 and blocked melee attacks cause $s2 Holy damage to the attacker and the defender will restore $34256s1% of their max mana.' WHERE  `entry`=20912;

    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectImplicitTargetA3`=21, `effectApplyAuraName3`=42, `effectTriggerSpell3`=34256, `description`='Places a Blessing on the friendly target, reducing damage dealt from all sources by up to $s1 for $d.  In addition, when the target blocks a melee attack the attacker will take $s2 Holy damage and the target will gain $34256s1% of their max mana.  Players may only have one Blessing on them per Paladin at any one time.', `auraDescription`='Damage taken reduced by up to $s1 and blocked melee attacks cause $s2 Holy damage to the attacker and the defender will restore $34256s1% of their max mana.' WHERE  `entry`=20913;

    UPDATE `mangos`.`spell_template` SET `effect3`=6, `effectImplicitTargetA3`=21, `effectApplyAuraName3`=42, `effectTriggerSpell3`=34256, `description`='Places a Blessing on the friendly target, reducing damage dealt from all sources by up to $s1 for $d.  In addition, when the target blocks a melee attack the attacker will take $s2 Holy damage and the target will gain $34256s1% of their max mana.  Players may only have one Blessing on them per Paladin at any one time.', `auraDescription`='Damage taken reduced by up to $s1 and blocked melee attacks cause $s2 Holy damage to the attacker and the defender will restore $34256s1% of their max mana.' WHERE  `entry`=20914;

-- Holy Shield (Charges increased to 8, mana cost changed to 15% of base mana)
    UPDATE mangos . spell_template SET procCharges = 8, `manaCost`=0, `manaCostPercentage`=15 WHERE entry = 20925;
    UPDATE mangos . spell_template SET procCharges = 8, `manaCost`=0, `manaCostPercentage`=15 WHERE entry = 20927;
    UPDATE mangos . spell_template SET procCharges = 8, `manaCost`=0, `manaCostPercentage`=15 WHERE entry = 20928;

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

-- Warrior
    -- Improved Sunder Armor (Renamed to Sundering, also works on Devastate)
        UPDATE `mangos`.`spell_template` SET `effectItemType1`=8589950976, `name`='Sundering', `description`='Reduces the cost of your Sunder Armor and Devastate abilities by $/10;s1 rage point.' WHERE entry IN (12308, 12810, 12811);

-- Warlock

    -- Master Demonologist (Added Felguard)
        UPDATE `mangos`.`spell_template` SET `description`='Grants both the Warlock and the summoned demon an effect as long as that demon is active.\r\n\r\nImp - Reduces threat caused by $23759s1%.\r\n\r\nVoidwalker - Reduces physical damage taken by $23760s1%.\r\n\r\nSuccubus / Felguard - Increases all damage caused by $23761s1%.\r\n\r\nFelhunter - Increases all resistances by .2 per level.' WHERE  `entry`=23785 AND `build`=4878;

        UPDATE `mangos`.`spell_template` SET `description`='Grants both the Warlock and the summoned demon an effect as long as that demon is active.\r\n\r\nImp - Reduces threat caused by $23826s1%.\r\n\r\nVoidwalker - Reduces physical damage taken by $23841s1%.\r\n\r\nSuccubus / Felguard - Increases all damage caused by $23833s1%.\r\n\r\nFelhunter - Increases all resistances by .4 per level.' WHERE  `entry`=23822 AND `build`=4878;

        UPDATE `mangos`.`spell_template` SET `description`='Grants both the Warlock and the summoned demon an effect as long as that demon is active.\r\n\r\nImp - Reduces threat caused by $23827s1%.\r\n\r\nVoidwalker - Reduces physical damage taken by $23842s1%.\r\n\r\nSuccubus / Felguard - Increases all damage caused by $23834s1%.\r\n\r\nFelhunter - Increases all resistances by .6 per level.' WHERE  `entry`=23823 AND `build`=4878;

        UPDATE `mangos`.`spell_template` SET `description`='Grants both the Warlock and the summoned demon an effect as long as that demon is active.\r\n\r\nImp - Reduces threat caused by $23828s1%.\r\n\r\nVoidwalker - Reduces physical damage taken by $23843s1%.\r\n\r\nSuccubus / Felguard - Increases all damage caused by $23835s1%.\r\n\r\nFelhunter - Increases all resistances by .8 per level.' WHERE  `entry`=23824 AND `build`=4878;

        UPDATE `mangos`.`spell_template` SET `description`='Grants both the Warlock and the summoned demon an effect as long as that demon is active.\r\n\r\nImp - Reduces threat caused by $23829s1%.\r\n\r\nVoidwalker - Reduces physical damage taken by $23844s1%.\r\n\r\nSuccubus / Felguard - Increases all damage caused by $23836s1%.\r\n\r\nFelhunter - Increases all resistances by 1 per level.' WHERE  `entry`=23825 AND `build`=4878;

        -- Pet Specific Aura (Felguard)
        REPLACE `mangos`.`spell_pet_auras` (`spell`, `pet`, `aura`) VALUES (23785, 90089, 23761);
        REPLACE `mangos`.`spell_pet_auras` (`spell`, `pet`, `aura`) VALUES (23822, 90089, 23833);
        REPLACE `mangos`.`spell_pet_auras` (`spell`, `pet`, `aura`) VALUES (23823, 90089, 23834);
        REPLACE `mangos`.`spell_pet_auras` (`spell`, `pet`, `aura`) VALUES (23824, 90089, 23835);
        REPLACE `mangos`.`spell_pet_auras` (`spell`, `pet`, `aura`) VALUES (23825, 90089, 23836);


    -- Improved Voidwalker (Now 15/30/45%)
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=14 WHERE  `entry`=18705;
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=29 WHERE  `entry`=18706;
        UPDATE `mangos`.`spell_template` SET `effectBasePoints1`=44 WHERE  `entry`=18707;

-- Improved Drain Life (2 points now, +15%/30% damage per CASTERS Affliction DoT on target)
UPDATE `mangos`.`spell_template` SET `description`='Increases the Health drained by your Drain Life spell by $s1%.  Additionally, this effect is also increased by 15% per Affliction damage over time effect active on the target.', `effectBasePoints1`=9 WHERE  `entry`=17804;
UPDATE `mangos`.`spell_template` SET `description`='Increases the Health drained by your Drain Life spell by $s1%.  Additionally, this effect is also increased by 30% per Affliction damage over time effect active on the target.', `effectBasePoints1`=19 WHERE  `entry`=17805;

-- Improved Curse of Agony (Also applies attack speed reduction)
-- TODO: Add all ranks of CoA for the IN (). Test rank1 first
-- TODO: 138 is melee haste
-- TODO: Starts at -1, needs to be negative effect (-1). Figure out the math for 3%/6%/10%
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-1, `effectBonusCoefficient2`=0, `effectImplicitTargetA2`=6, `effectApplyAuraName2`=138 WHERE  `entry` IN (980, 1014, 6217, 11711, 11712, 11713);

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-2, `description`='Increases the damage done by your Curse of Agony by $s1%.  Additionally, your Curse of Agony also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18827);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=2, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18827;

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-5, `description`='Increases the damage done by your Curse of Agony by $s1%.  Additionally, your Curse of Agony also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18829);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=5, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18829;

UPDATE `mangos`.`spell_template` SET `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=-9, `description`='Increases the damage done by your Curse of Agony by $s1%.  Additionally, your Curse of Agony also reduces reduces the targets attack speed by $s2%.' WHERE  `entry` IN (18830);

-- TODO: Should effectImplicitTargetA2 be 1 or 6?
UPDATE `mangos`.`spell_template` SET `effect2`=6, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints2`=9, `effectImplicitTargetA2`=1, `effectApplyAuraName2`=107, `effectItemType2`=1024, `effectMiscValue2`=8 WHERE  `entry`=18830;

-- Improved Curse of Weakness (Now works on Curse of the Elements and Shadows too)
-- TODO: Is CF_WARLOCK_CURSE_SHADOWS_ELEMENTS = 34 unneeded? Was working without it..
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

-- Searing Light (Holy Fire / Smite damage)
UPDATE mangos . spell_template 
    SET effectBasePoints1 = 4,
        effectBasePoints2 = 4
    WHERE entry = 14909;

    UPDATE mangos . spell_template 
    SET effectBasePoints1 = 9,
        effectBasePoints2 = 9
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
