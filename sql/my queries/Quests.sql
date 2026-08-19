-- Quest + Vendor + Repair npc flag = 
-- NEXT quest_template 30354
-- NEXT quest_end_script 10010
-- NEXT generic_script 9000001
-- NEXT creature_movement_scripts 9000001

-- NEXT creature_template 90154
-- NEXT gameobject_template 987713
-- NEXT gameobject_loot_template 42937

-- NEXT gameobject 300406

-- NEXT areatrigger_template 2953
-- NEXT areatrigger_involvedrelation 2953

    -- Allow NPC to be targettable by TARGET_UNIT_FRIEND (21) spells
    -- UPDATE creature_template SET static_flags1 = static_flags1 | 0x00400000 WHERE entry = 2658;

-- Faction = 35 to not make a friendly quest NPC not aggro creatures
-- Faction = 10 friendly NPC that gets aggrod by mobs

-- Gameobjects
    -- gameobject_template: 
        -- data0 column number of people required for "Rituals". Unsure what else it's for
        -- data1 column contains the reference ID for gameobject_loot_template
    -- pool_gameobject and pool_gameobject_template to set up pools for an object
    -- pool_gameobject have to search for guid via gameobject, then search that description to get entire pool i.e. 'Rocket Car Parts - Thousand Needles'
    -- pool_template to modify max spawn count (max_limit). 
    -- entry in pool_template is pool_entry via pool_gameobject_template or pool_entry via pool_gameobject

    -- flags

    -- 1 = in use (can’t interact with the object)
    -- 2 = Makes chests/doors locked (requiring a key, spell, event to open)
    -- 4 = Untargetable
    -- 8 = Transport (Object can transport (elevator, boat, car))
    -- 16 = Player cant interact with the object.
    -- 32 = No despawn (never despawn, typically for doors, they just change state)
    -- 64 = Triggered (typically, summoned objects. Triggered by spell or other events)


    -- documentation: 
    -- https://github.com/cmangos/issues/wiki/Gameobject_template

-- Add Blood Elf (High Elf) race to racemasks of quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=513 
    WHERE `RequiredRaces` = 1;

    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=520 
    WHERE `RequiredRaces` = 8;

    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=589 
    WHERE `RequiredRaces` = 77;

-- Paladin Class Quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=513 
    WHERE entry IN(3101, 1641, 1642, 1643, 1644, 1780, 1781, 1786, 1787, 1788, 1790);

    UPDATE `mangos`.`item_template` 
    SET `allowable_race`=-1
    WHERE entry IN(6776);

-- Priest Class Quests
    -- A Lack of Fear (Fear Ward Quest)
    UPDATE mangos . quest_template 
    SET RequiredRaces = 525
    WHERE entry IN(5641, 5645, 5647);

    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=513 
    WHERE entry IN(5623, 5624);

    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=517 
    WHERE entry IN(5635, 5636, 5634, 5640, 5639, 5638, 5637);

-- Hunter Class Quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=516 
    WHERE entry IN(6074, 6075, 6076, 6064, 6084, 6085, 6086);

    UPDATE `mangos`.`item_template` 
    SET `allowable_race`=-1
    WHERE entry IN(15911, 15913, 15908);

-- Rogue Class Quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=589 
    WHERE entry IN(2205, 2242, 2218, 2239, 2206);
    
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=513 
    WHERE entry IN(3102);

-- Mage Class Quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=513 
    WHERE entry IN(3104);

-- Warlock Class Quests
    UPDATE `mangos`.`quest_template` 
    SET `RequiredRaces`=589 
    WHERE entry IN(1598, 1758);

    UPDATE `mangos`.`item_template` 
    SET `allowable_race`=-1
    WHERE entry IN(6913, 6999, 12646, 12647, 18626, 18601);

-- Shaman Class Quests
    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `CompleteEmote`) VALUES (30150, 12, 4, 4, 64, 0, 'Call of Earth', 'I will teach you about the magic of earth.', 'Talk to Illya Einszbern to learn about earth magic.', 'Excellent!$B$BThe totem I will craft for you is more than a symbol of your status among $C--it has abilities beyond that. One use of the totem is as a focus for spells. Those spells are tied to the earth, and as you earn greater and greater wisdom, more of the earth\'s abilities will be made accessible to you.$B$BThe trainers will know when you are ready for greater knowledge.$B$BBut for now, take this earth totem, and a scroll to teach you your first ability.', 'I wish to be the first to welcome you fully to the first of four paths that will forever lead you in your destiny.$B$BIf you have the stone the earth gave to you, I will give you the totem it promised.$B$BIf not, then be gone with you until you have found your way.', '', '', '', '', '', 5175, 1, 445, 270, 8071, 8073, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90033, 30150);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90033, 30150);

    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `CompleteScript`) VALUES (30151, 1519, 10, 13, 64, 'Call of Fire', 'Torch firmly in hand, you turn away from the brazier and look out over Durotar. You feel an excitement tugging at your spirit as the wind picks up and forces the flame to dance violently.$B$BYou start off down the path back to the Barrens in search of Rin Tohsaka.', 'Bring the Torch of Eternal Flame to Rin Tohsaka in the Barrens.', 'Your spirit burns brighter than any torch I\'ve ever seen, $N, and for that, you should be proud.$B$BIf you continue down this path, the elements will be yours to command, and our brethren will look to you for guidance and wisdom. Let me be the first to congratulate you and present to you your newest totem.', 'Yes, $N? What do you have there?', '', '', '', '', '', 5176, 1, 1150, 720, 3599, 2075, 6, 6, 2, 1, 1, 1527);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30151);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30151);

    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30152, 1519, 20, 23, 64, 96, 'Call of Water', 'Take shard. Take shard and give life.$B$BGive life and understand. Understand water is life... corruption stops life.$B$BYou protect and give life with water\'s power.', 'Bring the Shard of Water to Islen Waterseer in the Barrens.', 'This is the proof I asked for. You\'ve done well, $N.$B$BI am pleased to be the first to congratulate you and give you this... your water totem.$B$BUse it well, and good luck.$B$BYour next test will not be for some time, so learn your lessons well. Pure water will not only give life back to those who are injured, but can have many other effects. I suggest you seek out a shaman trainer when you have the time. They might have other spells for you to learn.', 'You\'ve returned. Splendid!$B$BHow went your journey to Silverpine? Did it take you long?$B$BIt is hard for me to tell if you were successful there because so much of the land has become corrupt. Its stench overwhelms any good that you might have done. But small successes are sometimes as important as large ones. Purifying the water there was instrumental for you, and for all shamans.', '', '', '', '', '', 5177, 1, 2750, 1680, 5394, 5396, 4, 1, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30152);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30152);


    REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewXP`, `RewMoneyMaxLevel`, `CompleteEmote`) VALUES (30212, 6, -82, 50, 52, 64, 8, 30213, 'Mastering the Elements', 'Welcome, mon.  You bring me the elements and then we do the talkin\'.', 'Bring the elements earth, air, fire and water to Rin Tohsaka.', 'These be the elements I need. Now we talk.', 'Where\'s the elements, mon?', '', '', '', '', '', 7069, 7067, 7068, 7070, 1, 1, 1, 1, 3800, 9000, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30212);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30212);
    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `RewSpellCast`, `CompleteEmote`) VALUES (30153, 1519, 30, 30, 64, 8, 'Call of Air', 'The winds of Kalimdor rush to meet you and you shall be counted among some of our most powerful $g brothers:sisters;. I am proud to see you have come this far and have such a promising future.$B$BThe element of air is a difficult one to control, but I have faith that your skills will overcome any obstacles that are placed in front of you.$B$BHead to the very south of the Barrens, and enter Thousand Needles. It is there, far to the east, that you will find Rin Tohsaka. She will teach you more.', 'Find Rin Tohsaka in Thousand Needles.', 'For the time being, I shall give you what you need to focus your spells and to call upon the spirits of air. Take this totem, and when you are ready, train with me some more.', '', '', '', '', '', 5178, 1, 2450, 1500, 8385, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30213);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30213);
    REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `CompleteScript`) VALUES (30213, 6, -82, 50, 52, 64, 30212, 30214, 'Spirit Totem', 'The elemental spirits of this place don\'t be likin\' me any more.$b$bYou know about the totems more than any, and I be needin\' a spirit totem to protect me.  We already got the elements, now we need somethin\' more with more nature.  More primal.$b$bIn the Western Plaguelands you can kill bears for claws and spiders for their eyes.  The carrion birds eat everything, so they might have either one.', 'Bring the pieces for the spirit totem to Rin Tohsaka.', 'Great, mon!  Let\'s try it out....', 'The spirits know what we\'re up to, and they been tryin\' to kill me!  I hope you got the parts.', '', '', '', '', '', 20610, 20611, 8, 8, 5100, 12300, 1, 1, 1, 1, 0);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30213);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30213);
    REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30214, 6, -82, 50, 52, 81, 64, 30213, 'Da Voodoo', 'The spirit totem just isn\'t enough.  We be needin\' some voodoo magic to make it work jus\' right.$b$bThe trolls in the sunken temple have feathers strong with voodoo magics.  Go there and kill Gasher, Mijan, Zolo, Hukku, Zul\'lor, and Loro.  Then we have magic enough for a real spirit totem.', 'Bring the voodoo feathers to Rin Tohsaka.', 'It\'s about time this troll got a full night\'s rest!  The spirit totem will watch over me.$b$bI been a long time collectin\' things, maybe you want somethin\' for all your trouble?', 'Where\'s the feathers, mon?', '', '', '', '', '', 20606, 20607, 20608, 2, 2, 2, 20369, 20503, 20556, 1, 1, 1, 6350, 15500, 15300, 1, 1, 6, 6, 5);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30214);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30214);

-- Breadcrumb Northshire Abbey class trainer quests
    -- Hunter
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30250, -141, 1, 1, 4, 513, 7, 9570, 1, 'Consecrated Letter', 'I was asked to bring this to your attention as soon as you returned from the kobold camps, $N. It appears to be a letter sealed with the insignia of Thorgas Grimson, our local paladin trainer. I wouldn\'t hesitate to read it before you go about any other business here in the Abbey.', 'Read the Consecrated Letter and speak to Thorgas Grimson in Northshire Abbey.', 'In the meantime, you should know one or two other things. You are a symbol to many here in this land--act accordingly. The Holy Light shines within you, and it will be obvious to both your allies and your enemies.$B$BAlso, as you gain in wisdom and power, you will need to train to learn new abilities. That\'s where I come in. When you feel you\'ve gained some experience here in Northshire, come back to me and I will teach you what I feel you are ready to learn. Good luck... $c!', 'Finally! We meet face to face, brother to $gbrother:sister;. I welcome you to Northshire. This will be your home for a short time while you learn the ins and outs of how things are done, but know that Stormwind is not far off, and sooner or later, your path will take you there. But until then, be patient... Knight of the Silver Hand.', '', '', '', '', '', 9570, 1, 72, 50, 1, 40, 30, 1, 4, 4, 1, 1);

        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (197, 30250);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (895, 30250);

    -- Shaman
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30251, -141, 1, 1, 64, 513, 7, 9570, 1, 'Consecrated Letter', 'I was asked to bring this to your attention as soon as you returned from the kobold camps, $N. It appears to be a letter sealed with the insignia of Illya Einzbern, our local paladin trainer. I wouldn\'t hesitate to read it before you go about any other business here in the Abbey.', 'Read the Consecrated Letter and speak to Illya Einzbern in Northshire Abbey.', 'In the meantime, you should know one or two other things. You are a symbol to many here in this land--act accordingly. The Holy Light shines within you, and it will be obvious to both your allies and your enemies.$B$BAlso, as you gain in wisdom and power, you will need to train to learn new abilities. That\'s where I come in. When you feel you\'ve gained some experience here in Northshire, come back to me and I will teach you what I feel you are ready to learn. Good luck... $c!', 'Finally! We meet face to face, brother to $gbrother:sister;. I welcome you to Northshire. This will be your home for a short time while you learn the ins and outs of how things are done, but know that Stormwind is not far off, and sooner or later, your path will take you there. But until then, be patient... Knight of the Silver Hand.', '', '', '', '', '', 9570, 1, 72, 50, 1, 40, 30, 1, 4, 4, 1, 1);

        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (197, 30251);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90033, 30251);

    -- Druid
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30288, -263, 1, 1, 1024, 520, 7, 9580, 1, 'Verdant Sigil', 'This sigil was given to me by a messenger from our druid trainer, Mardant. It seems Mardant would have words with you when you have a moment. Read it and bring it to him afterwards.', 'Read the Verdant Sigil and speak to Mardant Strongoak, in Northshire Valley.', 'I will be your mentor and guide for now. It is my duty to teach you how to interpret not only what the spirits communicate to us, but also the complexities and secrets of the Emerald Dream.$B$BAs you learn and grow in power, you will learn more of our sleeping trance. But until then, return to me as often as you like and I will teach you what I can in the ways of our kind.', 'Ah, young $c. I see you\'re eager to continue your studies. Good.$B$BI wonder, have you spent much time in the Emerald Dream already? Perhaps you\'re not prepared for that yet... In time, I\'m sure.$B$BBut until then, we should discuss other matters.', '', '', '', '', '', 9580, 1, 69, 50, 1, 40, 30, 1, 2, 2, 1, 1, 1);

        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (197, 30288);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3597, 30288);

-- Missing In Action (Change time limit to 60m)
    DELETE FROM `quest_start_scripts` WHERE `id`=219;
    REPLACE `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
    (219, 0, 0, 61, 219, 3600, 0, 0, 0, 0, 0, 8, 0, 21901, 1014, 21902, 0, 0, 0, 0, 0, 'Missing In Action: Corporal Keeshan - Start Scripted Map Event'),
    (219, 1, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Missing In Action: Corporal Keeshan - Remove Quest Giver Flag'),
    (219, 1, 0, 22, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Missing In Action: Corporal Keeshan - Set Faction to Escortee'),
    (219, 1, 0, 20, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Missing In Action: Corporal Keeshan - Start Waypoints');

-- Rampaging Giants
UPDATE `mangos`.`quest_template` SET `RewRepValue1`=200 WHERE  `entry`=5981 AND `patch`=0;

-- BFD - Add Outlaw Sabre to Blackfathom Villainy
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId3`=16886, `RewChoiceItemCount3`=1 WHERE  `entry`=1200 AND `patch`=0;

-- Whirlwind Weapon (WAR quest) - Add selectable 1h choice that gives two 1h
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId4`=30074, `RewChoiceItemCount4`=2 WHERE  `entry`=1792 AND `patch`=0;

-- ST quests offer all rewards
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=20521, `RewItemId2`=20130, `RewItemId3`=20517, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8425 AND `patch`=6;

-- Druid ST class quest (All rewards + added a Feral Fangs for Feral)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=22274, `RewItemId2`=22272, `RewItemId3`=22458, `RewItemId4`=30149, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1, `RewItemCount4`=1 WHERE  `entry`=9053 AND `patch`=8;

-- Rogue ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=19984, `RewItemId2`=20255, `RewItemId3`=19982, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8236;

-- Hunter ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=20083, `RewItemId2`=19991, `RewItemId3`=19992, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8232;

-- Priest ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=19990, `RewItemId2`=20082, `RewItemId3`=20006, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8257;

-- Mage ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=20035, `RewItemId2`=20036, `RewItemId3`=20037, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8253;

-- Warlock ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=20536, `RewItemId2`=20534, `RewItemId3`=20530, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8422;

-- Paladin ST class quest (All rewards)
UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemId3`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewChoiceItemCount3`=0, `RewItemId1`=20504, `RewItemId2`=20512, `RewItemId3`=20505, `RewItemCount1`=1, `RewItemCount2`=1, `RewItemCount3`=1 WHERE  `entry`=8418;

-- New quest rewards
    -- Wanted! Marez Cowl add Blood-tinged Armor as a reward
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=4744, `RewChoiceItemId2`=4507, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewItemId1`=0, `RewItemCount1`=0 WHERE  `entry`=684 AND `patch`=0;

    -- Hints of a New Plague add Barbarians Sword as a reward
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId3`=30124, `RewChoiceItemCount3`=1 WHERE  `entry`=661 AND `patch`=0;

    -- Wanted! Otto and Falconcrestadd Lesser Libram of Consecration, Lesser Totem of Nullification and Lesser Idol of Elune as a reward
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId3`=30130, `RewChoiceItemId4`=30139, `RewChoiceItemId5`=30252, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1 WHERE  `entry`=685 AND `patch`=0;

    -- Retrieval for Mauren add Minor Libram of Consecration Minor Totem of Nullification and Minor Idol of Elune as a reward
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=6677, `RewChoiceItemId2`=30129, `RewChoiceItemId3`=30138, `RewChoiceItemId4`=30251, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewItemId1`=0, `RewItemCount1`=0 WHERE  `entry`=1078 AND `patch`=0;

    -- Bring the Light Reward (Added Choice between Vanquisher Sword, Tomoe and Acha d'Armas)
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=10823, `RewChoiceItemId2`=30146, `RewChoiceItemId3`=30259, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewItemId1`=10824, `RewItemId2`=0 WHERE  `entry`=3636 AND `patch`=0;

    -- In the Name of the Light (Added Tigerfangs)
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId4`=11262, `RewChoiceItemId5`=30147, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1 WHERE  `entry`=1053 AND `patch`=0;

    -- Corruption of Earth and Seed (Added Engetsuto and Gerwitz's Axe)
    UPDATE `mangos`.`quest_template` SET `RewChoiceItemId4`=30148, `RewChoiceItemId5`=30260, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1 WHERE  `entry`=7065 AND `patch`=0;

-- Quest adjustments
    -- Yeti Fur Cloak item requirements (remove Wool Cloth and Hillmans Cloak)
    UPDATE `mangos`.`quest_template` SET `Objectives`='Bring Bartolo Ginsetti of Southshore a Fine Thread and 10 clumps of Yeti Fur.', `ReqItemId1`=2321, `ReqItemId2`=3720, `ReqItemId3`=0, `ReqItemId4`=0, `ReqItemCount2`=10, `ReqItemCount3`=0, `ReqItemCount4`=0 WHERE  `entry`=565 AND `patch`=0;

-- ??? Rep - Blasted Lands
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8716, 30007, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8717, 30007, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8718, 30007, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12396, 30007, 20);

REPLACE `mangos`.`faction` (`id`, `build`, `reputation_list_id`, `base_rep_race_mask1`, `base_rep_race_mask2`, `base_rep_race_mask3`, `base_rep_value1`, `base_rep_value2`, `base_rep_value3`, `reputation_flags1`, `reputation_flags2`, `name`, `description`) VALUES (476, 5302, 55, 73, 178, 4, 150, -42000, 500, 16, 22, 'Nethergarde Defenders', 'Stout defenders of the Dark Portal.');
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `hostile_mask`, `friend_faction1`) VALUES (1678, 4222, 476, 4, 471);
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1679, 4222, 476, 2081, 3, 2, 12, 471);
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1680, 4222, 476, 33, 2, 2, 4, 471);

UPDATE `mangos`.`creature_template` SET `faction`=1678 WHERE  `entry`=5385 AND `patch`=0;
UPDATE `mangos`.`creature_template` SET `faction`=1678 WHERE  `entry`=5393 AND `patch`=0;
REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30000, 0, 4, 58, 62, 264, 1, 'Demon Bounty', '', '', 'Please bring me more demon cores.', 'Please bring me more demon cores.', '', '', '', '', '', 30007, 5, 476, 150, 390, 25, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30000);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30000);
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30001, 4, 58, 62, 5, 8, 1, 0, 'Legion Clean Up', 'Thin the lines of the Legion and help us push them back!', 'Kill 20 Felguard Elites, 10 Doomguard Commanders, and 3 Dreadlords then return to Watcher Mahar Ba.', 'Well done $N. Maybe we will live for another day.', 'The Legion must fall!', '', '', '', '', '', 8717, 12396, 8716, 20, 5, 5, 476, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30001);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30001);
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30002, 4, 58, 62, 5, 8, 1, 0, 'Manahound Round Up', 'Clear out Mana Hounds.', 'Annihilate 50 Mana Hounds.', 'Well done $N. Maybe we will live for another day.', 'The Legion must fall!', '', '', '', '', '', 8718, 50, 476, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30002);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30002);

-- Caretakers of Karazhan - Deadwind Pass
REPLACE `mangos`.`faction` (`id`, `build`, `reputation_list_id`, `base_rep_race_mask1`, `base_rep_race_mask2`, `base_rep_race_mask3`, `base_rep_value1`, `base_rep_value2`, `base_rep_value3`, `reputation_flags1`, `reputation_flags2`, `name`, `description`) VALUES (477, 5302, 56, 73, 178, 4, 150, -42000, 500, 16, 22, 'Caretakers of Karazhan', 'Medivh\'s personal caretakers.');
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `hostile_mask`, `friend_faction1`) VALUES (1681, 4222, 477, 4, 471);
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1682, 4222, 477, 2081, 3, 2, 12, 471);
REPLACE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1683, 4222, 477, 33, 2, 2, 4, 471);

-- REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `unit_flags`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90035, 'Maximillian Arturo', 'Caretaker of Karazhan', 58, 58, 1681, 2, 1724, 1, 1, 3, 0.8, 1000, 100, 100, 1, 4096, 7, '', 264, 524296);

REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30003, 41, 58, 60, 5, 8, 1, 0, 'Clear the Crypts', 'Rid the Crypts underneath Karazhan of Damned Souls, and Wailing Spectres.', 'Kill 25 Damned Souls and 25 Wailing Spectres.', 'Well done $N. Now the ghostly presence should be lowered.', 'Karazhan is all I care about.', '', '', '', '', '', 12378, 12377, 25, 25, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30003);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30003);

REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30004, 0, 41, 58, 62, 264, 1, 'Ectoplasm Collection', '', '', 'Please bring me Ghost Ectoplasm from the Unliving near Karazhan.', 'Please bring me Ghost Ectoplasm from the Unliving near Karazhan.', '', '', '', '', '', 30016, 5, 477, 150, 390, 25, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30004);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30004);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12379, 30016, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12380, 30016, 20);

REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30005, 41, 58, 60, 5, 8, 1, 0, 'Exorcise the Unliving', 'Kill the Unliving Residents and Unliving Caretakers near Karazhan.', 'Kill 25 Unliving Residents and 25 Unliving Caretakers.', 'Well done $N. Now the ghostly presence should be lowered.', 'Karazhan is all I care about.', '', '', '', '', '', 12380, 12379, 25, 25, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30005);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30005);

REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30006, 0, 41, 58, 62, 264, 1, 'Shade Dust', '', '', 'Bring me Shade Dust from the Restless Shades in the crypts underneath Karazhan.', 'Please bring me Shade Dust from the Restless Shades in the crypts underneath Karazhan.', '', '', '', '', '', 30017, 25, 477, 150, 390, 25, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30006);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30006);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7370, 30017, 100);

REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30007, 0, 41, 58, 62, 264, 1, 'Ogre Beads', '', '', 'Bring me Ogre Beads from the Deadwind Ogres ', 'Bring me Ogre Beads from the Deadwind Ogres.', '', '', '', '', '', 30018, 10, 477, 150, 390, 25, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30007);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30007);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7372, 30018, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7371, 30018, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7379, 30018, 20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7369, 30018, 20);

REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30008, 41, 58, 60, 5, 8, 1, 0, 'Ogre Round Up', 'Kill 20 Deadwind Warlocks, 10 Deadwind Maulers and 20 Deadwind Ogre Mages.', 'Kill 20 Deadwind Warlocks, 10 Deadwind Maulers and 20 Deadwind Ogre Mages.', 'Well done $N. Those Ogres must be pushed out of Deadwind Pass.', 'Karazhan is all I care about.', '', '', '', '', '', 7372, 7371, 7379, 20, 10, 20, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30008);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30008);

-- Soul Shard Fragment
    -- Object 
    Replace `mangos`.`gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `data0`, `data1`, `data3`, `data9`) VALUES (987660, 1, 3, 5746, 'Soulshard Fragment', 43, 42907, 1, 59);

    -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100065, 987660, 0, -11144.9, -1997.07, 16.6595, 4.13683, 0, 0, 0.878722, -0.477334, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100082, 987660, 0, -11050.2, -1909.55, -16.1079, 4.66069, 0, 0, 0.725147, -0.688594, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100066, 987660, 0, -11192.2, -1975.47, 22.843, 3.23837, 0, 0, 0.998829, -0.0483706, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100067, 987660, 0, -11153.1, -1963.64, 22.8584, 4.29081, 0, 0, 0.839406, -0.543505, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100068, 987660, 0, -11088.7, -1956.62, 2.20438, 4.59632, 0, 0, 0.746928, -0.664905, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100069, 987660, 0, -11061.7, -1901.15, -2.65591, 3.77952, 0, 0, 0.949561, -0.313584, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100070, 987660, 0, -11105, -1907.91, 1.01614, 3.94446, 0, 0, 0.920503, -0.390736, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100071, 987660, 0, -11026.1, -1902.85, -2.739, 0.441577, 0, 0, 0.218999, 0.975736, 360, 25, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100072, 987660, 0, -11068.8, -1916.76, -6.11092, 0.558602, 0, 0, 0.275684, 0.961248, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100073, 987660, 0, -11188.6, -1933.94, -14.3207, 3.99551, 0, 0, 0.91023, -0.414102, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100074, 987660, 0, -11182, -1918.88, -14.6565, 0.377174, 0, 0, 0.187471, 0.98227, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100075, 987660, 0, -11115.3, -1851.29, -10.195, 0.728247, 0, 0, 0.356131, 0.934436, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100076, 987660, 0, -11074, -1851.78, -24.9589, 0.763586, 0, 0, 0.372585, 0.927998, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100077, 987660, 0, -11038, -1934.6, -25.6881, 4.58377, 0, 0, 0.751087, -0.660204, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100078, 987660, 0, -11018.2, -1832.82, -32.8327, 5.33383, 0, 0, 0.457052, -0.88944, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100079, 987660, 0, -10920.1, -1848.92, -15.3825, 5.8035, 0, 0, 0.237552, -0.971375, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100080, 987660, 0, -10928.2, -1898.79, -14.568, 3.65072, 0, 0, 0.967773, -0.251836, 360, 25, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100083, 987660, 0, -11181.4, -2009.68, 22.7917, 0.201148, 0, 0, 0.100405, 0.994947, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100084, 987660, 0, -11168.4, -1965.3, 35.7493, 1.57167, 0, 0, 0.707415, 0.706798, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100085, 987660, 0, -11184.3, -1966.06, 35.7488, 3.18959, 0, 0, 0.999712, -0.0239959, 360, 360, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100086, 987660, 0, -11149.8, -1968.13, 35.7491, 6.26914, 0, 0, 0.00702486, -0.999975, 360, 360, 100, 1, 0, 0, 0, 10);


    -- Object loot (Soulshard Fragment)
    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42907, 30208, 100);

-- Eerie Altar
    -- Object 
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987661, 2, 328, 'Eerie Altar', 4);

    -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100081, 987661, 0, -10944.1, -1871.57, -17.8518, 6.21974, 0, 0, 0.0317174, -0.999497, 25, 25, 100, 1, 0, 0, 0, 10);

    -- Quest
        -- Quest Template
            -- Gem of the North + Winterstone - > Spawns Taxim
                REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `ReqItemId3`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30252, 0, 41, 58, 62, 264, 1, 'Ritual - North', '', '', '', 'There is an eerie looking altar before you.', '', '', '', '', '', 30208, 25, 30229, 1, 30234, 1, 0, 0, 0, 0, 0, 0, 10000);

            -- Gem of the South + Summerstone - > Spawns Zareehkl
                REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `ReqItemId3`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30260, 0, 41, 58, 62, 264, 1, 'Ritual - South', '', '', '', 'There is an eerie looking altar before you.', '', '', '', '', '', 30208, 25, 30232, 1, 30233, 1, 0, 0, 0, 0, 0, 0, 10005);

            -- Gem of the East + Springstone - > Spawns Velionis
                REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `ReqItemId3`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30261, 0, 41, 58, 62, 264, 1, 'Ritual - East', '', '', '', 'There is an eerie looking altar before you.', '', '', '', '', '', 30208, 25, 30230, 1, 30236, 1, 0, 0, 0, 0, 0, 0, 10006);

            -- Gem of the West + Autumnstone - > Spawns Quasimodo
                REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `ReqItemId3`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30262, 0, 41, 58, 62, 264, 1, 'Ritual - West', '', '', '', 'There is an eerie looking altar before you.', '', '', '', '', '', 30208, 25, 30231, 1, 30235, 1, 0, 0, 0, 0, 0, 0, 10007);

            -- TODO: Altars spread over zone instead of all in same place maybe?
            -- TODO: Pop requiring 4 seals from the above NMs. Put altar in the unused cave that requires clicking a gate to open, all the way in the back

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987661, 30252);
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987661, 30260);
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987661, 30261);
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987661, 30262);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987661, 30252);
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987661, 30260);
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987661, 30261);
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987661, 30262);

        -- quest_end_script 
            -- (Temp Summon Taxim)
                DELETE FROM `quest_end_scripts` WHERE `id`=10000;
                REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10000, 5, 0, 10, 90060, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Skeletal Warlord');

            -- (Temp Summon Zareehkl)
                DELETE FROM `quest_end_scripts` WHERE `id`=10005;
                REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10005, 5, 0, 10, 90061, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Ghoul');

            -- (Temp Summon Velionis)
                DELETE FROM `quest_end_scripts` WHERE `id`=10006;
                REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10006, 5, 0, 10, 90067, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Skeletal Mage');

            -- (Temp Summon Quasimodo)
                DELETE FROM `quest_end_scripts` WHERE `id`=10007;
                REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10007, 5, 0, 10, 90065, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Gargoyle');

-- Corrupted Runestone
    -- Object 
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987662, 2, 1027, 'Corrupted Runestone', 4);
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987663, 2, 1027, 'Corrupted Runestone', 4);
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987664, 2, 1027, 'Corrupted Runestone', 4);

    -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100087, 987662, 0, -10779.9, -2155.12, 117.133, 3.60504, 0, 0, 0.973272, -0.229656, 25, 25, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100088, 987663, 0, -10453.6, -2152.48, 91.0521, 1.39022, 0, 0, 0.64047, 0.767983, 25, 25, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100089, 987664, 0, -10565, -1705.04, 99.7889, 5.0109, 0, 0, 0.594097, -0.804394, 25, 25, 100, 1, 0, 0, 0, 10);

    -- Quest
        -- Quest Template
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30253, 0, 41, 58, 62, 264, 1, 'Runestone', '', '', '', 'It looks like a Soulshard Fragment could fit inside the hole here perfectly.', '', '', '', '', '', 30208, 10, 0, 0, 0, 0, 0, 0, 10001);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30254, 0, 41, 58, 62, 264, 1, 'Runestone', '', '', '', 'It looks like a Soulshard Fragment could fit inside the hole here perfectly.', '', '', '', '', '', 30208, 10, 0, 0, 0, 0, 0, 0, 10002);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30255, 0, 41, 58, 62, 264, 1, 'Runestone', '', '', '', 'It looks like a Soulshard Fragment could fit inside the hole here perfectly.', '', '', '', '', '', 30208, 10, 0, 0, 0, 0, 0, 0, 10003);

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987662, 30253);
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987663, 30254);
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987664, 30255);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987662, 30253);
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987663, 30254);
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987664, 30255);

        -- quest_end_script (Give item)
            DELETE FROM `quest_end_scripts` WHERE `id`=10001;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10001, 0, 0, 81, 4100087, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10001, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');

            DELETE FROM `quest_end_scripts` WHERE `id`=10002;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10002, 0, 0, 81, 4100088, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10002, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');

            DELETE FROM `quest_end_scripts` WHERE `id`=10003;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10003, 0, 0, 81, 4100089, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10003, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');


    -- Kirin Tor Coffer
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987665, 3, 10, 'Kirin Tor Coffer', 94, 57, 42908, 1, 1, 1, 1500, 2500);

        -- Object Spawns
        -- Dont forget 30m respawn timer (1800)
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100090, 987665, 0, -11052.1, -1906.41, -15.2643, 5.14985, 0, 0, 0.536824, -0.843695, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100091, 987665, 0, -11185.9, -1935.93, -14.327, 0.41076, 0, 0, 0.203939, 0.978984, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100092, 987665, 0, -11148.6, -1969.97, 35.7492, 3.01043, 0, 0, 0.99785, 0.0655359, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100093, 987665, 0, -11061.1, -2039.2, 31.114, 2.48263, 0, 0, 0.94621, 0.323554, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100094, 987665, 0, -10992.6, -2055.83, 92.9714, 2.29492, 0, 0, 0.911723, 0.410806, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100095, 987665, 0, -11168.6, -2454.08, 107.879, 5.85904, 0, 0, 0.210484, -0.977597, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100096, 987665, 0, -11094, -2462.02, 113.397, 1.76712, 0, 0, 0.773002, 0.634403, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100097, 987665, 0, -10896.8, -2350.27, 117.749, 1.27231, 0, 0, 0.594109, 0.804385, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100098, 987665, 0, -10770.7, -2174.83, 122.246, 3.14549, 0, 0, 0.999998, -0.00194983, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100099, 987665, 0, -10733.8, -2078.53, 136.75, 1.13096, 0, 0, 0.53582, 0.844332, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100100, 987665, 0, -10424.3, -2135.67, 91.821, 3.69135, 0, 0, 0.962458, -0.271431, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100101, 987665, 0, -10277.8, -2050.65, 55.9284, 2.2258, 0, 0, 0.896984, 0.442063, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100102, 987665, 0, -10348.5, -1886.9, 39.1211, 2.31219, 0, 0, 0.915237, 0.402917, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100103, 987665, 0, -10549, -1877.68, 116.145, 2.03337, 0, 0, 0.850369, 0.526187, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100104, 987665, 0, -10697.7, -1930.37, 98.3556, 4.14607, 0, 0, 0.876506, -0.48139, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100105, 987665, 0, -10944.6, -1987.69, 75.0819, 2.32705, 0, 0, 0.918205, 0.396105, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100106, 987665, 0, -11072.9, -2129.64, 6.71916, 2.18017, 0, 0, 0.886666, 0.462411, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100121, 987665, 0, -11357.7, -2154.08, 23.1316, 0.24832, 0, 0, 0.123841, 0.992302, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100122, 987665, 0, -11245.8, -2180.8, 36.1472, 4.54445, 0, 0, 0.763921, -0.64531, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100123, 987665, 0, -11182.3, -2243.69, 22.7071, 1.46569, 0, 0, 0.668986, 0.743275, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100124, 987665, 0, -11153.1, -2185.95, 22.7065, 3.08361, 0, 0, 0.99958, 0.0289894, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100125, 987665, 0, -11231.8, -2165.54, 22.7073, 0.0833858, 0, 0, 0.0416808, 0.999131, 1800, 1800, 100, 1, 0, 0, 0, 10);

        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42908; -- To ensure duplicate entries are not added
        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42908, 30228, 100, 0, 1);

    -- Curtana
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987667, 3, 4175, 'Curtana', 94, 57, 42909, 1, 1, 1, 0, 0);

        -- Object Spawns
        -- Don't forget 4hr respawn timer (7200)
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100108, 987667, 0, -11405.9, -2152.9, 34.6624, 4.71169, 0, 0, 0.707354, -0.706859, 7200, 7200, 100, 1, 0, 0, 0, 10);


        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42909; -- To ensure duplicate entries are not added
        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42909, 30255, 100, 0, 1);

-- Ogre Mound (Used to summon Highlord Ogrok)
    -- Object 
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`) VALUES (987666, 2, 20, 'Ogre Mound', 84, 4);

    -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100107, 987666, 0, -10812.3, -2098.57, 117.131, 2.11545, 0, 0, 0.871241, 0.490856, 25, 25, 100, 1, 0, 0, 0, 10);


    -- Quest
        -- Quest Template
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30256, 0, 41, 58, 62, 264, 1, 'Tribute', '', '', '', 'There is an Ogre Mound before you. Place an item in it in Tribute to the nearby Ogres?', '', '', '', '', '', 30237, 1, 0, 0, 0, 0, 0, 0, 10004);

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987666, 30256);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987666, 30256);

        -- quest_end_script (Temp Summon Highlord Ogrok)
            DELETE FROM `quest_end_scripts` WHERE `id`=10004;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10004, 5, 0, 10, 90094, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1,-10813.6, -2094.34, 117.132, 2.07719, 0, 'Ogre Mound: Summon Highlord Ogrok');

-- Enchanted Dirt (Used to summon Ogopogo)
    -- Object 
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`) VALUES (987668, 2, 20, 'Enchanted Dirt', 84, 4);

    -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100109, 987668, 0, -11074.5, -2132.78, 6.18172, 2.35391, 0, 0, 0.923442, 0.383737, 25, 25, 100, 1, 0, 0, 0, 10);

    -- Quest
        -- Quest Template
            -- Don't forget to add the quest_end_script to the end under `CompleteScript`!!
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30264, 0, 41, 58, 62, 264, 1, 'Enchanted Dirt', '', '', '', 'There is a carving here that says something but it is hard to read. "C...t...a...na".', '', '', '', '', '', 30255, 1, 0, 0, 0, 0, 0, 0, 10008);

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987668, 30264);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987668, 30264);

        -- quest_end_script (Temp Summon Ogopogo)
            DELETE FROM `quest_end_scripts` WHERE `id`=10008;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10008, 5, 0, 10, 90098, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0 ,0 , 0, 'Enchanted Dirt: Summon Ogopogo');

    -- Curtana
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987669, 3, 32, 'Aged Karazhan Ale', 94, 57, 42910, 1, 1, 1, 0, 0);

        -- Object Spawns
        -- TODO: Respawn time (5m)
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100110, 987669, 0, -11163.5, -2101.39, 31.239, 4.67878, 0, 0, 0.718888, -0.695126, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100111, 987669, 0, -11208, -2107.14, 31.2399, 4.47064, 0, 0, 0.78721, -0.616685, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100112, 987669, 0, -11175, -2158.29, 22.7066, 4.5688, 0, 0, 0.756006, -0.654564, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100113, 987669, 0, -11073.6, -2195.31, 14.7724, 1.56465, 0, 0, 0.704931, 0.709275, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100114, 987669, 0, -11237, -2215.04, 22.7048, 0.00562239, 0, 0, 0.00281119, 0.999996, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100115, 987669, 0, -11363, -2216.69, 23.2868, 4.62769, 0, 0, 0.736408, -0.676537, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100116, 987669, 0, -11211.1, -2142.23, 22.7061, 1.54501, 0, 0, 0.697931, 0.716165, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100117, 987669, 0, -11412.7, -2179.67, 23.2035, 3.0569, 0, 0, 0.999104, 0.0423318, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100118, 987669, 0, -11246.3, -2206.71, 22.7044, 4.68269, 0, 0, 0.71753, -0.696528, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100119, 987669, 0, -11074.7, -2221.24, 15.7904, 4.65363, 0, 0, 0.727574, -0.686029, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100120, 987669, 0, -11209.2, -2130.9, 26.9735, 3.12996, 0, 0, 0.999983, 0.00581853, 300, 360, 100, 1, 0, 0, 0, 10);


        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42910; -- To ensure duplicate entries are not added
        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42910, 30256, 100, 0, 1);

    -- Fel Gem (Trade Soulshards for random buff OR debuff)
        -- Object
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987670, 2, 327, 'Fel Gem', 4);

        -- Object Spawns
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100126, 19901, 0, -10810.1, -1979.05, 123.709, 0.880017, 0, 0, 0.425947, 0.904748, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100127, 987670, 0, -10810.1, -1979.05, 123.709, 0.880017, 0, 0, 0.425947, 0.904748, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100128, 19901, 0, -10879.9, -2144.29, 117.132, 1.86175, 0, 0, 0.802144, 0.597131, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100129, 987670, 0, -10879.9, -2144.29, 117.132, 1.86175, 0, 0, 0.802144, 0.597131, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100130, 19901, 0, -10950.3, -2157.19, 117.072, 6.15787, 0, 0, 0.0626151, -0.998038, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100131, 987670, 0, -10950.3, -2157.19, 117.072, 6.15787, 0, 0, 0.0626151, -0.998038, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100132, 19901, 0, -11115.3, -2080.41, 48.2955, 2.91809, 0, 0, 0.993762, 0.111518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100133, 987670, 0, -11115.3, -2080.41, 48.2955, 2.91809, 0, 0, 0.993762, 0.111518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100134, 19901, 0, -11216.1, -2015.8, 47.0986, 1.47688, 0, 0, 0.673137, 0.739518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100135, 987670, 0, -11216.1, -2015.8, 47.0986, 1.47688, 0, 0, 0.673137, 0.739518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100136, 19901, 0, -11106.1, -1980.45, 47.0763, 3.91238, 0, 0, 0.926651, -0.375923, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100137, 987670, 0, -11106.1, -1980.45, 47.0763, 3.91238, 0, 0, 0.926651, -0.375923, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100138, 19901, 0, -10931, -1964.88, 116.156, 1.24593, 0, 0, 0.583447, 0.812151, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100139, 987670, 0, -10931, -1964.88, 116.156, 1.24593, 0, 0, 0.583447, 0.812151, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100140, 19901, 0, -10768.6, -1810.52, 124.555, 1.80671, 0, 0, 0.785407, 0.61898, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100141, 987670, 0, -10768.6, -1810.52, 124.555, 1.80671, 0, 0, 0.785407, 0.61898, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100142, 987670, 0, -11169.1, -2071.56, 48.3018, 3.08296, 0, 0, 0.99957, 0.029314, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100143, 19901, 0, -11169.1, -2071.56, 48.3018, 3.08296, 0, 0, 0.99957, 0.029314, 960, 960, 100, 1, 0, 0, 0, 10);

    -- Quest
        -- Quest Template
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30267, 0, 41, 58, 62, 264, 1, 'Fel Gem', '', '', '', 'Play the game of luck?', '', '', '', '', '', 30208, 10, 0, 0, 0, 0, 0, 0, 10009);

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987670, 30267);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987670, 30267);

        -- quest_end_script (Cast spell on Player, then Despawn for 16m)
            DELETE FROM `quest_end_scripts` WHERE `id`=10009;
            REPLACE `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10009, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Gem: Despawn Object'),
            (10009, 1, 0, 15, 34185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Gem: Cast Spell on Player');


-- NPC for Karazhan Mementos
    -- Creature Template
        REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `armor_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90099, 'Prospector Ariden', 'Explorers\' League', 16, 16, 55, 2, 1277, 1, 1, 7, 1, 2, 2917, 4718662, 2);

    -- Creature (Spawn)
        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000128, 90099, 0, 0, 0, 0, 0, -10434.7, -2137.54, 90.7795, 3.41392, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Quest(s)
        REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30257, 0, 41, 58, 62, 264, 1, 'Karazhan Memento - Kirin Tor Rune Dust', '', '', 'Bring me anything interesting you find around Karazhan.', 'Bring me anything interesting you find around Karazhan.', '', '', '', '', '', 30228, 25, 30225, 1, 0, 0, 0, 0, 0, 0);

        REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30258, 0, 41, 58, 62, 264, 1, 'Karazhan Memento - Mana Fragment', '', '', 'Bring me anything interesting you find around Karazhan.', 'Bring me anything interesting you find around Karazhan.', '', '', '', '', '', 30228, 25, 30226, 1, 0, 0, 0, 0, 0, 0);

        REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30259, 0, 41, 58, 62, 264, 1, 'Karazhan Memento - Mana Infused Cloth Scraps', '', '', 'Bring me anything interesting you find around Karazhan.', 'Bring me anything interesting you find around Karazhan.', '', '', '', '', '', 30228, 25, 30227, 1, 0, 0, 0, 0, 0, 0);

        REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30265, 0, 41, 58, 62, 264, 1, 'Thousand Year Brew', '', '', 'I heard there\'s a basement underneath Karazhan full of very old beer. Being a Dwarf, I ened to try this! Bring me Agred Beer from the the crypts underneath Karazhan.', 'Please bring me Aged Beer from the crypts underneath Karazhan.', '', '', '', '', '', 30256, 8, 477, 150, 390, 25, 1, 1);

        REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30266, 0, 41, 58, 62, 264, 1, 'Shade Essences', '', '', 'Grab a Ghost Vacuum from Wade Wells and then use it to gather Shade Essences from the Restless Shades in Deadwind Pass when their HP is critical.', 'Grab a Ghost Vacuum from Wade Wells and then use it to gather Shade Essences from the Restless Shades in Deadwind Pass when their HP is critical.', '', '', '', '', '', 30061, 5, 477, 150, 390, 25, 1, 1);

        UPDATE `mangos`.`quest_template` SET `RewItemId1`=30211, `RewItemCount1`=1 WHERE  `entry`=30266 AND `patch`=0;

        -- Quest Relation
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90099, 30257);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90099, 30258);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90099, 30259);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90099, 30265);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90099, 30266);

        -- Quest Involved Relation
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90099, 30257);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90099, 30258);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90099, 30259);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90099, 30265);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90099, 30266);

-- Escort NPC + Quest
    -- Creature
        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000132, 90100, 0, 0, 0, 0, 0, -11021.9, -2046.25, 40.7051, 0.619303, 25, 25, 5, 100, 100, 1, 0, 0, 0, 10);

    -- Creature Template
        REPLACE `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `totem_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90100, 0, 'Scared Spirit', NULL, 60, 60, 10, 2, 0, 10481, 10481, 10481, 10481, 0, 0, 0, 0, 25, 25, 25, 25, 100, 0, 1, 1.14286, 20, 5, 0, 6, 0, 0, 1, 1, 2, 2, 1.25, 1, 0.14, 0, 2000, 2000, 0, 168, 168, 168, 168, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '16331', '', 1, 3, 0, 0, 0, 0, 0, 8413718, 0, 0, 0, 0, 0, '');


    -- Quest (escort)
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `CompleteEmote`, `OfferRewardEmote1`, `StartScript`) VALUES (30263, 41, 58, 0, 61, 2, 2, 'Scared Spirit Escort', 'Please help me! Im scared and lost and need to find my way back to Karazhan.', 'Escort the Scared Spirit back to Karazhan.', 'Thank you.', 'Please help me!', 'Escort the Scared Spirit back to Karazhan.', '', '', '', '', 6, 1, 21, 30263);
        
    -- Quest Relation
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90100, 30263);

    -- Quest Involved Relation
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90100, 30263);

    -- Start script for quest Scared Spirit Escort.
        DELETE FROM `quest_start_scripts` WHERE `id`=30263;
        REPLACE `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
        (30263, 0, 0, 61, 30263, 600, 0, 0, 0, 0, 0, 8, 0, 9000000, 1019, 9000000, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Start Scripted Map Event'),
        (30263, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Say Text'),
        (30263, 0, 2, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Remove Questgiver Flag'),
        (30263, 0, 4, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Start Waypoints');


    -- Fail script for quest Scared Spirit Escort.
        DELETE FROM `generic_scripts` WHERE `id`=9000000;
        REPLACE `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
        (9000000, 0, 0, 70, 30263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort Failed: Player - Fail Quest'),
        (9000000, 7200, 0, 71, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort Failed: Scared Spirit - Respawn');

    -- Waypoint scripts for Scared Spirit.
        DELETE FROM `creature_movement_scripts` WHERE `id`=9000000;
        REPLACE `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
        (9000000, 0, 0, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit - Move Idle'),
        (9000000, 1, 0, 10, 90091, 360000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 'Scared Spirit Summon Creature - Overlord Xelnu'),
        (9000000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5947, 101, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit - Say Text'),
        (9000000, 1, 1, 62, 30263, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit - End Scripted Map Event'),
        (9000000, 8, 0, 18, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit - Despawn Creature');

    -- Abjuration Quest Givers
        -- Creature Template
            REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `damage_multiplier`, `civilian`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90103, 'Alphollon C Meriard', 'Priestess of Elune', 13, 13, 80, 2, 4399, 1, 1, 7, 1, 0.75, 1, 4190, 138936390, 2);

            REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90104, 'Charlaimagnat', 'Priestess of Elune', 55, 55, 80, 2, 6840, 1, 1, 7, 2, 1.3, 1.1, 7740, 138936326, 2);

            REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `equipment_id`, `trainer_id`, `static_flags1`, `flags_extra`) VALUES (90105, 'Chasalvige', 'Priestess of Elune', 50, 50, 80, 2, 4573, 2201, 1, 1, 7, 8, 1.25, 0.9, 1.4, 4091, 0, 138936390, 2);

            REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `civilian`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90106, 'Prerivon', 'Priestess of Elune', 40, 40, 80, 2, 4572, 2202, 1, 1, 7, 8, 1.15, 1.5, 1, 4092, 138936390, 2);

        -- Creature
            REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000149, 90103, 0, 0, 0, 0, 1, 9623.91, 2490.84, 1354.81, 6.14488, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
            REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000150, 90104, 0, 0, 0, 0, 1, 9623.64, 2488.56, 1354.81, 6.20378, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
            REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000151, 90105, 0, 0, 0, 0, 1, 9623.15, 2485.88, 1354.81, 6.0742, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
            REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000152, 90106, 0, 0, 0, 0, 1, 9622.28, 2483.37, 1354.81, 6.08205, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

    -- Quests
        -- Zenith Abjurations
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30268, 0, 1657, 58, 62, 264, 1, 'Abjuration - Zenith (Helm)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30263, 1, 30288, 1, 30268, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30269, 0, 1657, 58, 62, 264, 1, 'Abjuration - Zenith (Shoulders)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30264, 1, 30289, 1, 30269, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30270, 0, 1657, 58, 62, 264, 1, 'Abjuration - Zenith (Body)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30265, 1, 30290, 1, 30270, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30271, 0, 1657, 58, 62, 264, 1, 'Abjuration - Zenith (Gloves)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30266, 1, 30291, 1, 30271, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30272, 0, 1657, 58, 62, 264, 1, 'Abjuration - Zenith (Feet)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30267, 1, 30292, 1, 30272, 1, 0, 0, 0, 0, 0, 0);
            
        -- Quest Relation
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90103, 30268);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90103, 30269);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90103, 30270);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90103, 30271);
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90103, 30272);

        -- Quest Involved Relation
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90103, 30268);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90103, 30269);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90103, 30270);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90103, 30271);
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90103, 30272);

        -- Hecatomb Abjurations
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30273, 0, 1657, 58, 62, 264, 1, 'Abjuration - Hecatomb (Helm)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30308, 1, 30293, 1, 30273, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30274, 0, 1657, 58, 62, 264, 1, 'Abjuration - Hecatomb (Shoulders)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30309, 1, 30294, 1, 30274, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30275, 0, 1657, 58, 62, 264, 1, 'Abjuration - Hecatomb (Body)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30310, 1, 30295, 1, 30275, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30276, 0, 1657, 58, 62, 264, 1, 'Abjuration - Hecatomb (Gloves)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30311, 1, 30296, 1, 30276, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30277, 0, 1657, 58, 62, 264, 1, 'Abjuration - Hecatomb (Feet)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30312, 1, 30297, 1, 30277, 1, 0, 0, 0, 0, 0, 0);
        
    -- Quest Relation
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90104, 30273);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90104, 30274);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90104, 30275);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90104, 30276);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90104, 30277);

    -- Quest Involved Relation
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90104, 30273);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90104, 30274);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90104, 30275);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90104, 30276);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90104, 30277);

        -- Crimson Abjuration
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30278, 0, 1657, 58, 62, 264, 1, 'Abjuration - Crimson (Helm)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30313, 1, 30298, 1, 30278, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30279, 0, 1657, 58, 62, 264, 1, 'Abjuration - Crimson (Shoulders)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30314, 1, 30299, 1, 30279, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30280, 0, 1657, 58, 62, 264, 1, 'Abjuration - Crimson (Body)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30315, 1, 30300, 1, 30280, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30281, 0, 1657, 58, 62, 264, 1, 'Abjuration - Crimson (Gloves)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30316, 1, 30301, 1, 30281, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30282, 0, 1657, 58, 62, 264, 1, 'Abjuration - Crimson (Feet)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30317, 1, 30302, 1, 30282, 1, 0, 0, 0, 0, 0, 0);
        
    -- Quest Relation
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90105, 30278);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90105, 30279);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90105, 30280);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90105, 30281);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90105, 30282);

    -- Quest Involved Relation
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90105, 30278);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90105, 30279);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90105, 30280);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90105, 30281);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90105, 30282);

        -- Koenig Abjuration
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30283, 0, 1657, 58, 62, 264, 1, 'Abjuration - Koenig (Helm)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30318, 1, 30303, 1, 30283, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30284, 0, 1657, 58, 62, 264, 1, 'Abjuration - Koenig (Shoulders)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30319, 1, 30304, 1, 30284, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30285, 0, 1657, 58, 62, 264, 1, 'Abjuration - Koenig (Body)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30320, 1, 30305, 1, 30285, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30286, 0, 1657, 58, 62, 264, 1, 'Abjuration - Koenig (Gloves)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30321, 1, 30306, 1, 30286, 1, 0, 0, 0, 0, 0, 0);

            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqItemId2`, `ReqItemCount2`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30287, 0, 1657, 58, 62, 264, 1, 'Abjuration - Koenig (Feet)', '', '', 'Bring me anything interesting you find around Karazhan.', 'May the holy light guide you on your journey.', '', '', '', '', '', 30322, 1, 30307, 1, 30287, 1, 0, 0, 0, 0, 0, 0);
        
    -- Quest Relation
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90106, 30283);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90106, 30284);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90106, 30285);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90106, 30286);
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90106, 30287);

    -- Quest Involved Relation
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90106, 30283);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90106, 30284);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90106, 30285);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90106, 30286);
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90106, 30287);

    -- ERROR: FindScriptTargets: Failed to find target for script with id 9000000 (target_param1: 30263), (target_param2: 0), (target_type: 21).
    -- TODO: Kinelory also assists players that aggrod mobs
    -- https://github.com/vmangos/core/commit/10093b654f5a6ae89e4d34ad1514672eb11bc00b#diff-9bc809fbb897a1cf4299b64d530ce52d80a572ec5252ee228c6716e98bb8321b
    -- TODO: Aggro enemies aggrod to player or be aggressive or something
    -- TODO: Xelnu not despawn OOC 
    -- TODO: Quest to collect an item from Fel mobs spawned by portals that are in Desolace
    -- TODO: AOE spots
    -- TODO: Some cliff you need to jump down to from the main road that has an object thats used to spawn Ogopogo or in a crypt / cave (are there more?)
    -- TODO: Need to escort female NPC up the tower and then it turns into Xelnu (Zelda OOT reference)
    -- TODO: Broken sword from DK boss should work like broken blade of heroes where a bsm can "repair" it
    -- TODO: Copy radiation bolt animation from gnomergan
    -- TODO: Use radiation poisoning visual for the disease from Ogopogo
    -- TODO: Dalinda Malem AI attacks stuff on her own, copy her for Scared Spirit
    -- TODO: Locked chests only rogue can open that give craft mats (pickpocket too!)
    -- TODO: Finish crafted gear (Bait recipe should take level 300+ fish)
    -- TODO: Special weapon drops or from rep vendor that give stuff like the gnomergan Underwater Breathing staff (Detect invis? Detect traps? etc)
    -- TODO: +Demon damage ring from Karazhan? or elementals or something
    -- TODO: How did Book of the Ancients quest make the boss aggro spawner on spawn?
    -- TODO: "Waves" of mobs spawning event for something
    -- TODO: Item that spawns mobs like Ghost-o-plasm Round Up quest you can buy for rep and they drop items needed for a quest to turn in for Ghost Vacuum (remove from vendor)
    -- TODO: Event like "The Grimtotem Weapon" from TBC where you have to drop an item then kill mobs near it
    -- TODO: Karazhan caretaker gear turned into PANTS
    -- TODO: Timed quest to kill x amount of mobs or a boss?

    -- "Crypt Cave" mobs
        -- Ghosts:
            -- Wailing spectre - 12377
            -- damned soul - 12378
            -- restless shade - 7370

            -- Humanoids:
            -- unliving caretaker - 12379
            -- unliving resident - 12380


-- Class quests

-- Warrior 

-- Ring
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemCount1`, `CompleteEmote`) VALUES (30206, -1, 60, 60, 8, 30207, 'A Warriors Journey', 'You have made it to level 60, congratulations. However, your journey does not end there. I have another task for you if you are up for it. Please bring me 75 Abomination Cleaver, 100 Frostsaber Fang and 100 Dredge Crusher Venom.', 'Bring 75 Abomination Cleaver, 100 Frostsaber Fang and 100 Dredge Crusher Venom to Wu Shen in Stormwind.', 'Did you bring me the requested items?', '', '', '', '', '', 30086, 30087, 30088, 75, 100, 100, 30089, 1, 1);
UPDATE `mangos`.`quest_template` SET `RequiredClasses`=1 WHERE  `entry`=30206 AND `patch`=0;
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5479, 30206);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5479, 30206);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7042, 30090, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7043, 30090, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7045, 30090, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7429, 30091, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7428, 30091, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11440, 30092, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11442, 30092, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11443, 30092, -20);


REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemCount1`, `CompleteEmote`) VALUES (30207, -1, 60, 60, 8, 30206, 30208, 'A Warriors Journey', 'You have done well, but there is much more for you to do. Bring me 100 Flamescale Heart, 100 Frostmaul Eye and 100 Gordok Artifact. ', 'Bring 100 Flamescale Heart, 100 Frostmaul Eye and 100 Gordok Artifact to Wu Shen in Stormwind.', 'Did you bring me the requested items?', '', '', '', '', '', 30090, 30091, 30092, 100, 100, 100, 30093, 1, 1);
UPDATE `mangos`.`quest_template` SET `RequiredClasses`=64 WHERE  `entry`=30243 AND `patch`=0;
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5479, 30207);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5479, 30207);

-- Shaman

-- Ring
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewItemId1`, `RewItemCount1`, `CompleteEmote`) VALUES (30243, -1, 60, 60, 8, 30244, 'Elemental Meditation', 'You have made it to level 60, congratulations. However, your journey does not end there. I have another task for you if you are up for it. Please bring me 50 Fire Dragon Essence, 50 Wind Dragon Essence, 50 Earth Dragon Essence and 50 Frost Dragon Essence. You can find these on the blackrock orcs in Burning Steppes for fire, Spitelash Battlemasters and Spitelash Enchantress in Azshara for Wind, Berserk Owlbeast and Moontouched Owlbeast in Winterspring for frost, Rock Stalker and Stonelash Flayer in Silithus for Earth.', 'Bring 50 Fire Dragon Essence, 50 Wind Dragon Essence, 50 Earth Dragon Essence and 50 Frost Dragon Essence to Rin Tohsaka in Stormwind.', 'Did you bring me the requested items?', '', '', '', '', '', 30117, 30118, 30119, 30120, 50, 50, 50, 50, 30121, 1, 1);
UPDATE `mangos`.`quest_template` SET `OfferRewardText`='You have done well, but there is still more to be done.', `RequestItemsText`='Did you bring me the requested items?' WHERE  `entry`=30243 AND `patch`=0;
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90034, 30243);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90034, 30243);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7025, 30117, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7027, 30117, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7028, 30117, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7029, 30117, -20);

REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7886, 30118, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7885, 30118, -20);

REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7452, 30120, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7453, 30120, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7454, 30120, -20);

REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11737, 30119, -20);
REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11739, 30119, -20);

-- 30208, 30209 next parts of warrior ring quest chain

-- Professional quests

-- Leatherworking quests

-- Pattern: Blue Dragonscale Breastplate
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30188, -182, 30, 45, 165, 300, 8, 5141, 0, -2848, 'Blue Dragonscale Breastplate', 'Blue Dragonscale Breastplates are worn by the mightiest of Shaman. For this pattern, I willl require you to bring me 12 Wicked Leather Bracers, 10 Wicked Leather Headband and 6 Wicked Leather Armor. ', 'Bring 12 Wicked Leather Bracers, 10 Wicked Leather Headband and 6 Wicked Leather Armor to Peter Galen in Azshara.', 'These are some very nice pieces here, $N. The craftsmanship and care put in to making these alone would fetch several silver more than the average piece made.$B$BYou\'ve filled my order, and with that comes your reward. The knowledge of making Wild Leather vests is now yours!', 'Do you have the 12 Wicked Leather Bracers, 10 Wicked Leather Headband and 6 Wicked Leather Armor I ordered? Also, don\'t forget the wildvine!$B$BEven with the earliest patterns, we learn that the fundamentals of shape translate well into more difficult garments. Though different items, the shape of the Turtle Scale breastplates prepares you for the detailing needed to make a Wild Leather vest.$B$BAnd the gloves... well, they\'re just for my own benefit. Remember, you\'re working for me!', '', '', '', '', '', 15084, 15086, 15085, 12, 10, 6, 15751, 1, 2900, 1740, 1, 1, 6, 6, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7866, 30188);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7866, 30188);

-- Pattern: Green Dragonscale Breastplate
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30189, -182, 30, 45, 165, 300, 8, 5141, 0, -2848, 'Green Dragonscale Breastplate', 'Green Dragonscale Breastplates are worn by the mightiest of Shaman. For this pattern, I willl require you to bring me 12 Heavy Scorpid Bracers, 8 Heavy Scorpid Helm and 6 Heavy Scorpid Vest. ', 'Bring 12 Heavy Scorpid Bracers, 8 Heavy Scorpid Helm and 6 Heavy Scorpid Vest to Peter Galen in Azshara.', 'These are some very nice pieces here, $N. The craftsmanship and care put in to making these alone would fetch several silver more than the average piece made.$B$BYou\'ve filled my order, and with that comes your reward. The knowledge of making Wild Leather vests is now yours!', 'Do you have the 12 Heavy Scorpid Bracers, 8 Heavy Scorpid Helm and 6 Heavy Scorpid Vest I ordered? Also, don\'t forget the wildvine!$B$BEven with the earliest patterns, we learn that the fundamentals of shape translate well into more difficult garments. Though different items, the shape of the Turtle Scale breastplates prepares you for the detailing needed to make a Wild Leather vest.$B$BAnd the gloves... well, they\'re just for my own benefit. Remember, you\'re working for me!', '', '', '', '', '', 15077, 15080, 15076, 12, 10, 6, 15726, 1, 2900, 1740, 1, 1, 6, 6, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7866, 30189);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7866, 30189);

-- Pattern: Red Dragonscale Breastplate
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30190, -182, 30, 45, 165, 300, 8, 5141, 0, -2848, 'Red Dragonscale Breastplate', 'Red Dragonscale Breastplates are worn by the mightiest of Shaman. For this pattern, I willl require you to bring me 12 Wicked Leather Bracers, 10 Wicked Leather Headband and 6 Wicked Leather Armor. ', 'Bring 20 Runic Leather Headband, 15 Runic Leather Gauntlets, and 15 Runic Leather Belt to Peter Galen in Azshara.', 'These are some very nice pieces here, $N. The craftsmanship and care put in to making these alone would fetch several silver more than the average piece made.$B$BYou\'ve filled my order, and with that comes your reward. The knowledge of making Wild Leather vests is now yours!', 'Do you have the  20 Runic Leather Headband, 15 Runic Leather Gauntlets, and 15 Runic Leather Belt  I ordered? Also, don\'t forget the wildvine!$B$BEven with the earliest patterns, we learn that the fundamentals of shape translate well into more difficult garments. Though different items, the shape of the Turtle Scale breastplates prepares you for the detailing needed to make a Wild Leather vest.$B$BAnd the gloves... well, they\'re just for my own benefit. Remember, you\'re working for me!', '', '', '', '', '', 15094, 15091, 15093, 20, 15, 15, 15730, 1, 2900, 1740, 1, 1, 6, 6, 1, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7866, 30190);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7866, 30190);

REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90042, 'Alyssa Schmidt', 'Crafting Trader', 55, 55, 12, 2, 12923, 100, 100, 7, 1, 1.35, 2, 1.45, 12805, 4718598, 2);
INSERT IGNORE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000045, 90042, 0, 0, 0, 0, 0, -8862.36, 636.849, 96.1991, 1.84368, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Wicked Leather Headbands
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30191, -182, 55, 57, 165, 300, 8, 1, 0, 'Wicked Leather Headbands', 'I am looking for as many Wicked Leather Headbands as you can possibly provide me with. I will buy as many as you bring, so bring them to me please', 'Bring a Wicked Leather Headband to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 15086, 1, 30000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30191);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30191);

-- Cured Rugged Hide
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30192, -182, 55, 57, 165, 300, 8, 1, 0, 'Cured Rugged Hides', 'Bring me as many Cured Rugged Hides as you can provide.', 'Bring Cured Rugged Hide to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 15407, 1, 150000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30192);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30192);

-- Mooncloth
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30193, -264, 55, 57, 197, 300, 8, 1, 0, 'Mooncloth', 'Bring me as much Mooncloth as you can provide.', 'Bring Mooncloth to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 14342, 1, 150000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30193);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30193);

-- Runecloth Bag
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30194, -264, 55, 57, 197, 300, 8, 1, 'Runecloth Bags', 'Bring me as many Runecloth Bags as you can provide.', 'Bring Runecloth Bag to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 14046, 1, 30000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30194);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30194);

-- Thorium Shield Spike
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30195, -121, 55, 57, 164, 300, 8, 1, 'Thorium Shield Spikes', 'Bring me as many Thorium Shield Spikes as you can provide.', 'Bring Thorium Shield Spike to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 12645, 1, 250000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30195);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30195);

-- Steel Weapon Chain
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30196, -121, 55, 57, 164, 300, 8, 1, 'Steel Weapon Chains', 'Bring me as many Steel Weapon Chains as you can provide.', 'Bring Steel Weapon Chain to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 6041, 1, 40000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30196);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30196);

-- Mithril Spurs
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30197, -121, 55, 57, 164, 300, 8, 1, 'Mithril Spurs', 'Bring me as many Mithril Spurs as you can provide.', 'Bring Mithril Spurs to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7969, 1, 50000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30197);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30197);

-- Elemental Sharpening Stone
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30198, -121, 55, 57, 164, 300, 8, 1, 'Elemental Sharpening Stones', 'Bring me as many Elemental Sharpening Stones as you can provide.', 'Bring Elemental Sharpening Stone to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 18262, 1, 15000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30198);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30198);

-- Arcanite Rods
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30199, -121, 55, 57, 164, 300, 8, 1, 'Arcanite Rods', 'Bring me as many Arcanite Rods as you can provide.', 'Bring Arcanite Rod to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 16206, 1, 300000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30199);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30199);

-- Truesilver Rods
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30200, -121, 55, 57, 164, 300, 8, 1, 'Truesilver Rods', 'Bring me as many Truesilver Rods as you can provide.', 'Bring Truesilver Rod to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 11144, 1, 5000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30200);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30200);

-- Truesilver Breastplates
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30201, -121, 55, 57, 164, 300, 8, 1, 'Truesilver Breastplates', 'Bring me as many Truesilver Breastplates as you can provide.', 'Bring Truesilver Breastplate to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7939, 1, 130000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30201);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30201);

-- Truesilver Gauntlets
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30202, -121, 55, 57, 164, 300, 8, 1, 'Truesilver Gauntlets', 'Bring me as many Truesilver Gauntlets as you can provide.', 'Bring Truesilver Gauntlet to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7938, 1, 100000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30202);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30202);

-- Truesilver Champions
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30203, -121, 55, 57, 164, 300, 8, 1, 'Truesilver Champions', 'Bring me as many Truesilver Champions as you can provide.', 'Bring Truesilver Champion to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7960, 1, 250000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30203);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30203);

-- Phantom Blades
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30204, -121, 55, 57, 164, 300, 8, 1, 'Phantom Blades', 'Bring me as many Phantom Blades as you can provide.', 'Bring Phantom Blade to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7961, 1, 190000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30204);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30204);

-- The Shatterer
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredSkill`, `RequiredSkillValue`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewOrReqMoney`, `CompleteEmote`) VALUES (30205, -121, 55, 57, 164, 300, 8, 1, 'The Shatterers', 'Bring me as many The Shatterers as you can provide.', 'Bring The Shatterers to Alyssa Schmidt in Stormwind.', 'Here you go, I will take anymore you can bring.', '', '', '', '', '', 7954, 1, 150000, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90042, 30205);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90042, 30205);

-- Legendary Quests

-- Warrior
REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `CompleteEmote`) VALUES (30173, -81, 60, 60, 83, 1, 8, 30174, 'Relic Weapons (Warrior)', 'You are a mighty warrior, I have a grand quest for you to embark on that will take you all over the world. The rewards will be worth the tasks required. Are you up for it? Your first task will be to prove your worth to me.', 'Kill Baron Charr, Avalanchion, Princess Tempestria, and The Windreaver 25 times for Wu Shen in Stormwind.', 'This is only the first step. Prepare yourself for the next, it only gets harder from here.', '', '', '', '', '', 14461, 14464, 14457, 14454, 25, 25, 25, 25, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5479, 30173);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5479, 30173);

REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `CompleteEmote`) VALUES (30174, -81, 60, 60, 83, 1, 8, 30173, 30175, 'Relic Weapons (Warrior)', 'You have successfully completed the first step and have shown me you are worthy of taking on this task. In order for us to craft you a weapon of immense power you will need to gather materials and bring them to me to use to craft your weapon.', 'Bring 180 Arcanite Bar, 180 Mooncloth, 100 Nexus Crystal, and 50 Flask of Chromatic Resistance to to Wu Shen in Stormwind.', 'You have done well to be able to complete this step. It will however, continue to get harder from here.', '', '', '', '', '', 12360, 14342, 20725, 13513, 180, 180, 100, 50, 1);
REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5479, 30174);
REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5479, 30174);

-- 30175 (Legendary quest PH)
-- 30176 (Legendary quest PH)

-- Zones
    -- Ashenvale
        -- NPCs
            -- Creature Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90116, 'Faelenya', '', 35, 35, 80, 2, 2232, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90119, 'Milli Fitzwhistle', '', 35, 35, 80, 2, 5042, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90120, 'Elynaria', '', 35, 35, 80, 2, 2197, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90121, 'Delutania', '', 35, 35, 80, 2, 10615, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90123, 'Cymria', '', 35, 35, 80, 2, 2199, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90125, 'Colm Burning Heart', '', 35, 35, 80, 2, 3598, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90126, 'Donann Forgemaker', '', 35, 35, 80, 2, 9258, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90127, 'Sive Stoutflask', '', 35, 35, 80, 2, 15238, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

            -- Spawns 
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000172, 90116, 0, 0, 0, 0, 1, 3477.55, 847.674, 5.44767, 2.94204, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000175, 90119, 0, 0, 0, 0, 1, 2745, -381.153, 108.248, 2.94038, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000176, 90120, 0, 0, 0, 0, 1, 3032.02, -3300.57, 155.13, 4.27399, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000177, 4167, 0, 0, 0, 0, 1, 2918.53, -3272.14, 160.037, 0.0328324, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000178, 4229, 0, 0, 0, 0, 1, 2907.12, -3265.96, 159.934, 0.00926768, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000179, 4177, 0, 0, 0, 0, 1, 2976.78, -3234.01, 165.734, 4.11691, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000180, 4175, 0, 0, 0, 0, 1, 2965.36, -3339.06, 152.232, 1.196, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000181, 90121, 0, 0, 0, 0, 1, 3005.7, -3260.42, 161.697, 3.4815, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000182, 90123, 0, 0, 0, 0, 1, 2690.2, -371.765, 109.815, 5.94948, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000184, 2303, 0, 0, 0, 0, 1, 2646.4, 435.739, 73.915, 3.8793, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000185, 90125, 0, 0, 0, 0, 1, 3029.37, -3322.94, 151.392, 2.30659, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000186, 90126, 0, 0, 0, 0, 1, 2918.69, -3343.7, 154.168, 1.70968, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000187, 90127, 0, 0, 0, 0, 1, 2924.4, -3288.14, 157.528, 4.81359, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Change Illyana's position to Forest Song (Changed in TBC)
                UPDATE `mangos`.`creature` SET `position_x`=3000.918945, `position_y`=-3321.497314, `position_z`=152.336487, `orientation`=2.186402 WHERE  `guid`=32381;

        -- Objects
            -- Spawns
                -- Forge
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100158, 1685, 1, 2921.75, -3338.59, 153.969, 2.56342, 0, 0, 0.958505, 0.285074, 25, 25, 100, 1, 0, 0, 0, 10);

                -- Anvil
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100159, 1744, 1, 2914.03, -3340.02, 154.326, 6.23515, 0, 0, 0.024014, -0.999712, 25, 25, 100, 1, 0, 0, 0, 10);

        -- Edit drop rate on Iron Pommel for Raene's Cleansing (1027) from Rusty Chest (19021)
            UPDATE `mangos`.`gameobject_loot_template` SET `ChanceOrQuestChance`=-25 WHERE  `entry`=2971 AND `item`=5519;

        -- https://www.wowhead.com/tbc/quest=216/between-a-rock-and-a-thistlefur
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30304, 331, 21, 24, 8, 'Between a Rock and a Thistlefur', 'The Thistlefur furbolgs are threatening our expansion!  Thistlefur Village to our east blocks the way between us here and the Splintertree Post.  It\'s a path that would circumvent the village of Astranaar; without it, we give the Alliance an extra expansion path.$B$B$N, we must not allow... an expansion path gap!$B$BProceed to Thistlefur Village and thin out the furbolgs.  You will be given compensation for this task, but more importantly you will be doing your duty for the Horde!', 'Take down 12 Thistlefur Avengers and 12 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village.  Once completed, return to Faelenya at Zoram Strand Ashenvale.', 'Well done $c, well done!  I will continue to send forces to thin out the furbolg, but I can at least count on a different path that will be free of Alliance entanglements.  The Horde conquest of Ashenvale is now in full swing!$B$BYou\'ve earned your pay this day, hero.  I salute you!', 'Have you taken the fight to the Thistlefur?  With a clear path between our bases, our chances of claiming the whole of Ashenvale increase dramatically.', '', '', '', '', '', 3925, 3924, 12, 12, 69, 100, 1950, 1700, 1200, 5, 6, 6, 4);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90116, 30304); -- Faelenya (Zoram Strand)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90116, 30304); -- Faelenya (Zoram Strand)

        --     -> https://www.wowhead.com/tbc/quest=6621/king-of-the-foulweald
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `CompleteEmote`) VALUES (30305, 331, 21, 26, 30304, 16972, 1, 'King of the Foulweald', '$N, another tribe of Furbolgs,  the Foulweald, live southeast of Astranaar.  They are not as many as the Thistlefur, but their ferocity poses a future threat.  With a show of force, we can remove that threat.$B$BTake this banner, go to the Foulweald village and place it on their totem mound.  They will try to destroy the banner, but hold your ground until their chief, Murgut, appears to save face for the tribe.  Bring me the totem he carries.$B$BGather your allies, $N.  This is no task for a single $c.', 'Place Karang\'s Banner on the Foulweald Totem Mound.  Do not let the furbolgs destroy the banner.  Defeat Chief Murgut and bring Murgut\'s Totem to Faelenya at Zoram Strand', 'Good work, $N. Issuing that challenge to the Foulwealds and defeating their leader sends them a strong message:$B$BThe Horde is not to be trifled with.$B$BI don\'t believe that tribe will giving us much trouble for a long time.', 'Did you defeat Chief Murgut, $N? Did you retrieve his Foulweald Totem?', '', '', '', '', '', 16976, 1, 17005, 17006, 1, 1, 2650, 2000, 1620, 5, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90116, 30305); -- Faelenya (Zoram Strand)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90116, 30305); -- Faelenya (Zoram Strand)

        -- https://www.wowhead.com/tbc/quest=6462/troll-charm
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30306, 331, 19, 24, 8, 'Troll Charm', 'My kinfolk were traveling here with many sacred troll charms, but the Thistlefur furbolgs attacked and killed them before they reached Zoram\'gar!  Those vile Furbolgs!$B$BI miss my brothers and sisters who were killed, but we will meet again in the afterlife.  However, their troll charms hold great value in this world.  It is an outrage that the furbolgs have them!$B$B$N, you must retrieve the charms!  They are in chests in Thistlefur Hold, a cave at the end of Thistlefur Village, north of Astranaar.', 'Bring 8 Troll Charms to Mitsuwa at the Zoram\'gar Outpost.', 'You found them!  Thank you!  Thank you, $N!  You do not know how great a thing you have done for me.$B$BA troll without $ghis:her; charm is like an orc without $ghis:her; battle scars...$B$BWorthless.', 'Did you find the charms, $N?  Every moment the furbolgs possess those sacred items, my blood boils with rage!', '', '', '', '', '', 16602, 8, 69, 100, 1950, 1700, 1200, 1, 14, 14);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3846, 30306); -- Talen (Zoram Strand)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3846, 30306); -- Talen (Zoram Strand)


            -- Quest to kill https://www.wowhead.com/tbc/npc=12759/tideress
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30307, 331, 22, 27, 0, 8, 'Elemental Overlords', 'Go south west to Mystral Lake and kill the elemental Tideress, then return to me.', 'Go south west to Mystral Lake and kill the elemental Tideress, then return to Sentinel Thenysil in Astranaar.', 'Thank you!', 'Have you killed Tideress yet?', '', '', '', '', '', 12759, 1, 15452, 15453, 1, 1, 69, 250, 2200, 720, 6, 6, 4, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (4079, 30307); -- Sentinel Thenysil (Astranaar)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (4079, 30307); -- Sentinel Thenysil (Astranaar)

        -- https://www.wowhead.com/tbc/quest=9516/destroy-the-legion
            REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30308, 0, 2, 331, 27, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Destroy the Legion', 'The remains of the demonic Burning Legion have been making raids against our Warsong Lumber Camp! No more! The demons are attacking from the areas known as Felfire Hill, Demon Fall Canyon and Demon Fall Ridge to the south east. Go and destroy as many as you can to bring glory to both yourself and the Alliance!', 'Slay 6 Mannoroc Lashers, 6 Felguards and 6 Searing Infernals, and then return to Elynaria at Forest Song in Ashenvale.', 'Thank you!', 'Are there not demons yet standing?  You call yourself an alliance?  This is no time to be taking a break from the fighting!', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11697, 6115, 6073, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 2450, 0, 720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90120, 30308); -- Elynaria (Forest Song)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90120, 30308); -- Elynaria (Forest Song)

        -- https://www.wowhead.com/tbc/quest=9520/diabolical-plans Drops from the quests from 11697, 6115, 6073 demons turns in new NPC at Forest Song
            REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30309, 0, 2, 331, 27, 0, 30, 0, 0, 589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30412, 1, 0, 'Diabolical Plans', 'The demon dropped this parchment, which is amazingly written in the Common tongue! The ones mentioned in it, Diathorus and Gorgannon, are the two infamous dreadlords that control the demons hereabouts. The plans detail preparations for a demonic attack on Forest Song to the north; the location where a new night elf settlement is being established. Perhaps Elynaria at Forest Song would be interested in these?', 'Deliver the Diabolical Plans to Elynaria in Forest Song.', 'What do you have there, sir?', 'This cannot be!  They plan to attack us here at Forest Song?! Not on my watch!  No.  We will not allow this to happen!', '', '', '', '', '', 30412, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 1200, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

            UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=30310 WHERE  `entry`=30309 AND `patch`=0;

            -- Drops from Mannoroc Lashers, Felguards and Searing Infernals
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11697, 30412, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6115, 30412, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6073, 30412, 5);

            -- Start
                -- Starts from Diabolical Plans (item Id: 30412)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90120, 30309); -- Elynaria (Forest Song)

        --      -> https://www.wowhead.com/tbc/quest=9522/never-again
            REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30310, 0, 2, 331, 27, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 30309, 0, 0, 0, 0, 0, 0, 0, 'Never again!', 'It falls to you to see that this attack by the Burning Legion never comes to pass. You must go and slay their leaders. Without them the rest of the demons are essentially mindless.', 'Kill Gorgannon and Diathorus the Seeker, and then return to Elynaria in Forest Song.', 'Never again will the Burning Legion threaten us here!  You have delivered us from a fight we very likely would have lost.', 'Please kill the legion!', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90118, 6072, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 30413, 30414, 30415, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 3350, 6500, 720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

            -- UPDATE `mangos`.`quest_template` SET `Details`='It falls to you to see that this attack by the Burning Legion never comes to pass. You must go and slay their leaders. Without them the rest of the demons are essentially mindless. You will find Gorgannon in Demon Fall Canyon south east beyond Felfire Hill, near Mannoroth\'s floating, broken spear. Diathorus the Seeker resides somewhere in the barrow den atop Demon Fall Ridge. To find the ridge, look for a ramp up from Demon Fall Canyon near the monument to Grom Hellscream.' WHERE  `entry`=30310 AND `patch`=0;

                -- Creatures
                        -- Template
                        REPLACE`mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `ranged_attack_time`, `loot_id`, `flags_extra`) VALUES (90118, 3, 'Gorgannon', 32, 32, 90, 8610, 1.71429, 20, 3, 1, 2, 8, 20, 1.35, 5.3, 1301, 14530, 4112);

                        UPDATE `mangos`.`creature_template` SET `detection_range`=18, `rank`=0, `health_multiplier`=1.1, `mana_multiplier`=1, `armor_multiplier`=0.95, `damage_multiplier`=0.95, `ranged_attack_time`=2000, `shadow_res`=102, `arcane_res`=136, `loot_id`=6072, `pickpocket_loot_id`=6072, `gold_min`=45, `gold_max`=45, `inhabit_type`=1, `flags_extra`=0, `spell_list_id`=200113 WHERE  `entry`=90118 AND `patch`=3;

                        -- Diathorus the Seeker  is level 32
                        UPDATE `mangos`.`creature_template` SET `level_min`=32, `level_max`=32 WHERE  `entry`=6072 AND `patch`=0;

                    -- Spawns
                        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000174, 90118, 0, 0, 0, 0, 1, 1724.02, -3471.55, 144.329, 2.22043, 660, 660, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90120, 30310); -- Elynaria (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90120, 30310); -- Elynaria (Forest Song)

                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30311, 331, 26, 30, 8, 'Warsong Oil', 'Our fight with the Burning Legion are using up all our supplies. Go to Xavian and Night Run and see if you can get some Warsong Oil the Orcs left behind.', 'Bring 2 Warsong Oil to Elynaria at Forest Song.', 'You found them!  Thank you!  Thank you, $N!  You do not know how great a thing you have done for me.', 'Did you find the Warsong Oil?', '', '', '', '', '', 16744, 2, 69, 100, 2750, 1700, 1200, 1, 14, 14);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90120, 30311); -- Elynaria (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90120, 30311); -- Elynaria (Forest Song)

            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30312, 331, 25, 27, 12, 2, 30313, 'Night Run', 'The Burning Legion aren\'t our only issue, we also have satyrs to deal with to the west. Go to Night Run and see how many Satyr there are so we can prepare.', 'Find Night Run then return to Kayneth at Forest Song.', 'This is bad news. Go back there and eradicate them!', 'What do you have to report, $N?  Have you been to the Night Run?', 'Scout through Night Run', '', '', '', '', 69, 100, 1, 2500, 2500, 2700, 1);

            -- Area Trigger
                REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2947, 30312);
                REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2947, 4222, 'Ashenvale - Quest Night Run', 1, 2529.429, -2143.91, 197.679, 45);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3848, 30312); -- Kayneth (Forest Song)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3848, 30312); -- Kayneth (Forest Song)

            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30313, 331, 25, 27, 12, 2, 0, 'Satyrnaar', 'There is another camp of Satyr to the west. Go to Satyrnaar and see how many Satyr there are so we can prepare.', 'Find Satyrnaar then return to Kayneth at Forest Song.', 'This is bad news. Go back there and eradicate them!', 'What do you have to report, $N?  Have you been to the Satyrnaar?', 'Scout through Satyrnaar', '', '', '', '', 69, 100, 1, 2500, 2500, 2700, 1);

            -- Area Trigger
                REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2948, 30313);
                REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2948, 4222, 'Ashenvale - Quest Satyrnaar', 1, 2745.040, -2957.469, 141.707, 45);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3848, 30313); -- Kayneth (Forest Song)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3848, 30313); -- Kayneth (Forest Song)

            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30314, 331, 25, 28, 8, 30315, 'Satyr Killing', 'To the west of here is Night Run. Kill Satyrs there for me.', 'Kill 8 Felmusk Satyr, 8 Felmusk Shadowstalker and 8 Felmusk Rogue, and then return to Delutania at Forest Song in Ashenvale.', 'Thank you!', 'Are there still Satyrs alive? Get back to work!', '', '', '', '', '', 3758, 3763, 3759, 8, 8, 8, 69, 250, 2450, 720, 6, 6, 4, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90121, 30314); -- Delutania (Forest Song)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90121, 30314); -- Delutania (Forest Song)

            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30315, 331, 25, 28, 8, 30314, 'End the Satyr', 'To the west of here is Satyrnaar. Kill Satyrs there for me.', 'Kill 8 Xavian Rogue, 8 Xavian Felsworn and 8 Xavian Hellcaller, and then return to Delutania at Forest Song in Ashenvale.', 'Thank you!', 'Are there still Satyrs alive? Get back to work!', '', '', '', '', '', 3752, 3755, 3757, 8, 8, 8, 69, 250, 2450, 720, 6, 6, 4, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90121, 30315); -- Delutania (Forest Song)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90121, 30315); -- Delutania (Forest Song)

            -- https://www.wowhead.com/classic/quest=1944/waters-of-xavian (Remove Class and races)
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `CompleteEmote`) VALUES (30316, 331, 26, 26, 128, 7269, 1, 'Waters of Xavian', 'The fabled city of Xavian lies nestled deep within eastern Ashenvale, and tales of its ancient knowledge are well known among the learned.  It is said that the waters of Xavian hold vast magical powers.$B$BI would have a sample of those waters, from their source.$B$BTake this flask and go to Xavian.  Gather water from the bottom of its highest waterfall, and return to me.  And use care as you move through that ancient city - satyrs now hold the ruins and do not like mages prying into their affairs.', 'Bring the Xavian Water Sample to Deino in Orgrimmar.', 'Ah, very good. I trust the satyrs of Xavian gave you little trouble?$B$BThank you, $N. I will study this sample of Xavian water immediately.', 'I am pleased you have returned with your skin intact, $N. Do you have the water sample? I am eager to study its properties.', '', '', '', '', '', 7268, 1, 2500, 1260, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90121, 30316); -- Delutania (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90121, 30316); -- Delutania (Forest Song)

            -- Demon Fall Canyon Felhide Leather quest
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30317, 0, 2, 331, 27, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Felhide Collection', 'I come from Ironforge and have traveled far because I require Felhide Leather from the Felhunters in Demon Fall Canyon far to the south east. Bring them to me.', 'Gather 30 Felhide Leather then bring them back to Milli Fitzwhistle in Astranaar.', 'Yay!', 'I still need those Felhide Leathers!', '', '', '', '', '', 30416, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2500, 0, 1260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 1, 5, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


                -- Drops from Legion Hound
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6071, 30416, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90119, 30317); -- Milli Fitzwhistle (Astranar)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90119, 30317); -- Milli Fitzwhistle (Astranar)

            -- Demon Fall Canyon Legion Core quest
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30318, 0, 2, 331, 27, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Legion Cores', 'There is another item I require, Legion Cores. They also come from the demons in Demon Fall Canyon far to the south east of here. Get them for me.', 'Gather 12 Legion cores then bring them back to Milli Fitzwhistle in Astranaar.', 'Happy happy joy joy!', 'Get the Legion Cores, NOW!!!!', '', '', '', '', '', 30417, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 2750, 4500, 1260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 1, 5, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

                -- Drops from Mannoroc Lashers, Felguards and Searing Infernals
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11697, 30417, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6115, 30417, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6073, 30417, -25);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90119, 30318); -- Milli Fitzwhistle (Astranar)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90119, 30318); -- Milli Fitzwhistle (Astranar)

            -- Demon Fall Canyon Legion Orcish Documents from chests quest
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30319, 0, 2, 331, 27, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Interesting Documents', 'In Demon Fall Canyon south east beyond Felfire Hill there are Orcish Documents stashed somewhere. Please find these hidden documents, they might contain something useful for dealing with the Burning Legion.', 'Find the two Orcish Documents and bring them back to Delutania in Forest Song.', 'These documents are just cooking recipes! Useless!', 'Have you brought me the documents?', '', '', '', '', '', 30418, 30419, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 3100, 0, 1260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 1, 5, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

                -- Drops from clickable chests
                -- Objects
                    -- Templates
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987672, 3, 10, 'Fel Strongbox', 4, 43, 42911);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987673, 3, 10, 'Legion Strongbox', 4, 43, 42912);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100146, 987672, 1, 1630.32, -3072.97, 87.1897, 5.6391, 0, 0, 0.316503, -0.948591, 5, 5, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100147, 987673, 1, 1548.9, -2883.11, 132.955, 2.54069, 0, 0, 0.955203, 0.295952, 5, 5, 100, 1, 0, 0, 0, 10);

                    -- Loot Template
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42911, 30418, -100);
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42912, 30419, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90121, 30319); -- Delutania (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90121, 30319); -- Delutania (Forest Song)

            -- Follow up after https://www.wowhead.com/tbc/quest=1032/satyr-slaying
                    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30320, 331, 27, 32, 8, 'Babadook', 'Go south west to Mystral Lake and kill the elemental Tideress, then return to me.', 'Go south west to Mystral Lake and kill the elemental Tideress, then return to Sentinel Thenysil in Astranaar.', 'Thank you!', 'Have you killed Tideress yet?', '', '', '', '', '', 90122, 1, 69, 250, 3100, 15000, 720, 6, 6, 4, 1);

                    UPDATE `mangos`.`quest_template` SET `Type`=1, `PrevQuestId`=1032, `Details`='There is an evil demon named Babadook in Xavian. Go there and end his life for me.', `Objectives`='Go to Xavian and kill Babadook then return to Illiyana in Forest Song.', `RequestItemsText`='Have you killed Babadook yet?' WHERE  `entry`=30320 AND `patch`=0;

                -- Previous quest
                    UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=30320 WHERE  `entry`=1032 AND `patch`=0;

                -- Creature
                    -- Template
                        REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `rank`, `unit_class`, `health_multiplier`, `damage_multiplier`, `arcane_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `inhabit_type`) VALUES (90122, 'Babadook', 32, 32, 90, 2019, 3, 1, 1, 3.5, 2.0, 200, 3754, 3754, 98, 133, 71050, 1, 1);

                    -- Spawn
                        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000183, 90122, 0, 0, 0, 0, 1, 2935.13, -2729.48, 213.612, 4.41072, 660, 660, 5, 100, 100, 1, 0, 0, 0, 10);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3901, 30320); -- Illiyana (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3901, 30320); -- Illiyana (Forest Song)

            -- Kill quest for the Forsaken Assassin / Forsaken Infiltrator inside Dor'Danil Barrow Den
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30321, 331, 25, 29, 8, 'The Dor\'Danil Barrow Den', 'To the south of here lies the Dor\'Danil Barrow Den, it is now infested with forsaken and I want it cleared out.', 'Kill 8 Forsaken Assassin and 8 Forsaken Infiltrator and then return to Illiyana at Forest Song in Ashenvale.', 'Thank you!', 'Are there still Satyrs alive? Get back to work!', '', '', '', '', '', 3807, 3806, 8, 8, 69, 250, 2100, 720, 6, 6, 4, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3901, 30321); -- Illiyana (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3901, 30321); -- Illiyana (Forest Song)

            -- Chest looting quest inside Dor'Danil Barrow Den
                REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30322, 331, 27, 30, 8, 'Druidic Idols', 'Inside the Dor\'Danil Barrow Den to the south of Forest Song there are Druidic Idols long forgotten and hidden, bring them to me.', 'Find 1 Blue Idol and 1 Red Idol and bring them back to Delutania in Forest Song.', 'Great!!!!!', 'Have you brought the idols?', '', '', '', '', '', 30420, 30421, 1, 1, 0, 0, 0, 0, 69, 150, 2750, 1260, 4, 6, 1, 5, 11, 11);

                -- Objects
                    -- Template
                        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987674, 3, 10, 'Druidic Strongbox', 4, 43, 42913);
                        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987675, 3, 10, 'Druidic Strongbox', 4, 43, 42914);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100148, 987674, 1, 1870.63, -2764.88, 62.6937, 2.12949, 0, 0, 0.874665, 0.484728, 10, 10, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100149, 987675, 1, 1800.51, -2695.48, 41.0135, 6.13893, 0, 0, 0.0720628, -0.9974, 10, 10, 100, 1, 0, 0, 0, 10);

                    -- Loot Template
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42913, 30420, -100);
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42914, 30421, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90121, 30322); -- Delutania (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90121, 30322); -- Delutania (Forest Song)

            -- Collect quest inside Dor'Danil Barrow Den off Severed druid (guid 3799) / severed keeper (guid 3803) / severed sleeper (guid 3801)
                REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30323, 331, 27, 30, 8, 'Precious Gold Statue', 'Inside the Dor\'Danil Barrow Den to the south of Forest Song one of the druids there carried a Golden Statue. I would like to have it.', 'Gather the Golden Statue and bring it back to Cymria in Astranaar.', 'Quack!', 'Have you brought the statue?', '', '', '', '', '', 30422, 0, 1, 0, 0, 0, 0, 0, 69, 150, 2750, 1260, 4, 6, 1, 5, 11, 11);

                UPDATE `mangos`.`quest_template` SET `RewOrReqMoney`=9000 WHERE  `entry`=30323 AND `patch`=0;

                -- Drops from Severed Druid, Severed Keeper, and Severed Sleeper
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3799, 30422, -5);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3801, 30422, -5);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3803, 30422, -5);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90123, 30323); -- Cymria (Astranaar)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90123, 30323); -- Cymria (Astranaar)

            -- Kill quest Fire Scar Shrine
                REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30324, 331, 20, 24, 8, 'Demonic Shards', 'To the south of here lies the Fire Scar Shrine. It\'s full of demons and I\'d like you to gather their Demon Shards and bring them to me.', 'Gather 8 Demon Shards from the demons in the Fire Scar Shrine to the south and bring them back to Therysil at the Shrine of Aessina.', 'This will be of great use.', 'Have you brought the Demon Shards?', '', '', '', '', '', 30423, 0, 8, 0, 0, 0, 0, 0, 69, 100, 2100, 1260, 4, 6, 1, 5, 11, 11);

                -- Drops from Felslayer, Akkrilus and Lesser Felguard
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3772, 30423, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3773, 30423, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (3774, 30423, -25);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3585, 30324); -- Therysil (The Shrine of Aessina)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3585, 30324); -- Therysil (The Shrine of Aessina)

            -- The Ruins of Stardust kill quest
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30325, 331, 20, 23, 8, 'Stardust Elementals', 'To the south east of here lies The Ruins of Stardust. Go there and eradicate the elementals that live there.', 'Kill 8 Shadethicket Wood Shaper and 8 Shadethicket Rain Caller and then return to Sentinel Melyria Frostshadow at The Shrine of Aessina.', 'Thank you!', 'Are there still Elementals alive? Get back to work!', '', '', '', '', '', 3781, 3783, 8, 8, 69, 100, 1950, 720, 6, 6, 4, 1);

                UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=30327 WHERE  `entry`=30325 AND `patch`=0;

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3880, 30325); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3880, 30325); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

            -- https://www.wowhead.com/classic/quest=1534/call-of-water
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30326, 0, 2, 331, 20, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7767, 1, 0, 'Stardust Fountain Water', 'Take this waterskin and fill it at the fountain in The Ruins of Stardust.', 'Fill the Empty Blue Waterskin at the Ruins of Stardust in Ashenvale and return to Sentinel Melyria Frostshadow at The Shrine of Aessina.', 'Wonderful, $N.', 'Do you have the water yet, $N? ', '', '', '', '', '', 7770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1900, 0, 840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3880, 30326); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3880, 30326); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

        -- Fallen Sky Lake kill quest
            REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30327, 331, 20, 27, 8, 30325, 'Sky Lake Elementals', 'There are still more elementals out there. Far to the east lies Fallen Sky Lake. Go there and eradkillicate the elementals that live there.', 'Kill 8 Shadethicket Stone Mover and 8 Shadethicket Bark Ripper and then return to Sentinel Melyria Frostshadow at The Shrine of Aessina.', 'Thank you!', 'Are there still Elementals alive? Get back to work!', '', '', '', '', '', 3782, 3784, 8, 8, 69, 150, 2400, 720, 6, 6, 4, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3880, 30327); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3880, 30327); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

        -- Portal Closing
            REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30328, 331, 20, 24, 8, 0, 'Portal Closing', 'Close the Demon Portals to the south at Fire Scar Shrine.', 'Close 6 Demon Portals then return to Sentinel Melyria Frostshadow at The Shrine of Aessina.', 'Thank you!', 'Please go close all the Demon Portals!', '', '', '', '', '', 90124, 0, 18, 0, 69, 150, 2400, 720, 6, 6, 4, 1);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30424, `SrcItemCount`=1, `ReqItemId1`=30424, `ReqItemCount1`=1, `RewChoiceItemId1`=30435, `RewChoiceItemId2`=30436, `RewChoiceItemId3`=30437, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1 WHERE  `entry`=30328 AND `patch`=0;

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `unit_class`, `health_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `movement_type`, `inhabit_type`, `equipment_id`, `static_flags1`) VALUES (90124, 'Portal Guardian', 23, 24, 90, 5049, 3, 2, 1.02, 0, 0, 29, 97, 37720, '', 1, 1, 18520, 524288);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `size`) VALUES (987677, 10, 4713, 'Demon Portal', 68, 0.2);

                -- Spawns
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100157, 987677, 1, 2375.9, 440.175, 111.135, 1.84421, 0, 0, 0.796876, 0.604142, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100155, 987677, 1, 2176.11, 77.5985, 118.973, 0.644127, 0, 0, 0.316525, 0.948584, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100154, 987677, 1, 2218.11, 287.437, 133.585, 6.14192, 0, 0, 0.0705758, -0.997506, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100153, 987677, 1, 2277.47, 430.964, 134.566, 6.13015, 0, 0, 0.0764431, -0.997074, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100152, 987677, 1, 2366.85, 244.543, 154.906, 3.71113, 0, 0, 0.959726, -0.280936, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100151, 987677, 1, 2256.4, 181.245, 145.992, 1.11931, 0, 0, 0.530895, 0.847437, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100150, 987677, 1, 2318.02, 400.389, 141.391, 1.51595, 0, 0, 0.687454, 0.726228, 360, 360, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100156, 987677, 1, 2296.91, 78.015, 100.554, 4.46902, 0, 0, 0.787711, -0.616045, 360, 360, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3880, 30328); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3880, 30328); -- Sentinel Melyria Frostshadow (The Shrine of Aessina)

        -- Warsong Lumber camp quests (Long Chain)
            -- Quest 1: 3 Drops from: Horde Grunt(Sword), Horde Shaman(staff), Horde Scout (Dagger)
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30329, 331, 25, 30, 8, 'Warsong Weaponry', 'The orcs at Warsong Lumber Camp carry weapons I can melt down and use for other things. Get them for me.', 'Gather 3 Grunt\'s Swords, 3 Shaman\'s Staffs, 3 Scout\'s Daggers then bring them back to Colm Burning Heart in Forest Song.', 'Now to melt these down!', 'Ye got the weapons?', '', '', '', '', '', 30425, 30426, 30427, 3, 3, 3, 47, 150, 2750, 4500, 1260, 4, 6, 1, 5, 11, 11);

                UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=30330 WHERE  `entry`=30329 AND `patch`=0;

                -- Drops
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11682, 30425, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11683, 30426, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11680, 30427, -25);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90125, 30329); -- Colm Burning Heart (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90125, 30329); -- Colm Burning Heart (Forest Song)

            -- -> Chain  head of Kargathia inside keep (lvl 35 quest) Quest ID: 30330
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30330, 331, 25, 35, 8, 30329, 'Warsong Revenge', 'Now that we got their weapons, let\'s take out their leader. Head back to the Warsong Camp and in the center is Kargathia Keep, go there and kill Kargathia.', 'Go to Kargathia Keep, inside Warsong Lumber Camp and kill Kargathia then bring his head back to Colm Burning Heart in Forest Song.', 'Ye did it! Great job!', 'Ye get his head?', '', '', '', '', '', 30431, 1, 30438, 30439, 30440, 30441, 30442, 1, 1, 1, 1, 1, 47, 300, 4100, 6600, 1260, 4, 6, 1, 5, 11, 11);

                -- Creatures
                    -- Template
                        REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `equipment_id`, `static_flags1`) VALUES (90128, 'Captain Korgathia', 'Warsong Captain', 35, 35, 83, 11895, 7, 1, 3.0, 2.0, 17094, 11682, 43, 61, 200114, 11947, 524288);

                    -- Spawns
                        UPDATE `mangos`.`creature` SET `id`=90128, `spawntimesecsmin`=660, `spawntimesecsmax`=660 WHERE  `guid`=33056;

                    -- Loot
                        REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (17094, 30431, -100);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 929, 1, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1205, 5, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1206, 0.12, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1478, 0.4, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1529, 0.0566, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1705, 0.1131, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1711, 0.36, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 1712, 0.4, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 2290, 0.44, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 2592, 9.8982, 0, 1, 2, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 3385, 0.5656, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 3611, 0.04, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 3770, 5, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 4296, 0.02, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 4306, 25, 0, 1, 2, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 4633, 0.2262, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 5576, 0.0566, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 5774, 0.08, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 11165, 0.08, 0, 1, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30015, 0.5, 0, -30015, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30016, 0.01, 0, -30016, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30040, 2.5, 0, -30040, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30054, 0.5, 0, -30054, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30055, 0.01, 0, -30055, 1, 0, 0, 10);
                        REPLACE `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (17094, 30056, 0.5, 0, -30056, 1, 0, 0, 10);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90125, 30330); -- Colm Burning Heart (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90125, 30330); -- Colm Burning Heart (Forest Song)

            -- Quest 2:
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30331, 331, 25, 30, 12, 2, 30351, 'Warsong Camp Stables', 'Satyr, Burning Legion, and now Orcs too?! Go to the Warsong Lumber Camp and scout it out for me.', 'Find the Stable at the Warsong Lumber Camp thenfind the Warsong Supplies at the Stables.', 'This is bad news. Go back there and eradicate them!', 'What do you have to report, $N?  Have you been to the Warsong Lumber Camp?', 'Scout the Warsong Lumber Camps Stable', '', '', '', '', 47, 100, 1, 1000, 0, 2700, 1);

                -- Area Trigger
                    -- Stable
                        REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2949, 30331);
                        REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2949, 4222, 'Ashenvale - Quest Warsong Camp', 1, 2499.096680, -3445.354004, 105.548523, 10);

                -- Objects
                    -- Templates
                        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `data1`) VALUES (987687, 2, 36, 'Warsong Supply Crates', 84, 4, 174);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100188, 987687, 1, 2508, -3445.01, 105.293, 0.277711, 0, 0, 0.13841, 0.990375, 25, 25, 100, 1, 0, 0, 0, 10);

                    -- Start
                        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90126, 30331); -- Donann Forgemaker (Forest Song)

                    -- End
                        REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987687, 30331); -- Warsong Supply Crates (Warsong Lumber Camp - Stables)

            -- Chain -> Turn in at Object at Forge (30351)
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30351, 331, 25, 30, 12, 2, 30331, 30352, 'Warsong Camp Forge', 'Scout out the Forge at the Warsong Lumber Camp next.', 'Find the Forge at the Warsong Lumber Camp then find the Warsong Supplies at the Forge.', 'Lots of supplies..what are the orcs up to?', 'What do you have to report, $N?  Have you been to the Warsong Lumber Camp?', 'Scout the Warsong Lumber Camps Forge', '', '', '', '', 47, 100, 1, 1000, 0, 2700, 1);

            -- Area Trigger
                -- Forge
                    REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2950, 30351);
                    REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2950, 4222, 'Ashenvale - Quest Warsong Camp', 1, 2538.152588, -3388.906494, 104.27693, 10);

                -- Objects
                    -- Templates
                        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `data1`) VALUES (987688, 2, 36, 'Warsong Supply Crates', 84, 4, 174);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100189, 987688, 1, 2543.04, -3384.16, 104.261, 4.34215, 0, 0, 0.825178, -0.564873, 25, 25, 100, 1, 0, 0, 0, 10);

                    -- Start
                        REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987687, 30351);  -- Warsong Supply Crates (Warsong Lumber Camp - Stables)

                    -- End
                        REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987688, 30351); -- Warsong Supply Crates (Warsong Lumber Camp - Forge)

            -- Chain -> Turn in at Object at Bunker (30352)
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30352, 331, 25, 30, 12, 2, 30351, 30332, 'Warsong Camp Bunker', 'Scout out the Bunker at the Warsong Lumber Camp next.', 'Find the Bunker at the Warsong Lumber Camp and find the Warsong Supplies at the bunker.', 'Lots of supplies..what are the orcs up to?', 'What do you have to report, $N?  Have you been to the Warsong Lumber Camp?', 'Scout the Warsong Lumber Camps Bunker', '', '', '', '', 47, 100, 1, 1200, 2500, 2700, 1);

                -- Creatures 
                    -- Spawns
                        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000188, 11682, 0, 0, 0, 0, 1, 2385.62, -3421.84, 113.576, 2.80366, 330, 330, 0, 100, 100, 0, 0, 0, 0, 10);
                        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000189, 11682, 0, 0, 0, 0, 1, 2384.18, -3434.84, 113.576, 3.044, 330, 330, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Area Trigger
                    -- Bunker
                        REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2951, 30352);
                        REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2951, 4222, 'Ashenvale - Quest Warsong Camp', 1, 2381.116455, -3428.599121, 107.707413, 5);

                -- Objects
                    -- Templates
                        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `data1`) VALUES (987689, 2, 36, 'Warsong Supply Crates', 84, 4, 174);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100190, 987689, 1, 2389.97, -3428.91, 113.575, 3.13262, 0, 0, 0.99999, 0.00448567, 25, 25, 100, 1, 0, 0, 0, 10);

                    -- Start
                        REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987688, 30352);  -- Warsong Supply Crates (Warsong Lumber Camp - Forge)

                    -- End
                        REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987689, 30352); -- Warsong Supply Crates (Warsong Lumber Camp - Bunker)

                -- Chain -> Discover Kargathia Keep
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30332, 331, 25, 35, 12, 2, 30352, 'Korgathia Keep', 'Now that you have scouted the camp, I\'d like for you to also scout the keep deep inside the camp.', 'Find Kargathia Keep then return to Donann Forgemaker at Forest Song.', 'This is bad news. How did the Warsong orcs get so powerful so fast?', 'What do you have to report, $N?  Have you been to Kargathia Keep?', 'Scout the Kargathia Keep', '', '', '', '', 47, 100, 1, 2500, 2500, 2700, 1);

                -- Area Trigger
                    REPLACE `mangos`.`areatrigger_involvedrelation` (`id`, `quest`) VALUES (2952, 30332);
                    REPLACE `mangos`.`areatrigger_template` (`id`, `build`, `name`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (2952, 4222, 'Ashenvale - Quest Korgathia Keep', 1, 2437.461182, -3544.230469, 98.312187, 10);

                -- Start
                REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987689, 30332);  -- Warsong Supply Crates (Warsong Lumber Camp - Bunker)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90126, 30332); -- Donann Forgemaker (Forest Song)

            -- Quest 3: Horde Deforester kills (6?) (id: 11681) Quest ID: 30333
                REPLACE`mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30333, 331, 25, 28, 8, 0, 'Protect the Ashenvale Trees', 'The orcs are defiling our lies. Head far to the east to the Warsong Lumber Camp and stop them.', 'Kill 8 Horde Deforester and 8 Horde Peon and then return to Cymria in Astranaar.', 'Our forest is safer for another day.', 'Did you stop the Orcs?', '', '', '', '', '', 11681, 11656, 8, 8, 69, 150, 2400, 720, 6, 6, 4, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90123, 30333); -- Cymria (Astranaar)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90123, 30333); -- Cymria (Astranaar)

            -- Quest 4: Drop from Warsong Shredder (1, 100%) Quest ID: 30334
                    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30334, 331, 25, 28, 8, 'Get the Shredder Plans!', 'The orcs at Warsong Lumber Camp carry weapons I can melt down and use for other things. Get them for me.', 'Find the Warsong Documents then bring them back to Sive Stoutflask in Forest Song.', 'Now to melt these down!', 'Ye got the weapons?', '', '', '', '', '', 30430, 0, 0, 1, 0, 0, 47, 150, 2100, 0, 1260, 4, 6, 1, 5, 11, 11);

                    UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=30335 WHERE  `entry`=30334 AND `patch`=0;

                -- Loot
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (11684, 30430, -100);
                    
                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90127, 30334); -- Sive Stoutflask (Forest Song)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90127, 30334); -- Sive Stoutflask (Forest Song)

                -- Chain - > Plans from inside the 2 watchtowers (Chests)
                -- Chain - > Plans from inside the 2 watchtowers (Chests)
                    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30335, 331, 25, 30, 8, 'Find the Tower Documents!', 'According to our intel, the Watch Towers in the Warsong Lumber Camp have secret documents that could be of use to us. Go to there and bring them back to me.', 'Find the Warsong Documents then bring them back to Sive Stoutflask in Forest Song.', 'Let\'s see here...!', 'Ye got the documents?', '', '', '', '', '', 30432, 30433, 0, 1, 1, 0, 47, 150, 2500, 0, 1260, 4, 6, 1, 5, 11, 11);

                    UPDATE `mangos`.`quest_template` SET `PrevQuestId`=30334, `NextQuestInChain`=30336 WHERE  `entry`=30335 AND `patch`=0;

                    -- Objects
                        -- Template
                            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987678, 3, 10, 'Orcish Chest', 4, 43, 42915);
                            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987679, 3, 10, 'Orcish Chest', 4, 43, 42916);

                        -- Spawns
                            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100160, 987678, 1, 2268.3, -3464.68, 129.227, 4.42627, 0, 0, 0.800696, -0.599071, 10, 10, 100, 1, 0, 0, 0, 10);
                            REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100161, 987679, 1, 2592.26, -3604.45, 134.138, 3.93147, 0, 0, 0.923021, -0.384749, 10, 10, 100, 1, 0, 0, 0, 10);

                        -- Loot Template
                            REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42915, 30432, -100);
                            REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42916, 30433, -100);

                        -- Start
                            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90127, 30335); -- Sive Stoutflask (Forest Song)

                        -- End
                            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90127, 30335); -- Sive Stoutflask (Forest Song)

                    -- Chain - > Plans from inside Kargathia Keep (Chests) Quest ID: 30336
                        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`) VALUES (30336, 331, 25, 35, 8, 'Finders Keepers', 'They keep their most important documents in their keep. Go to Kargathia Keep and get the Warsong Battle Plans for me!', 'Find the Warsong Documents then bring them back to Sive Stoutflask in Forest Song.', 'This will slow down the Warsong orcs attacks for a while, thank you!', 'Ye got the Battle Plans?', '', '', '', '', '', 30434, 0, 0, 1, 0, 0, 47, 150, 3150, 4500, 1260, 4, 6, 1, 5, 11, 11);

                        UPDATE `mangos`.`quest_template` SET `PrevQuestId`=30335 WHERE  `entry`=30336 AND `patch`=0;

                        -- Objects
                            -- Template
                                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987680, 3, 10, 'Orcish Chest', 4, 43, 42917);

                            -- Spawns
                                REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100162, 987680, 1, 2438.43, -3544.07, 98.3117, 3.02434, 0, 0, 0.998282, 0.0585946, 10, 10, 100, 1, 0, 0, 0, 10);

                            -- Loot Template
                                REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42917, 30434, -100);

                        -- Start
                            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90127, 30336); -- Sive Stoutflask (Forest Song)

                        -- End
                            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90127, 30336); -- Sive Stoutflask (Forest Song)

    -- Stonetalon
        -- NPCs 
            -- Creature Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `inhabit_type`, `civilian`, `static_flags1`, `flags_extra`) VALUES (90110, 'Ziophor', 30, 30, 80, 2, 10616, 1, 1, 1.11111, 7, 1, 1.05, 1, 1, 138412102, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `inhabit_type`, `civilian`, `static_flags1`, `flags_extra`) VALUES (90111, 'Rendall Moonculler', 30, 30, 80, 2, 2253, 1, 1, 1.11111, 7, 1, 1.05, 1, 1, 138412102, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `inhabit_type`, `civilian`, `static_flags1`, `flags_extra`) VALUES (90112, 'Anyine', 30, 30, 80, 2, 2211, 1, 1, 1.11111, 7, 1, 1.05, 1, 1, 138412102, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `inhabit_type`, `civilian`, `static_flags1`, `flags_extra`) VALUES (90115, 'Trinti Machinemouth', 30, 30, 80, 2, 10214, 1, 1, 1.11111, 7, 1, 1.05, 1, 1, 138412102, 2);

            -- Spawns 
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000163, 90110, 0, 0, 0, 0, 1, 2686.65, 1477.66, 234.351, 3.94618, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000164, 90111, 0, 0, 0, 0, 1, 2701.93, 1425.13, 243.04, 2.88196, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000162, 90112, 0, 0, 0, 0, 1, 2693.05, 1509.08, 236.819, 4.8651, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000167, 90115, 0, 0, 0, 0, 1, 724.681, 343.607, 64.3999, 0.180167, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
        -- Quests
            -- https://www.wowhead.com/tbc/quest=6284/arachnophobia
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30296, 406, 15, 21, 1, 0, 8, 'Arachnophobia', 'Warning: Proceed into Sishir Canyon west of here at your own risk.$B$BBesseleth and her eight-legged children of the forest have claimed this canyon as their webbed lair.$B$BAnyine in Stonetalon Peak has placed a bounty on Besseleth. Slay her and bring proof of your killing to Anyine; there you will receive your reward for disposing this eight-legged menace.', 'Kill Besseleth and bring Besseleth\'s Fang to Anyine at Stonetalon Peak.', 'Good hunting, $N! Besseleth is an old predator in these parts... I will miss her not. Take this reward as a token for being the forest champion.$B$B<Maggran rubs the wound caused by Besseleth.>$B$BPerhaps now many more will travel to Stonetalon Peak without fearing what lurks in the dark.', 'Besseleth is a ruthless predator... I fear for those that travel Webwinder Path at night. It\'s then that she and her children prey upon innocent travelers. I myself fell prey to her two-foot fang of death, but luckily I was able to fend her off and get to safety. I would give anything to see that monster destroyed.', '', '', '', '', '', 16192, 1, 16891, 16894, 1, 1, 69, 100, 1650, 1020, 1, 1, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90112, 30296); -- Anyine (Stonetalon Peak)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90112, 30296); -- Anyine (Stonetalon Peak)

            -- https://www.wowhead.com/tbc/quest=6461/blood-feeders
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30297, 406, 13, 19, 8, 'Blood Feeders', 'We Trolls here at Malaka\'Jin have prospered from the land; Stonetalon Mountain offers great hunting for us to live on.$B$BLately, we have attracted the wrong dinner guests... the spiders in these mountains have been raiding our camps at night looking to steal our hunt.$B$BIf you were to help us kill off these ghastly beasts we at Stonetalon Peak would be in your debt. Spiders are everywhere in Stonetalon - just head north from here and you will see what I am talking about.', 'Ziophor at Stonetalon Peak needs you to kill 10 Deepmoss Creepers and 7 Deepmoss Venomspitters.', 'Sweet, mon! Good news, perhaps we will have fewer unwanted dinner guests tonight.$B$BMany thanks, $N.  We are forever in your debt.', 'Hey mon, have you slain the hairy blood feeders? I fear none here in Stonetalon but I don\'t go walking around here at night... if you know what I mean mon!$B$BAs long as I stay off their dinner plate then all is well.$B$BGood luck to you, $c!', '', '', '', '', '', 4005, 4007, 10, 7, 69, 100, 1450, 1100, 900, 1, 1, 1, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90110, 30297); -- Ziophor (Stonetalon Peak)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90110, 30297); -- Ziophor (Stonetalon Peak)

            -- https://www.wowhead.com/tbc/quest=6548/avenge-my-village 
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30298, 406, 12, 18, 8, 30299, 'Avenge The Village', 'The Grimtotem Clan raided the tauren village and killed most everyone. I killed all I could, but barely escaped with the tauren life.$b$b$N, all I wish now is that more of them are dead. You will find them just to the west of here.\n\n', 'Kill 8 Grimtotem Ruffians and 6 Grimtotem Mercenaries, and then return to Trinti Machinemouth at Webwinder Path.\n', '$N, I thank you... but I will never forget what the Grimtotem have done to the tauren village.', 'Have you killed them yet?', '', '', '', '', '', 11910, 11911, 8, 6, 54, 100, 1350, 1000, 840, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90115, 30298); -- Trinti Machinemouth (Webwinder Path)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90115, 30298); -- Trinti Machinemouth (Webwinder Path)

            --     -> https://www.wowhead.com/tbc/quest=6629/kill-grundig-darkcloud
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30299, 406, 12, 18, 8, 30298, 'Kill Grundig Darkcloud', '$N, you\'ve done a fine job killing Grimtotem. If you dare, Grundig Darkcloud and his personal band of brutes is by far the worst of the lot. He was the one who led the brutal attack the tauren village.$b$bYou will find him in Grimtotem Post a bit further up the path to the west. Kill him, and I will be forever grateful.\n', 'Kill Grundig Darkcloud and 6 Grimtotem Brutes, and return to Trinti Machinemouth at Webwinder Path.\n', 'Grundig Darkcloud is dead! $N, I will always be grateful for what you\'ve done here today.', 'Have you killed Grundig Darkcloud and his personal band of Brutes?\n', '', '', '', '', '', 11858, 11912, 1, 6, 1350, 1000, 840, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90115, 30299); -- Trinti Machinemouth (Webwinder Path)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90115, 30299); -- Trinti Machinemouth (Webwinder Path)
            -- https://www.wowhead.com/tbc/quest=6301/cycle-of-rebirth
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `CompleteScript`) VALUES (30300, 406, 17, 23, 8, 'Cycle of Rebirth', 'Industrial greed and continuous war have wrecked the lands of Stonetalon. Only the blessings of the Earthmother can cure such injury.$B$B$N, I will require you to seek a special seed, the Gaea seed. They are only found here in Stonetalon Mountain, south of Stonetalon Peak at Mirkfallon Lake, near the water\'s edge.$B$BOnce you bring me the seeds I will imbue them with shamanistic power to speed their growth.', 'Rendall Moonculler at Stonetalon Peak wants you to gather 10 Gaea Seeds.', 'Ah, $N, you have the Gaea seeds. Watch and see how the blessing of the Earthmother can cause even these small kernels of life to bloom and flourish.$B$B<TRendall Moonculler ammra begins to chant.>', 'The continuous destruction caused by war and those that seek a profit from lumber pains me deeply. To aid the cycle of rebirth and replenish the lands, I need Gaea seeds. Do you have them, $c?', '', '', '', '', '', 16205, 10, 69, 75, 1400, 1200, 840, 1, 1, 1, 1, 1, 0);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90111, 30300); -- Rendall Moonculler (Stonetalon Peak)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90111, 30300); -- Rendall Moonculler (Stonetalon Peak)

            --     -> https://www.wowhead.com/tbc/quest=6381/new-life
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30301, 0, 2, 406, 17, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30300, 0, 0, 0, 0, 16208, 1, 0, 'New Life', 'As you have seen, $c, though the land is in pain, the cycle of life is a powerful thing. Now we must do our part help it along. You must plant these seeds at the center of the destruction, to the west, in the Charred Vale. Beware, for harpies and angry fire elementals still plague the scarred land.$B$B$N, take these enchanted Gaea seeds and plant them in fertile mounds of soil. The cycle of life must go on!', 'Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Rendall Moonculler at Stonetalon Peak.', 'This is great victory for the land. In time, other things will come to pass: the Venture Co. will pack up their buzz saws and axes, the angry fire spirits will calm, and the harpies will be pushed out by the land.$B$BOnly then $N, will Stonetalon be truly at peace.$B$BYou have done well $c; take one of these items as thanks for the new life you have created here today.', 'These seeds you plant are strong, resisting corruption, and making a foothold for other life. They will grow and grow, first preventing corruption and healing the scarred land, and then one day, restoring Stonetalon to a lush forest, once again.$B$BHave you planted all of the Gaea seeds?', '', 'Gaea seed planted', '', '', '', 16208, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -177929, 0, 0, 0, 10, 0, 0, 0, 20269, 0, 0, 0, 16985, 16986, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2000, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90111, 30301); -- Rendall Moonculler (Stonetalon Peak)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90111, 30301); -- Rendall Moonculler (Stonetalon Peak)

            -- https://www.wowhead.com/tbc/quest=1058/jinzils-forest-magic
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30302, 406, 20, 26, 8, 'Trinti\'s Forest Magic', 'So excited I am!$b$bThree little cages for three little elves! But what shall we do with our lovely tree-hugging friends? Why, let\'s give them a taste of... what do they call it... forest magic!$b$bI\'ll need a good mess of Stonetalon sap. From those horrid felines, bring me some twilight whiskers. This calls for plenty of courser eyes, of course - can never have enough eyes. Oh, and lest we forget, a precious scale from a fey dragon.$b$bHurry to Stonetalon Peak, $n, so I can brew some forest magic!', 'Mage Trinti Machinemouth at Webwinder Path wants 5 portions of Stonetalon Sap, 5 Twilight Whiskers, 30 Courser Eyes and a Fey Dragon Scale.', 'Oh how happy these little woodland nymphs shall be! We\'ll make them feel right at home with this special concoction!', 'Look at our poor little elf friends. All caged up with no forest to frolic in!$b$bNow were you able to find me some sap? How about the whiskers from the twilight runners? Don\'t suppose you have that fey dragon scale on you?$b$bAnd eyes! I\'ll need so many eyes! You just can\'t mix up a fierce forest magic brew without a good helping of eyes!', '', '', '', '', '', 5582, 5584, 5585, 5583, 5, 5, 30, 1, 6664, 6665, 1, 1, 54, 100, 2100, 1260, 4, 6, 1, 5, 11, 11, 0);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90115, 30302); -- Trinti Machinemouth (Webwinder Path)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90115, 30302); -- Trinti Machinemouth (Webwinder Path)

            -- https://www.wowhead.com/tbc/quest=6283/bloodfury-bloodline
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30303, 406, 18, 26, 1, 8, 1057, 'Bloodfury Bloodline', 'Limiting the number of Bloodfury Harpies will not be enough. The only true cure for their disease would be to slay their leader, Bloodfury Ripper!$B$BShe is all but a queen to those filthy creatures. Slay her and their numbers will surely diminish.$B$BGo back into the Charred Vale and you will find her along the western hills. She will not be easy to vanquish, but the reward will be great.', 'Keeper Albagorm at Stonetalon Peak wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.', 'Already I feel the anger leave me. What will I do with my time? Knowing evil moves near my land kept my thoughts moving, though now they are silent. Perhaps this is a good thing... maybe now I can focus on the good, as all Tauren should.$B$BPlease accept this as a reward for your troubles.', 'Bloodfury Ripper is a nasty creature! You will have success finding her along the western hill line in the Charred Vale.$B$BThe bloodfuries will be helpless with out... surely we can vanquish them forever!', '', '', '', '', '', 16190, 1, 16990, 16987, 1, 1, 69, 100, 2100, 1260, 1, 1, 1, 1, 1);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3994, 30303); -- Keeper Albagorm (Stonetalon Peak)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3994, 30303); -- Keeper Albagorm (Stonetalon Peak)

    -- Arathi Highlands
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30039, 45, 30, 33, 8, 'Foul Magic', 'I have felt a strangeness in the air... a feeling that simmers in my blood. I had my suspicions. I set off to find the source of my unease and discovered to the west, at Northfold Manor, the residual traces of demonic summoning. As I got close, my blood began to boil and the rage within me grew.', 'Get 10 Bloodstone Amulets for Hammon Karwn at Refuge Pointe.', 'Very good, $N.  With the deaths of those Syndicate members we should have an easier time receiving supplies from Southshore.$B$BPerhaps our cause yet has hope.', 'Get 10 Bloodstone Amulets for Hammon Karwn at Refuge Pointe.', '', '', '', '', '', 4495, 10, 72, 100, 2650, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2810, 30039); -- Hammon Karwn (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2810, 30039);  -- Hammon Karwn (Refuge Pointe)
                
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30041, 45, 29, 37, 8, 0, 'Raptor Hearts', 'There are raptors far to the east called Highland Fleshstalkers, I need you to collect their hearts for me.', 'Acquire 12 Raptor Hearts from Highland Fleshstalkers for  Captain Nials at Refuge Pointe.', 'Now the raptor threat has been successfully culled.', 'Acquire 12 Raptor Hearts from Highland Fleshstalkers for Captain Nials at Refuge Pointe.', '', '', '', '', '', 4513, 12, 72, 100, 2850, 1500);

            UPDATE `mangos`.`quest_template` SET `RewItemId1`=4546, `RewItemCount1`=1 WHERE  `entry`=30041 AND `patch`=0;

            -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2700, 30041); -- Captain Nials (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2700, 30041); -- Captain Nials (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30117, 45, 30, 34, 8, 0, 'Hammerfall Eradication', 'The orcs must be pushed out from our farms! Go down the hill and clear out as many of them as you can.', 'Kill 15 Hammerfall Peons and 15 Hammerfall Grunts for Quae near the Go\'Shek Farm.', 'The Arathi Highlands belongs to the Alliance!', 'Did you finish killing the orcs?', '', '', '', '', '', 2618, 15, 15, 10, 72, 100, 2500, 1500);

            UPDATE `mangos`.`quest_template` SET `ReqCreatureOrGOId2`=2619, `ReqCreatureOrGOCount2` = 15 WHERE  `entry`=30117 AND `patch`=0;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2712, 30117); -- Quae (Go'Shek Farm)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2712, 30117);  -- Quae (Go'Shek Farm)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30045, 45, 26, 36, 8, 0, 'Creepy Giant Spiders', 'What you did last time seems to have angered the spiders. They\'re back, bigger, angrier, and now taking citizens away from Refuge Pointe. Please help us!', 'Kill 15 Giants Plains Creepers for Commander Amaren  in Refuge Pointe.', 'We will all live to see another day. Thank you so much!', 'Kill 15 Giant Plains Creepers for Commander Amaren  in Refuge Pointe.', '', '', '', '', '', 2565, 15, 72, 100, 2400, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2608, 30045); -- Commander Amaren (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2608, 30045); -- Commander Amaren (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30043, 45, 28, 35, 8, 0, 'Vulture Pruning', 'There\'s still more vultures to take care of! Please kill more vultures for me. ', 'Kill 15 Mesa Buzzards for Commander Amaren  in Refuge Pointe.', 'Thank you!', 'Kill 15 Mesa Buzzards for Commander Amaren  in Refuge Pointe.', '', '', '', '', '', 2579, 15, 72, 100, 2100, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2608, 30043); -- Commander Amaren (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2608, 30043); -- Commander Amaren (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30046, 45, 29, 39, 8, 'Enraged Elementals', 'The elementals here have been acting strange lately. They are normally friendly, but recently they seem to attack every travler in sight. Can you clear them out to make the roads around here safer?', 'Kill 8 Burning Exile, 8 Cresting Exile, 8 Rumbling Exile and 8 Thundering Exile for Drovnar Strongbrew in Refuge Pointe.', 'The roads are now much safer!', 'There\'s still elementals alive, get to it!', '', '', '', '', '', 2760, 2761, 2592, 2762, 8, 8, 8, 8, 72, 100, 3200, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2812, 30046); -- Drovnar Strongbrew (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2812, 30046); -- Drovnar Strongbrew (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30048, 45, 30, 38, 8, 0, 30049, 'Beat up Some Ogres', 'You did well last time, now I have a new task for you. Go to the cave to the south west and kill more ogres for me.', 'Kill 8 Boulderfist Brute and 10 Boulderfist Magus for Commander Amaren in Refuge Pointe.', 'You have once again proven yourself to me. Your next task will be much more difficult and require you to gather friends.', 'You have not killed enough ogres yet.', '', '', '', '', '', 2566, 2567, 8, 10, 72, 100, 2850, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2608, 30048);  -- Commander Amaren (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2608, 30048);  -- Commander Amaren (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`) VALUES (30049, 45, 30, 40, 8, 30048, 'Operation Stromgarde', 'Now that I know how skilled you are, I have a special operation for you. The ogres have taken up camp inside of Stromgard, we need to push them out and take it back. Gather some friends, head to Stromgard, and clear out the ogres from it.', 'Kill 15 Boulderfist Shaman and 10 Boulderfist Lords for Commander Amaren in Refuge Pointe.', 'At last, Stromgard shall be ours again! You have done well!', 'Stromgard is still in control of the ogres, what are you doing?!', '', '', '', '', '', 2570, 2571, 15, 10, 9520, 9521, 1, 1, 72, 100, 3150, 5000, 1500);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2608, 30049);   -- Commander Amaren (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2608, 30049);   -- Commander Amaren (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30340, 45, 29, 37, 8, 0, 'Ogre Weapons', 'You did good last time, but there\'s more raptors to the south. Take care of those as well. ', 'Acquire 12 Raptor Hearts from Highland Fleshstalkers for  Captain Nials at Refuge Pointe.', 'Now the raptor threat has been successfully culled.', 'Acquire 12 Raptor Hearts from Highland Fleshstalkers for Jannos Ironwill at Refuge Pointe.', '', '', '', '', '', 30444, 6, 72, 100, 2850, 1500);

                UPDATE `mangos`.`creature_template` SET `npc_flags`=16390 WHERE  `entry`=1471 AND `patch`=0;

                -- Objects
                    -- Templates
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987681, 3, 36, 'Ogre Weapon Crate', 4, 43, 42918);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100171, 987681, 0, -1910.87, -2894.65, 76.6686, 5.50639, 0, 0, 0.378708, -0.925516, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100170, 987681, 0, -1921.54, -2780.82, 71.2123, 3.69999, 0, 0, 0.961277, -0.275584, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100169, 987681, 0, -1983.19, -2723.31, 79.6724, 5.24329, 0, 0, 0.496833, -0.867846, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100168, 987681, 0, -1982.52, -2762.19, 81.5972, 1.47967, 0, 0, 0.674167, 0.738579, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100167, 987681, 0, -1953.96, -2804.1, 80.8755, 1.66817, 0, 0, 0.740681, 0.671856, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100166, 987681, 0, -1974, -2916.13, 78.2998, 5.33598, 0, 0, 0.456097, -0.88993, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100165, 987681, 0, -2016.07, -2846.02, 79.0649, 5.74439, 0, 0, 0.266152, -0.963931, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100164, 987681, 0, -2057.9, -2779.08, 68.581, 2.30042, 0, 0, 0.912849, 0.408297, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100163, 987681, 0, -2094, -2853.14, 80.3696, 1.36658, 0, 0, 0.631348, 0.7755, 330, 330, 100, 1, 0, 0, 0, 10);

                    -- Loot Template
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42918, 30444, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (1471, 30340);  -- Jannos Ironwill (Refuge Pointe)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (1471, 30340);  -- Jannos Ironwill (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30341, 45, 30, 35, 8, 'The Three Horsemen', 'The orcs must be pushed out from our farms! Go down the hill and kill their commanders to disrupt their forces.', 'Kill Commander, Okro, Commander Nakual and Commander Zarvo then return to Kinelory near the Go\'Shek Farm.', 'The Arathi Highlands belongs to the Alliance!', 'Did you finish killing the commanders?', '', '', '', '', '', 90129, 90130, 90131, 1, 1, 1, 69, 100, 3300, 1500);

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_probability1`, `display_probability2`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `equipment_id`, `static_flags1`) VALUES (90129, 'Commander Okro', '', 35, 35, 125, 4499, 4500, 1, 1, 2, 7, 1, 2.5, 1.5, 2.0, 2619, 2619, 39, 244, 863, 138936320);
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_probability1`, `display_probability2`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `equipment_id`, `static_flags1`) VALUES (90130, 'Commander Nakual', '', 35, 35, 125, 4499, 4500, 1, 1, 2, 7, 1, 2.5, 1.5, 2.0, 2619, 2619, 39, 244, 863, 138936320);
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_probability1`, `display_probability2`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `equipment_id`, `static_flags1`) VALUES (90131, 'Commander Zarvo', '', 35, 35, 125, 4499, 4500, 1, 1, 2, 7, 1, 2.5, 1.5, 2.0, 17095, 2619, 39, 244, 863, 138936320);

                -- Spawns
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000190, 90129, 0, 0, 0, 0, 0, -1498.58, -3003.47, 12.8804, 4.80654, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000191, 90130, 0, 0, 0, 0, 0, -1456.85, -3073.01, 12.8164, 3.08651, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000192, 90131, 0, 0, 0, 0, 0, -1469.31, -3126.09, 14.1384, 2.34588, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);


            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2713, 30341); -- Kinelory (Go'Shek Farm)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2713, 30341);  -- Kinelory (Go'Shek Farm)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30342, 45, 29, 37, 8, 0, 'Strange Object', 'I saw one of the orcs carrying a strange object. Go find out which orc has it and bring it back to me!', 'Acquire 1 Badge of Exodar from the Orcs at Go\'Shek Farm for Kinelory near the Go\'Shek Farm.', 'Now the raptor threat has been successfully culled.', 'Acquire 1 Badge of Exodar from the Orcs at Go\'Shek Farm for Kinelory near the Go\'Shek Farm.', '', '', '', '', '', 30445, 1, 69, 100, 2850, 1500);

            -- Loot template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2618, 30445, -5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2619, 30445, -5);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2713, 30342); -- Kinelory (Go'Shek Farm)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2713, 30342);  -- Kinelory (Go'Shek Farm)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30343, 45, 29, 39, 8, 'Elemental Supplies', 'This area is ripe with elementals, gather their their living elements off them and bring them to me. I can use them for special armor, I\'ll even make one for you!', 'Gather Living Fire, Living Earth, Living Water and Living Wind off the elementals in the Arathi Highlands for Hammon Karwn at Refuge Pointe.', 'Now to put these to good use!', 'What are you doing?!', '', '', '', '', '', 30446, 30447, 30448, 30449, 6, 6, 6, 6, 72, 100, 3150, 1500);

            UPDATE `mangos`.`quest_template` SET `RewItemId1`=30452, `RewItemCount1`=1 WHERE  `entry`=30343 AND `patch`=0; -- Prismatic Talisman

            -- Loot template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2760, 30446, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2761, 30447, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2762, 30448, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2592, 30449, -25);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2810, 30343); -- Hammon Karwn (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2810, 30343);  -- Hammon Karwn (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30344, 45, 30, 33, 8, 'Syndicate Supplies', 'The syndicate to the west have stolen my supplies. Find them and bring them back to me!', 'Find the missing supplies from the Syndicate to the west for Hammon Karwn at Refuge Pointe.', 'This will help me out a ton, thank you!', 'Did you find the supplies?', '', '', '', '', '', 30450, 30451, 0, 0, 1, 1, 0, 0, 72, 100, 2700, 1500);

                -- Objects
                    -- Templates
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987682, 3, 5743, 'Syndicate Strongbox', 4, 43, 42919);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987683, 3, 5743, 'Syndicate Strongbox', 4, 43, 42920);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100172, 987682, 0, -888.221, -2019.86, 34.466, 3.22703, 0, 0, 0.999088, -0.0427065, 10, 10, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100173, 987683, 0, -751.776, -1983.21, 34.6704, 5.7466, 0, 0, 0.265085, -0.964225, 10, 10, 100, 1, 0, 0, 0, 10);

                    -- Loot Template
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42919, 30450, -100);
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42920, 30451, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2810, 30344); -- Hammon Karwn (Refuge Pointe)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2810, 30344);  -- Hammon Karwn (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30345, 45, 30, 37, 8, 'Help a Drunk', 'The Kobolds far to the east, past Hammerfall have stolen my Dwarven Stout!. Find it and bring them back to me!', 'Find 8 Arathi Dwarven Brew from the Kobold Cave to the east, past Hammerfall then bring them back to Skuerto at Refuge Pointe.', 'I\'m getting wasted tonight!', 'Did you find the brew?', '', '', '', '', '', 30453, 0, 0, 0, 8, 0, 0, 0, 47, 100, 3300, 1500);

                -- Objects
                    -- Templates
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987684, 3, 334, 'Barrel of Arathi Dwarven Brew', 4, 43, 42921);

                    -- Spawns
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100185, 987684, 0, -853.364, -3890.83, 140.809, 1.64909, 0, 0, 0.734239, 0.678891, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100184, 987684, 0, -798.698, -3882.9, 144.969, 1.84151, 0, 0, 0.79606, 0.605218, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100183, 987684, 0, -796.747, -3898.51, 144.969, 0.344545, 0, 0, 0.171422, 0.985198, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100182, 987684, 0, -861.363, -3935.41, 151.05, 1.24697, 0, 0, 0.583867, 0.811849, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100181, 987684, 0, -892.757, -4008.61, 145.497, 2.80599, 0, 0, 0.985954, 0.167017, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100180, 987684, 0, -878.161, -3967.49, 135.827, 6.00648, 0, 0, 0.137911, -0.990445, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100179, 987684, 0, -906.847, -3942.74, 151.713, 1.10638, 0, 0, 0.525405, 0.850852, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100178, 987684, 0, -964.243, -3933.59, 145.72, 3.58825, 0, 0, 0.975166, -0.221475, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100177, 987684, 0, -926.079, -3898.37, 144.654, 4.80169, 0, 0, 0.674839, -0.737965, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100176, 987684, 0, -935.563, -3840.69, 147.966, 5.81487, 0, 0, 0.232025, -0.97271, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100175, 987684, 0, -983.269, -3887.61, 148.931, 3.74534, 0, 0, 0.954781, -0.29731, 330, 330, 100, 1, 0, 0, 0, 10);
                        REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100174, 987684, 0, -977.166, -3797.49, 143.593, 5.73632, 0, 0, 0.270038, -0.96285, 330, 330, 100, 1, 0, 0, 0, 10);

                    -- Loot Template
                        REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42921, 30453, -100);

                -- Start
                    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2789, 30345); -- Skuerto (Refuge Pointe)

                -- End
                    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2789, 30345);  -- Skuerto (Refuge Pointe)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30346, 45, 30, 33, 8, 'Back on the Menu', 'The syndicate took me cows! They are at Northfold Manor, please get them back for me!', 'Capture 6 Cows from Northfold Manor to the west and then return them back to Narj Deepslice at Refuge Pointe.', 'Meat and milk is back on the menu!', 'Did you find the cows?', '', '', '', '', '', 30455, 0, 0, 0, 6, 0, 0, 0, 47, 100, 2400, 1500);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30454, `SrcItemCount`=1, `ReqItemId2`=30454, `ReqItemCount2`=1 WHERE  `entry`=30346 AND `patch`=0;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2814, 30346); -- Narj Deepslice (Refuge Pointe)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2814, 30346);  -- Narj Deepslice (Refuge Pointe)
    -- Desolace
        -- NPCs
            -- Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90132, 'Kayme Fhiro', '', 45, 45, 80, 2, 6879, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90133, 'Alumnia', '', 45, 45, 80, 2, 5186, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

            -- Spawns
                -- Bowyer
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000193, 14301, 0, 0, 0, 0, 1, -1409.25, 1478.99, 61.1006, 3.64633, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Food and Drink
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000194, 4181, 0, 0, 0, 0, 1, -1396.93, 1486.62, 61.6992, 2.58448, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Quest Givers
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000195, 90132, 0, 0, 0, 0, 1, -1408, 1486.36, 61.2536, 2.37005, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000196, 90133, 0, 0, 0, 0, 1, -1391.44, 1496.96, 61.2529, 1.44249, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);


        -- Reagents for reclaimers inc not require 2nd part to get 3rd (only require first, satyrs)
            UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=0 WHERE  `entry`=1458 AND `patch`=0;
            UPDATE `mangos`.`quest_template` SET `NextQuestInChain`=0 WHERE  `entry`=1459 AND `patch`=7;
            UPDATE `mangos`.`quest_template` SET `PrevQuestId`=1458 WHERE  `entry`=1466 AND `patch`=0;


        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30347, 405, 33, 38, 8, 'Kayme Fhiro ', 'The demon threat in this land is great. Go far south to Scrabblescrew\'s Camp and find Kayme Fhiro.', 'Find Kayme Fhiro far south in Desolace at Scrabblescrew\'s Camp.', 'All demons must be wiped from this planet.', 'Did you find Kayme Fhiro ', '', '', '', '', '', 0, 0, 69, 100, 1200);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5642, 30347); -- Vahlarriel Demonslayer (Nijels Point)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90132, 30347);   -- Kayme Fhiro (Scrabblescrew's Camp)

        -- New quest hub very far south
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `NextQuestInChain`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30076, 405, 30, 37, 30348, 8, 'Infernals Of Desolace', 'Far south in Desolace there still remains infernals from the third war. Wipe out their existence.', 'Kill 15 Lesser Infernals for to Vahlarriel Demonslayer at Nijel\'s Point in Desolace.', 'All demons must be wiped from this planet.', 'Did you wipe out the infernals?', '', '', '', '', '', 4676, 15, 69, 100, 2800);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90132, 30076);  -- Kayme Fhiro (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90132, 30076); -- Kayme Fhiro (Scrabblescrew's Camp)

            -- Quest
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30077, 405, 30, 38, 8, 'Fel Guards of Desolace', 'Far south in Desolace there still remains fel guards from the third war. Wipe out their existence.', 'Kill 10 Doomwarders for to Vahlarriel Demonslayer at Nijel\'s Point in Desolace.', 'All demons must be wiped from this planet.', 'Did you wipe out the fel guards?', '', '', '', '', '', 4677, 10, 69, 100, 2800);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90132, 30077);  -- Kayme Fhiro (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90132, 30077); -- Kayme Fhiro (Scrabblescrew's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30348, 405, 32, 38, 30076, 30349, 30458, 1, 'Portals of the Legion', 'Behold - the Hand of Iruxos. A gruesome sight indeed.$B$BYou must possess it if the demon portals at Mannoroc Coven are to be banished... which is what I now ask you to do. The Demon threat is increasing and we must close these portals to stem the tide of demons to this world. Good luck, $N... and be wary of the portal guardians.\n', 'Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.\n', 'You are to be commended, $n.  Your effort has helped greatly in fighting the demon threat, and all of Azeroth is safer because of it.\n', 'Have you banished the demon portals at Mannoroc Coven?\n', '', 'Portals Banished', 'Portals Banished', '', '', 30458, 1, 11937, 6, 16794, 16873, 1, 1, 69, 150, 3550, 4500, 2160, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90132, 30348); -- Kayme Fhiro (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90132, 30348);  -- Kayme Fhiro (Scrabblescrew's Camp)

         -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30349, 405, 25, 40, 1, 8, 30348, 'The Corrupter', 'Although I have no knowledge of this Lord Azrethoc, I agree with Maurin, he must be stopped; especially if he is attempting to gain influence over the Burning Blade to further his goals.$B$BYou have already shown you wish to aid the Warchief, and I would trust you to gather a party to slay the demon lord and his warlock servant.$B$BWhen you are ready, head directly south,  and return to me when the threat has been ended.', 'Slay Lord Azrethoc and Jugkar Grim\'rod and return to Takata Steelblade in Desolace.', 'A mighty victory for us all, $N. Let us rejoice in your success. I trust now that our future here is not as bleak as I once thought.$B$BThe demons will be slain, the Burning Blade will fail in their efforts, and we may one day have a place we can safely call home again.', 'Glory to the Horde, and death to our enemies, $N!$B$BThe demons in Desolace pose a greater threat than ever before. My hope of returning to the Warchief dwindles as more and more of the foul creatures seem to appear.$B$BI sometimes wish it was only the centaur we had to deal with.', '', '', '', '', '', 5760, 5771, 1, 1, 6746, 6747, 1, 1, 69, 150, 3900, 2340, 1, 1, 1, 1, 1, 2, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90132, 30349); -- Kayme Fhiro (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90132, 30349);  -- Kayme Fhiro (Scrabblescrew's Camp)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30078, 405, 35, 40, 8, 'Demon Summoners', 'Far south in Desolace there is a group of orc summoners trying to summon more demons into our world. Put a stop to them.', 'Kill 15 Burning Blade Summoner and 15 Burning Blade Invoker for to Vahlarriel Demonslayer at Nijel\'s Point in Desolace.', 'All demons must be wiped from this planet.', 'Did you kill all the orc summoners?', '', '', '', '', '', 4668, 4705, 15, 15, 69, 100, 2800);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90133, 30078);  -- Alumnia (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90133, 30078); -- Alumnia (Scrabblescrew's Camp)
            
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`) VALUES (30245, 405, 35, 45, 8, 'Master Summoner', 'Far south in Desolace there is a group of orc summoners being led by Monu. Go there, and kill Monu for me.', 'Kill Monu for Vahlarriel Demonslayer at Nijel\'s Point in Desolace.', 'All demons must be wiped from this planet.', 'Did you kill all the orcs leader?', '', '', '', '', '', 90046, 1, 30126, 1, 69, 100, 3500, 5500, 3500);

                -- Creature
                    -- Template
                        REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `ai_name`, `movement_type`, `inhabit_type`, `equipment_id`, `static_flags1`) VALUES (90046, 'Monu', 'Master Summoner', 45, 45, 554, 4709, 4710, 11309, 11310, 40, 40, 10, 5, 95, 7, 8, 2.0, 2, 1.5, 0.16, 4668, 4668, 55, 201, 46680, 'EventAI', 1, 1, 4668, 524288);

                        UPDATE `mangos`.`creature_template` SET `armor_multiplier`=0.7, `spell_list_id`=200115 WHERE  `entry`=90046 AND `patch`=0;

                    -- Spawns
                        REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000060, 90046, 0, 0, 0, 0, 1, -1849.11, 592.273, 157.556, 0.455089, 660, 660, 5, 100, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90133, 30245);  -- Alumnia (Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90133, 30245); -- Alumnia (Scrabblescrew's Camp)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30350, 405, 30, 40, 8, 1453, 1459, 'Burning Blade Documents', 'One of my tasks out here involves picking up some reagents for Leftwitch, a gnome mage in Kharanos . Roetten seems to think it\'s easy coin in the bank since we\'re out here already. He doesn\'t really care that we\'re short-handed as is.$B$BThe first few items on his list should be easy enough to get, and it\'d be a good chunk of coin for anyone helping me out.$B$BI need some horns and claws from the Hatefury satyr to the east of here. Bring \'em back to me and we\'ll get started on the rest of the list.', 'Bring 10 Hatefury Claws, and 10 Hatefury Horns to Kreldig Ungor in Desolace.', 'Good good, $N. Not sure if these are of any good quality, but if Leftwitch wanted a specific type, he should have specified before sending the Reclaimers out here to begin with.$B$BWhat say you to getting on with the next item on his list?', 'Despicable creatures, the satyr. Story says they\'re somehow tied to the night elves, but I\'m not so sure I believe it.$B$BI think they get that on account of that one elf that brought them into the war few years back. World\'s never been the same since. Lot more dangerous, and a lot scarier.', '', '', '', '', '', 30456, 30457, 1, 1, 69, 100, 3100, 3500, 1620, 1, 1, 1, 1, 1, 1, 6);

            -- Objects
                -- Templates
                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987685, 3, 5743, 'Burning Blade Coffer', 4, 43, 42922);
                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987686, 3, 5743, 'Burning Blade Coffer', 4, 43, 42923);

                -- Spawns
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100186, 987685, 1, -1962.9, 545.689, 166.397, 5.88942, 0, 0, 0.195614, -0.980681, 10, 10, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100187, 987686, 1, -1845.91, 606.462, 136.457, 5.48807, 0, 0, 0.387169, -0.922009, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42922, 30456, -100);
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42923, 30457, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90133, 30350);  -- Alumnia(Scrabblescrew's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90133, 30350); -- Alumnia (Scrabblescrew's Camp)

    -- Hinterlands
        -- NPCs
            -- Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90135, 'Dully Stoutfury', '', 45, 45, 80, 2, 4988, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90136, 'Moh Anvilforge', '', 45, 45, 80, 2, 3099, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90137, 'Hellen Brewarm', '', 45, 45, 80, 2, 1670, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90138, 'Explorer Shortmountain', '', 45, 45, 80, 2, 3042, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

            -- Spawns
                -- Weapon Merchant
                    REPLACE `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000197, 5102, 0, 0, 0, 0, 0, 229.692, -2859.53, 110.293, 3.27836, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Quest Givers
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000201, 90135, 0, 0, 0, 0, 0, 257.516, -2808.04, 123.371, 2.09614, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000202, 90136, 0, 0, 0, 0, 0, 213.241, -2734.97, 123.369, 5.34376, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000203, 90137, 0, 0, 0, 0, 0, 261.012, -2756.24, 122.553, 3.85151, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000204, 90138, 0, 0, 0, 0, 0, 203.559, -2782.15, 120.876, 3.62453, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000200, 90139, 0, 0, 0, 0, 0, -208.915, -2517.74, 119.664, 4.03385, 660, 660, 5, 100, 100, 1, 0, 0, 0, 10);

        -- Creatures
            UPDATE `mangos`.`creature_template` SET `npc_flags`=2 WHERE  `entry`=2474 AND `patch`=0;

            -- The Ancient Egg (Gave Hitah'ya the Keeper custom spells and made stronger)
            UPDATE `mangos`.`creature_template` SET `health_multiplier`=25, `mana_multiplier`=25, `spell_list_id`=200080, `auras`='33706' WHERE  `entry`=10802 AND `patch`=0;

        -- Quest 
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30353, 47, 40, 44, 8, 30354, 'Gilveradin Sunchase', 'My master lives in The Hinterlands just past here at Shindigger\'s Camp. Please find him.', 'Find Gilveradin Sunchase at Shindigger\'s Camp in The Hinterlands.', 'Kudros told you to come see me? He must be hungry...', 'What are you doing? Go to Shindigger\'s camp and find Gilveradin Sunchase!', '', '', '', '', '', 471, 75, 1750, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2474, 30353);  -- Kudros (Entrance of Hinterlands at Hillsbrad)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7801, 30353); -- Gilveradin Sunchase (Shindigger's Camp)

        -- -> Kill Wolves for meat
                REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30354, 47, 40, 44, 8, 30353, 30355, 'Gryphon Dinner', 'The gryphons here are hungry. Kill the Silvermane wolves here for their meat so I can cook it up and feed it to them. They don\'t like their meat Raw.', 'Bring an 8 Raw Silvermane Meat Gilveradin Sunchase at Shindigger\'s Camp in the Hinterlands.', 'Now to cook this up...', 'Bring 8 Raw Silvermane Meat to Gilveradin Sunchase at Shindigger\'s Camp in the Hinterlands.', '', '', '', '', '', 30460, 8, 0, 0, 0, 0, 0, 0, 3900, 1680);
                
                -- Loot Template
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2923, 30460, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2924, 30460, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2925, 30460, -25);
                    REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2926, 30460, -25);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7801, 30354);  -- Gilveradin Sunchase (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7801, 30354); -- Gilveradin Sunchase (Shindigger's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30355, 47, 40, 45, 8, 30354, 0, 'Feeding Gryphons', 'Here is the cooked meat, use this to feed the Gryphons in The Hinterlands.', 'Feed 8 Gryphons then return to Gilveradin Sunchase at Shindigger\'s Camp in the Hinterlands.', 'Now the Grphons should be full!', 'Did you feed the Gryphons?', '', '', '', '', '', 2658, 0, 8, 0, 69, 100, 4100);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30461, `SrcItemCount`=1, `ReqItemId1`=30461, `ReqItemCount1`=1, `ObjectiveText1`='Gryphons Fed' WHERE  `entry`=30355;

            -- Allow Gryphons to be targettable by TARGET_UNIT_FRIEND (21) spells
            UPDATE creature_template SET static_flags1 = static_flags1 | 0x00400000 WHERE entry = 2658;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7801, 30355);  -- Gilveradin Sunchase (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7801, 30355); -- Gilveradin Sunchase (Shindigger's Camp)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30027, 47, 40, 45, 8, 'Undamaged Venom Sac', 'The gryphons here are getting sick. If I had more undamaged venom sacs from the Witherbark spiders to the south east. Could you get me some so we can save these gryphons?', 'Bring an Undamaged Venom Sac Gilveradin Sunchase at Shindigger\'s Camp in the Hinterlands. This venom sac disappears after 30 minutes.', 'This should help me create an antidote. Thank you, you saved the lives of some Gryphons!', 'Bring an Undamaged Venom Gilveradin Sunchase at Shindigger\'s Camp in the Hinterlands. This venom sac disappears after 30 minutes.', '', '', '', '', '', 9322, 1, 0, 0, 0, 0, 0, 0, 3900, 1680);
            UPDATE `mangos`.`quest_template` SET `RewRepFaction1`=471, `RewRepValue1`=100 WHERE  `entry`=30027 AND `patch`=0;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7801, 30027);  -- Gilveradin Sunchase (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7801, 30027); -- Gilveradin Sunchase (Shindigger's Camp)

        -- Quest 
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30356, 47, 40, 45, 8, 'Spider Troll Worshippers', 'The trolls to the south west in Shadra\'Alor keep bothering our Gryphons. Go there and kill them.', 'Kill 8 Witherbark Sadist and 8 Witherbark Callers then return to Falstad Wildhammer at Aerie Peak.', 'This should help keep our Gryphons safe!', 'Did you kill the trolls?', '', '', '', '', '', 2653, 2654, 6, 2, 471, 100, 4100);

            -- Creatures
                -- Witherbark Caller now level 49
                UPDATE `mangos`.`creature_template` SET `level_min`=49, `level_max`=49 WHERE  `entry`=2654 AND `patch`=0;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5635, 30356); -- Falstad Wildhammer (Aerie Peak)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5635, 30356); -- Falstad Wildhammer (Aerie Peak)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30357, 47, 40, 45, 8, 'Burning Eggs', 'The troll temple to the south west in Shadra\'Alor has been infested with spiders which they seem to worship. Go there and burn their eggs. Beware, there might be angry spiderlings that come out after you burn the eggs.', 'Kill 40 Witherbark Broodguard Spiderling then return to Falstad Wildhammer at Aerie Peak.', 'This should help keep our Gryphons safe!', 'Did you burn the eggs?', '', '', '', '', '', 90134, 0, 40, 0, 471, 100, 4100);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30459, `SrcItemCount`=1, `ReqItemId1`=30459, `ReqItemCount1`=1 WHERE  `entry`=30357;

            -- Creature
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `display_probability1`, `display_total_probability`, `type`, `pet_family`, `unit_class`, `health_multiplier`, `damage_multiplier`, `pet_spell_list_id`, `movement_type`, `inhabit_type`, `static_flags1`) VALUES (90134, 'Witherbark Broodguard Spiderling', 44, 45, 312, 1157, 1, 1, 1, 1, 3, 1, 0.4, 0.4, 5904, 1, 1, 16);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data3`, `data7`) VALUES (987690, @GAMEOBJECT_TYPE_GOOBER, 378, 'Broodguard Eggs', 35, 43, 1, 19543);

                -- Spawns
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100202, 987690, 0, -473.92, -2814.03, 110.351, 6.22673, 0, 0, 0.0282223, -0.999602, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100201, 987690, 0, -422.08, -2766.82, 92.9843, 0.837343, 0, 0, 0.406547, 0.91363, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100200, 987690, 0, -429.649, -2821.4, 80.7354, 2.46312, 0, 0, 0.943009, 0.332768, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100199, 987690, 0, -239.313, -2877.14, 98.5318, 2.26677, 0, 0, 0.905851, 0.423595, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100198, 987690, 0, -267.22, -2891.38, 88.0153, 3.66557, 0, 0, 0.965877, -0.259001, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100197, 987690, 0, -309.128, -2874.16, 79.9503, 0.693616, 0, 0, 0.339898, 0.940462, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100196, 987690, 0, -368.902, -2827.64, 76.5383, 6.08144, 0, 0, 0.100699, -0.994917, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100195, 987690, 0, -398.044, -2824.98, 76.121, 0.355891, 0, 0, 0.177008, 0.984209, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100194, 987690, 0, -419.659, -2886.45, 83.8111, 0.596223, 0, 0, 0.293716, 0.955893, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100193, 987690, 0, -393.872, -2925.75, 78.4716, 3.44643, 0, 0, 0.988406, -0.151831, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100192, 987690, 0, -321.818, -2933.92, 79.3853, 3.45821, 0, 0, 0.987495, -0.157651, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100191, 987690, 0, -282.795, -2935.73, 85.2449, 2.71994, 0, 0, 0.977858, 0.209268, 330, 330, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5635, 30357); -- Falstad Wildhammer (Aerie Peak)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5635, 30357); -- Falstad Wildhammer (Aerie Peak)

        -- Level50 Owlbeast kill quest inside Bogen's Ledge (Cave). Comes with 2 level 45 owlbeasts
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`) VALUES (30358, 47, 40, 50, 8, 'Chosen Owlbeast', 'To the south there is a cave called Bogen\'s Ledge. Go there and kill the mighty Owlbeast that inhabits it.', 'Kill Elune\'s Chosen then return to Gryphon Master Talonaxe at Aerie Peak.', 'Great job!', 'Did you burn the owlbeast?', '', '', '', '', '', 90139, 0, 1, 0, 471, 100, 5100);

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `loot_id`, `gold_min`, `gold_max`, `movement_type`) VALUES (90139, 'Elune\'s Chosen', 50, 50, 14, 12238, 1, 1, 7, 1, 2.5, 1.5, 2928, 81, 449, 1);

                    UPDATE `mangos`.`creature_template` SET `display_scale1`=2, `spell_list_id`=200116, `auras`='24907' WHERE  `entry`=90139;

                -- Spawns
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000198, 2928, 0, 0, 0, 0, 0, -215.515, -2519.66, 118.41, 4.10064, 360, 360, 5, 100, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000199, 2928, 0, 0, 0, 0, 0, -209.715, -2524.51, 119.077, 4.08101, 360, 360, 5, 100, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000200, 90139, 0, 0, 0, 0, 0, -208.915, -2517.74, 119.664, 4.03385, 660, 660, 5, 100, 100, 1, 0, 0, 0, 10);


            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5636, 30358); -- Gryphon Master Talonaxe (Aerie Peak)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5636, 30358); -- Gryphon Master Talonaxe (Aerie Peak)
        -- Quest 30359
        -- https://www.wowhead.com/cata/quest=26381/the-eye-of-shadra 5 part quest to summon shadra
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30359, 47, 40, 48, 8, 0, 30360, 'Eye of Shadra', 'In order to stop the trolls to the south, at Shadra\'Alor we need to summon their spider God, Shadra, and end kill her. To summon her, we will need to gather 3 items first. They are scattered around The Hinterlands, hidden away in chests by the trolls at Agol\'watha to the east, west of Skulk Rock. The first item is her eye.', 'Bring an Eye of Shadra to Rhapsody Shindiggerat Shindigger\'s Camp in the Hinterlands.', 'There are still more items left before we can summon and kill Shadra!', 'Well? Where\'s the Eye of Shadra?', '', '', '', '', '', 30462, 1, 471, 100, 3900, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987691, @GAMEOBJECT_TYPE_CHEST, 5743, 'Troll Coffer', 4, 43, 42924);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100206, 987691, 0, 469.236, -3326.68, 120.196, 3.69379, 0, 0, 0.962126, -0.272605, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42924, 30462, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30359);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30359); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest 30360
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30360, 47, 40, 48, 8, 30359, 30361, 'Fang of Shadra', 'In order to stop the trolls to the south, at Shadra\'Alor we need to summon their spider God, Shadra, and end kill her. To summon her, we will need to gather 3 items first. They are scattered around The Hinterlands, hidden away in chests by the trolls, at The Creeping Ruins to the east, south of Agol\'watha. The second item is her Fang.', 'Bring a Fang of Shadra to Rhapsody Shindiggerat Shindigger\'s Camp in the Hinterlands.', 'There are still more items left before we can summon and kill Shadra!', 'Well? Where\'s the Fang of Shadra?', '', '', '', '', '', 30463, 1, 471, 100, 3900, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987692, @GAMEOBJECT_TYPE_CHEST, 5743, 'Troll Coffer', 4, 43, 42925);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100207, 987692, 0, 128.943, -3482.08, 107.504, 0.745391, 0, 0, 0.364127, 0.931349, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42925, 30463, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30360);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30360); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest 30361
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30361, 47, 40, 48, 8, 30360, 30362, 'Shell of Shadra', 'In order to stop the trolls to the south, at Shadra\'Alor we need to summon their spider God, Shadra, and end kill her. To summon her, we will need to gather 3 items first. They are scattered around The Hinterlands, hidden away in chests by the trolls, at The Altar of Zul to the south east, south of The Creeping Ruins. The third and last item is her Shell.', 'Bring a Shell of Shadra to Rhapsody Shindiggerat Shindigger\'s Camp in the Hinterlands.', 'There are still more items left before we can summon and kill Shadra!', 'Well? Where\'s the Shell of Shadra?', '', '', '', '', '', 30464, 1, 471, 100, 3900, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987693, @GAMEOBJECT_TYPE_CHEST, 5743, 'Troll Coffer', 4, 43, 42926);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100208, 987693, 0, -295.1, -3460.21, 193.885, 0.855338, 0, 0, 0.414751, 0.909935, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42926, 30464, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30361);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30361); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30362, 47, 40, 48, 8, 30361, 30363, 'Summoning Shadra', 'Now that you have these 3 items, you need to use them on the troll altars inside Shadra\'Alor. Afterwards, bring the fully charged Shadra Idol back to me at Shindigger\'s Camp, then I will make it into a scroll to finally summon the beast!', 'Use the Idol of Shadra on the 3 troll altars in The Hinterlands.', 'Now it\'s time to kill Shadra!', 'Go use the Shadra Idol on the troll altars!', '', '', '', '', '', 30465, 1, 471, 100, 5100, 1680);
            
            -- Dummy NPCs and replace quest text
            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30465, `SrcItemCount`=1, `ObjectiveText1`='Northwestern Temple', `ObjectiveText2`='Eastern Temple', `ObjectiveText3`='Southwestern Temple', `ReqCreatureOrGOId1`=3197, `ReqCreatureOrGOId2`=3198, `ReqCreatureOrGOId3`=3199, `ReqCreatureOrGOCount1`=1, `ReqCreatureOrGOCount2`=1, `ReqCreatureOrGOCount3`=1 WHERE `entry`=30362;

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987694, 10, 227, 'Shadra\'Alor Summoning Altar', 1.0, 304, 7, 1, -1);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987695, 10, 227, 'Shadra\'Alor Summoning Altar', 1.0, 304, 7, 1, -1);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987696, 10, 227, 'Shadra\'Alor Summoning Altar', 1.0, 304, 7, 1, -1);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100203, 987694, 0, -247.457, -2804.94, 114.562, 3.59877, 0, 0, 0.973988, -0.226602, 25, 25, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100204, 987695, 0, -370.854, -3014.7, 110.385, 1.5528, 0, 0, 0.700716, 0.71344, 25, 25, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100205, 987696, 0, -486.404, -2817.84, 114.548, 4.30955, 0, 0, 0.834276, -0.551347, 25, 25, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30362);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30362); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30363, 47, 40, 55, 8, 30362, 0, 'Shadra the Venom Queen', 'Now the final step, go to Shadra\'s Altar and use this scroll to kill her!', 'Use Gadrin\'s Parchment to summon Shadra at Shadra\'s Altar and kill her. Return to Rhapsody Shindigger at Shindigger\'s Camp.afterwards.', 'At last, this should put a huge dent in the trolls plans!', 'Quickly, go kill Shadra!', '', '', '', '', '', 0, 0, 471, 500, 17000, 1680);
            
            UPDATE `mangos`.`quest_template` SET `SrcItemId`=9323, `SrcItemCount`=1, `ReqCreatureOrGOId1`=2707, `ReqCreatureOrGOCount1`=1, `RewChoiceItemId1`=9649, `RewChoiceItemId2`=9650, `RewChoiceItemId3`=10686, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1 WHERE `entry`=30363;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30363);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30363); -- Rhapsody Shindigger (Shindigger's Camp)

        -- Chain from Rhapsody Shindigger to kill the low level trolls(10/10), then medium level (15/15), then Qiraji the keeper
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30364, 47, 40, 42, 8, 0, 30365, 'Trolls of Zun\'watha', 'The Hinterlands is infested with trolls. Go to Zun\'watha to the south and eliminate them.', 'Kill 10 Witherbark Scalpers and 10 Witherbark Zealots then return to Rhapsody Shindigger at Shindigger\'s Camp.', 'Your work isn\'t done, there\'s still more trolls to take care of.', 'What are you doing? There\'s trolls to be killing!', '', '', '', '', '', 2649, 2650, 10, 10, 471, 100, 3100, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30364);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30364); -- Rhapsody Shindigger (Shindigger's Camp)
        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30365, 47, 40, 43, 8, 30364, 30366, 'Trolls of Hiri\'watha', 'The Hinterlands is infested with trolls. Go to Hiri\'watha to the south east mand eliminate them.', 'Kill 10 Witherbark Hideskinners and 10 Witherbark Venombloods then return to Rhapsody Shindigger at Shindigger\'s Camp.', 'Your work isn\'t done, there\'s still more trolls to take care of.', 'What are you doing? There\'s trolls to be killing!', '', '', '', '', '', 2651, 2652, 10, 10, 471, 100, 3500, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30365);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30365); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30366, 47, 40, 47, 8, 30365, 30367, 'The Altar of Zul', 'The Hinterlands is infested with trolls. Go to The Altar of Zul to far to the south east mand eliminate them.', 'Kill 8 Vilebranch Axe Throwers, 8 Vilebranch Scalpers, and Vilebranch Soothsayers then return to Rhapsody Shindigger at Shindigger\'s Camp.', 'Your work isn\'t done, there\'s still more trolls to take care of.', 'What are you doing? There\'s trolls to be killing!', '', '', '', '', '', 2639, 4466, 4467, 8, 8, 8, 471, 150, 3900, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30366);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30366); -- Rhapsody Shindigger (Shindigger's Camp)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30367, 47, 40, 50, 1, 8, 30366, 0, 'The Keeper\'s of Zul', 'Your final troll killing task for now is to go to the ALtar of Zul, far to the south east of here, and kill the two keepers that guard it.', 'Kill Qiaga the Keeper and Morta\'gya the Keeper then return to Rhapsody Shindigger at Shindigger\'s Camp.', 'Great work! You\'re free to take a break. for now.', 'What are you doing? There\'s trolls to be killing!', '', '', '', '', '', 7996, 8636, 0, 1, 1, 0, 471, 250, 4900, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5634, 30367);  -- Rhapsody Shindigger (Shindigger's Camp)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5634, 30367); -- Rhapsody Shindigger (Shindigger's Camp)
            
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`) VALUES (30368, 3, 47, 44, 48, 8, 'Vilebranch Hooligans', 'Vilebranch scum invaded our village and stole my tools! I have backup tools but the set they stole was a gift given to me by a kind hearted gnome that saved my life when I was a young orc.$B$BI want those tools back, $N - they mean the world to me.$B$BMarkhor reported that the tools were spotted near the Agol\'watha and Shaol\'watha temples.$B$BThose temples are in the northeastern region of the Hinterlands.$B$BRecover my tools!', 'Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree\'s Lost Tools. Return to him once this task is complete.$B$BYou recall Smith Slagtree mentioning that the tools might be at one of the Vilebranch temples in the northeastern region of the Hinterlands. You should also check Skulk Rock.', 'My tools! You found them! Oh glorious day! Thank you, $N.', 'Watch out for the Vilebranch trolls of the region, $N. They are ruthless, murderous filth.', '', '', '', '', '', 19033, 1, 471, 100, 4400, 14000, 2640, 1, 1, 1, 1, 1, 1, 5, 5, 4);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30368);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90135, 30368); -- Dully Stoutfury (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30369, 47, 44, 48, 8, 0, 0, 'Stout in the Water', 'In order to stop the trolls to the south, at Shadra\'Alor we need to summon their spider God, Shadra, and end kill her. To summon her, we will need to gather 3 items first. They are scattered around The Hinterlands, hidden away in chests by the trolls, at The Altar of Zul to the south east, south of The Creeping Ruins. The third and last item is her Shell.', 'Bring a Shell of Shadra to Dully Stoutfury at the Quel\'Danil Lodge in the Hinterlands.', 'There are still more items left before we can summon and kill Shadra!', 'Well? Where\'s the Shell of Shadra?', '', '', '', '', '', 30466, 1, 471, 100, 4400, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987697, 3, 49, 'Mud', 4, 43, 42927, 0);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100209, 987697, 0, 545.625, -3477.4, 58.6243, 0.890559, 0, 0, 0.43071, 0.90249, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42927, 30466, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30369);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90135, 30369); -- Dully Stoutfury (Quel'Danil Lodge)

        -- Quest Primitive OwlBeast (2928) (Spirit 90140)
            -- TODO: Spell needs to be usable on dead things, need to figure out targetting. Its a flag that must be set (16777216 ?)
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30370, 47, 40, 45, 0, 8, 0, 30371, 'Release The High Elf Spirits', 'The High Elf spirits have posessed the Primitive Owlbeasts here. Kill the Owlbeasts, then release the spirit and rid the world of them.', 'Kill Primitive Owlbeasts then use the Dimensional Spirit Ripper to pull out the High Elf spirits and kill 15 of them then return to Dully Stoutfury at the Quel\'Danil Lodge in the Hinterlands', 'Nice job!', 'Get rid of the High Elf Spirits!', '', '', '', '', '', 90140, 0, 0, 15, 0, 0, 471, 250, 4900, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30467, `SrcItemCount`=1, `ReqItemId1`=30467, `ReqItemCount1`=1 WHERE `entry`=30370;

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `armor_multiplier`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `mechanic_immune_mask`) VALUES (90140, 'High Elf Spirit', 44, 45, 14, 5430, 1, 1, 1.11111, 6, 1, 0.85, 53, 204, 21770, 1, 8413718);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30370);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90135, 30370); -- Dully Stoutfury (Quel'Danil Lodge)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30371, 47, 44, 48, 8, 30370, 30372, 'Black Dynamite', 'For your next task I want you to blow up some Savage Owlbeasts, but thehe damned trolls stole my dynamite! Find where they hid it and bring it back to me.', 'Bring the Damaged Dwarven Dynamite to Dully Stoutfury at the Quel\'Danil Lodge in the Hinterlands.', 'Blasted! The trolls damaged the dynamite. Let me try to fix it.', 'Did you find my Dynamite?', '', '', '', '', '', 30469, 1, 471, 100, 4400, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987698, 3, 112, 'Dwarven Dynamite', 4, 43, 42928, 0);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100210, 987698, 0, -66.7429, -4022.42, 121.727, 0.984004, 0, 0, 0.472392, 0.881389, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42928, 30469, -100);
            
            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30371);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90135, 30371); -- Dully Stoutfury (Quel'Danil Lodge)

        -- -> Quest 
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30372, 47, 44, 48, 0, 8, 30371, 30373, 'Blow up the Owlbeasts', 'Take this Dwarven Dynamite and use it on Savage Owlbeasts close to death to explode them!.', 'Kill 15 Savage Owlbeasts with Dwarven Dynamite then return to Dully Stoutfury at the Quel\'Danil Lodge in the Hinterlands.', 'Nice job!', 'Did you blow up the owlbeasts with the dynamite yet?!', '', '', '', '', '', 3099, 0, 0, 15, 0, 0, 471, 250, 4900, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30468, `SrcItemCount`=1, `ReqItemId1`=30468, `ReqItemCount1`=1, `ObjectiveText1`='Savage Owlbeasts killed with Dwarven Dynamite' WHERE `entry`=30372;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30372);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90135, 30372); -- Dully Stoutfury (Quel'Danil Lodge)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30373, 47, 44, 48, 0, 8, 30372, 0, 'Tested Dynamite Delivery', 'Now that this dynamite has been well tested, give it to the Gnomes in Ironforge. They might have a use for it.', 'Take the Dwarven Dynamite to High Tinker Mekkatorque in Tinker Town at Ironforge.', 'Hmm...interesting. I will look into using this in our devices in the future. Here, take one of these items from your High Elf friends at the Hinterlands for your troubles.', 'What is this? Dwarven dynamite, you tested it yourself?', '', '', '', '', '', 0, 0, 0, 0, 0, 0, @FACTION_GNOMEREGAN_EXILES, 250, 7100, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30470, `SrcItemCount`=1, `ReqItemId1`=30470, `ReqItemCount1`=1, `RewChoiceItemId1`=19114, `RewChoiceItemId2`=19115, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1 WHERE `entry`=30373;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90135, 30373);  -- Dully Stoutfury (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7937, 30373); -- High Tinker Mekkatorque (Tinker Town, Ironforge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewItemId1`, `RewItemId2`, `RewItemCount1`, `RewItemCount2`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30026, 47, 44, 47, 8, 'Owls of the Hinterlands', 'Please cull the Hinterlands of the ravage Owlbeasts. They are starting to cause trouble for us.', 'Kill 10 Vicious Owlbeasts, 10 Primitive Owlbeasts and 10 Savage Owlbeast then return to Hellen Brewarm in the Hinterlands.', 'The Owlbeasts numbers have been thinned.', 'You haven\'t finished your task, get back to work!', '', '', '', '', '', 2927, 2928, 2929, 10, 10, 10, 19118, 12469, 1, 1, 4400, 1680);

            UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=0, `RewChoiceItemId2`=0, `RewChoiceItemCount1`=0, `RewChoiceItemCount2`=0, `RewItemId1`=0, `RewItemId2`=0, `RewItemCount1`=0, `RewItemCount2`=0, `RewRepFaction1`=@FACTION_WILDHAMMER, `RewRepValue1`=100 WHERE  `entry`=30026 AND `patch`=0;

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90137, 30026);  -- Hellen Brewarm (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90137, 30026); -- Hellen Brewarm (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30024, 47, 44, 48, 8, 'Stalking the Stalkers', 'The Silvermane wolves are one of the biggest threats to our hunters. They lay in wait, hiding amongst the bushes and landscape, then strike out when the opportunity presents itself.', 'Hellen Brewarm at Quel\'Danil Lodge in the Hinterlands wants you to kill 15 Silvermane Stalkers and 15 Silvermane Howlers. Return to her once the task is complete.', 'I feel much safer now.', 'What are you doin? There\'s still wolves out there to kill!', '', '', '', '', '', 2926, 2925, 15, 15, 4400, 1680);

            UPDATE `mangos`.`quest_template` SET `RewRepFaction1`=@FACTION_WILDHAMMER, `RewRepValue1`=100 WHERE  `entry`=30024 AND `patch`=0;

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90137, 30024);  -- Hellen Brewarm (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90137, 30024); -- Hellen Brewarm (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30374, 47, 44, 48, 0, 8, 0, 30375, 'Restocking Quivers', 'The owlbeasts here have very sharp claws, I can use them to make arrows for our High Elf friends here. Gather some for me. All the owlbeasts here have claws but the Savage Owlbeasts seem to have the sharpest claws.', 'Gather 8 Owlbeast Claws then return to Hellen Brewarm in Quel\'Danil Lodge at The Hinterlands.', 'This should help out our High Elves with brand new arrows!', 'Did you get the Owlbeast Claws?', '', '', '', '', '', 30471, 8, @FACTION_WILDHAMMER, 150, 4750, 1680);

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2927, 30471, -5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2928, 30471, -15);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2929, 30471, -25);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90137, 30374);  -- Hellen Brewarm (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90137, 30374); -- Hellen Brewarm (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30375, 47, 44, 48, 0, 8, 30374, 30376, 'Restocking Hides', 'The wolves here have very unique hides, I can use them to repair the damaged armor of our High Elf friends. Gather some for me. All the wolves here have tough hides but the Silvermane Stalkers have the toughest hides.', 'Gather 8 Silvermane Hides then return to Hellen Brewarm in Quel\'Danil Lodge at The Hinterlands.', 'Great! Now to patch up all the High Elves armor!', 'Did you get the Silvermane Hides?', '', '', '', '', '', 30472, 8, @FACTION_WILDHAMMER, 100, 5100, 1680);

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2923, 30472, -5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2924, 30472, -15);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2925, 30472, -15);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2926, 30472, -25);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90137, 30375);  -- Hellen Brewarm (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90137, 30375); -- Hellen Brewarm (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30376, 47, 44, 50, 0, 8, 30375, 0, 'Snapjaw Turtle Shells', 'I have one last task for you, $N. Gather some turtle shells from the Saltwater Snapjaws far to the east along the coast and bring them back to me.', 'Gather 8 Snapjaw Shells then return to Hellen Brewarm in Quel\'Danil Lodge at The Hinterlands.', 'You have done an amazing job, please take allow me to offer you one of these items to show my gratitude.', 'Did you get the Snapjaw Shells?', '', '', '', '', '', 30473, 8, @FACTION_WILDHAMMER, 250, 6000, 1680);

            UPDATE `mangos`.`quest_template` SET  `RewChoiceItemId1`=19117, `RewChoiceItemId2`=19116, `RewChoiceItemId3`=19119, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1 WHERE `entry`=30376;

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2505, 30473, -25);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90137, 30376);  -- Hellen Brewarm (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90137, 30376); -- Hellen Brewarm (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30377, 47, 44, 48, 0, 8, 0, 0, 'Skulk Rock Gathering', '$N, I am in need of someone as strong as you to explore the caves here. Go to Skulk Rock to the east and gather me mushrooms - I\'m very interested in how they can grow in a cave of such conditions.', 'Gather 12 Sleepshrooms then return to Explorer Shortmountain in Quel\'Danil Lodge at The Hinterlands.', 'These are some interesting mushrooms, they\'re in perfecet condition despite being surrounded by slimes.', 'Did you get the Sleepshrooms?', '', '', '', '', '', 30474, 8, @FACTION_WILDHAMMER, 150, 4900, 1680);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987699, 3, 359, 'Sleepshroom Stalk', 4, 43, 42929, 0);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100223, 987699, 0, 344.875, -3779.31, 107.26, 4.80373, 0, 0, 0.674086, -0.738653, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100222, 987699, 0, 364.495, -3832.19, 107.166, 0.711812, 0, 0, 0.34844, 0.937331, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100221, 987699, 0, 348.388, -3847.62, 107.162, 4.09688, 0, 0, 0.888081, -0.459687, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100220, 987699, 0, 419.454, -3891.97, 98.6178, 4.6388, 0, 0, 0.73264, -0.680616, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100219, 987699, 0, 423.461, -3789.64, 101.592, 5.83812, 0, 0, 0.2207, -0.975342, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100218, 987699, 0, 357.964, -3804.71, 126.822, 5.33468, 0, 0, 0.456673, -0.889635, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100217, 987699, 0, 427.415, -3790.09, 121.118, 3.69713, 0, 0, 0.96167, -0.274211, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100216, 987699, 0, 337.579, -3768.44, 127, 3.33584, 0, 0, 0.995287, -0.0969714, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100215, 987699, 0, 391.273, -3813.15, 116.986, 1.04955, 0, 0, 0.501016, 0.865438, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100214, 987699, 0, 374.439, -3782.07, 108.895, 4.52101, 0, 0, 0.77143, -0.636314, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100213, 987699, 0, 332.841, -3699.8, 106.859, 1.75248, 0, 0, 0.768339, 0.640043, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100212, 987699, 0, 338.589, -3752.41, 107.406, 1.19642, 0, 0, 0.563165, 0.826344, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100211, 987699, 0, 359.277, -3767.79, 107.504, 1.46974, 0, 0, 0.670492, 0.741917, 330, 330, 100, 1, 0, 0, 0, 10);
                
            -- Loot Template
                REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42929, 30474, -100);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90138, 30377);  -- Explorer Shortmountain (Quel'Danil Lodge)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90138, 30377); -- Explorer Shortmountain (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30378, 47, 44, 50, 8, 'Big Slimer', 'At the tip top of Skulk Rock there is a very big slime. Go there and rid the world of him for me..', 'Explorer Shortmountai at Quel\'Danil Lodge in the Hinterlands wants you to kill Big Slimer at the top of Skulk Rock to the east. Return to him once the task is complete.', 'I feel much safer now.', 'Did ye get the gigantic slime yet?', '', '', '', '', '', 90141, 0, 1, 0, 5250, 1680);

            UPDATE `mangos`.`quest_template` SET `RewChoiceItemId1`=19118, `RewChoiceItemId2`=19120, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewRepFaction1`=@FACTION_WILDHAMMER, `RewRepValue1`=150 WHERE  `entry`=30378 AND `patch`=0;

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `nature_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `movement_type`) VALUES (90141, 7, 'Big Slimer', 53, 53, 14, 1145, 1, 1, 10, 1, 3.0, 1.25, 2.0, 115, 2655, 2655, 68, 294, 1);

                    REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `nature_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `movement_type`) VALUES (90142, 7, 'Cloned Big Slimer', 48, 48, 14, 1145, 1, 1, 10, 1, 1.0, 1.25, 1.0, 115, 2655, 2655, 68, 294, 1);

                    UPDATE `mangos`.`creature_template` SET `display_scale1`=4, `spell_list_id`=200117, `auras`='34356' WHERE  `entry`=90141;

                -- Spawns
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000205, 90141, 0, 0, 0, 0, 0, 366.478, -3796.33, 171.122, 3.27141, 660, 660, 5, 100, 100, 1, 0, 0, 0, 10);


            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90138, 30378);  -- Explorer Shortmountain (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90138, 30378); -- Explorer Shortmountain (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30379, 3, 47, 44, 50, 8, 'Snapjaws, Lad!', 'Don\'t let their big eyes fool you! Those saltwater snapjaws be a menace. I can\'t fish for five minutes without getting a broken line from one of those oversized fish vacuums stealing my bait.$B$BDo me and the people of Quel\'Danil Lodge a service and kill em.$B$BKill the whole lot of em!', 'Explorer Shortmountai at Quel\'Danil Lodge in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles far to the east alongside the coast at The Overlook Cliffs. Return to him when you have completed this task.', 'I can\'t thank you enough! Hopefully this here fishing pole will be reward enough for the job.', 'How goes the hunt?', '', '', '', '', '', 2505, 15, 19022, 1, 471, 100, 4700, 7500, 2820, 1, 1, 1, 5, 6, 6, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90138, 30379);  -- Explorer Shortmountain (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90138, 30379); -- Explorer Shortmountain (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30380, 47, 44, 48, 0, 8, 0, 0, 'Ooze Extractin\'', '$N, I have a job for you! Take this Extraction Vial and use it on the oozes to the east at Skulk Rock. Get me some usable samples from them.', 'Use the Extraction Vile on oozes at Skulk Rock to gather 6 Ooze Liquid then return to Moh Anvilforge in Quel\'Danil Lodge at The Hinterlands.', 'These are some interesting mushrooms, they\'re in perfecet condition despite being surrounded by slimes.', 'Did you get the Ooze Liquid?', '', '', '', '', '', 30477, 6, @FACTION_WILDHAMMER, 150, 5250, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30475, `SrcItemCount`=1 WHERE `entry`=30380;

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90136, 30380);  -- Moh Anvilforge (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90136, 30380); -- Moh Anvilforge (Quel'Danil Lodge)
        
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30381, 47, 44, 50, 1, 8, 0, 0, 'Toljinka the Enraged', '$N, I have something of utmost emergency for you to take care of! Take this Troll Incense to Shaol\'watha, far to the east, right before The Overlook Cliffs, and use it to summon Toljinka the Enraged, then kill him. The trolls will suffer a nasty blow without their little Toljinka to protect them.', 'Use the Troll Incense at Shaol\'watha then kill Toljinka the Enraged. Afterwards, return to Moh Anvilforge in Quel\'Danil Lodge at The Hinterlands.', 'Great work!', 'Did you kill Toljinka the Enraged yet?', '', '', '', '', '', 90143, 1, @FACTION_WILDHAMMER, 200, 6500, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30478, `SrcItemCount`=1, `ReqItemId1`=30478, `ReqItemCount1`=1, `RewChoiceItemId1`=19159, `RewChoiceItemId2`=19121, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1 WHERE `entry`=30381;

            -- Creatures
                -- Templates
                    REPLACE `mangos`.`creature_template` (`entry`, `patch`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `armor_multiplier`, `damage_multiplier`, `base_attack_time`, `ranged_attack_time`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `inhabit_type`, `immunity_flags`, `static_flags1`, `flags_extra`) VALUES (90143, 3, 'Toljinka the Enraged', 50, 50, 14, 7873, 20, 7, 1, 1, 5.0, 1.45, 3.0, 1133, 1246, 10, 10, 10, 10, 10, 53, 213, 200118, 1, 1, 8, 524288, 32768);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987700, @GAMEOBJECT_TYPE_GOOBER, 602, 'Troll Brazier', 4, 43, 0, 0);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100224, 987700, 0, 80.8516, -4403.57, 119.994, 3.933, 0, 0, 0.922725, -0.38546, 25, 25, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90136, 30381);  -- Moh Anvilforge (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90136, 30381); -- Moh Anvilforge (Quel'Danil Lodge)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30382, 3, 47, 44, 49, 8, 'Lard Lost His Lunch', 'Lard was at secret special spot having picnic when ugly mean Vilebranch hit Lard wit da big stick. Lard run back to Revantusk but forget Lard lunch. Lard hungry. Maybe you go back to secret special spot and get Lard lunch? Lard scared. Go nort! Island der to da nort is da secret special spot.', 'Lard at Revantusk Village in the Hinterlands wants you to find Lard\'s Lunch. Return to him when this task is complete.$B$BLard mentioned that he left it on the island to the north. Watch out for Vilebranch trolls.', '<Lard takes the huge haunch of meat from you and stuffs it in his face.>$B$BDis hit da spot! Tanks little one.$B$BLard make you special picnic basket for help Lard.', '<Lard rubs his enormous belly.>$B$BLard so hungry.', '', '', '', '', '', 19034, 1, 19035, 1, 471, 100, 4550, 14000, 2760, 1, 1, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90136, 30382);  -- Moh Anvilforge (Quel'Danil Lodge)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90136, 30382); -- Moh Anvilforge (Quel'Danil Lodge)

    -- Feralas
        -- NPCs
            -- Creature Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90144, 'Faely', '', 45, 45, 80, 2, 2232, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90145, 'Elyin', '', 45, 45, 80, 2, 2197, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90146, 'Dellania', '', 45, 45, 80, 2, 10615, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90147, 'Cyrenia', '', 45, 45, 80, 2, 2199, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90150, 'Elaura', '', 50, 50, 80, 2, 11907, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90151, 'Feorinas', '', 50, 50, 80, 2, 12045, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

                REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90152, 'Florelin', '', 50, 50, 80, 2, 12033, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

            -- Spawns 
                -- Bowyer
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000210, 14301, 0, 0, 0, 0, 1, -4679.94, 1268.44, 97.3885, 1.06166, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000213, 12029, 0, 0, 0, 0, 1, -3398.61, 2497.22, 23.3899, 0.665504, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Food and Drink
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000211, 4181, 0, 0, 0, 0, 1, -4668.85, 1268.42, 96.1783, 1.30121, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000214, 12019, 0, 0, 0, 0, 1, -3394.4, 2493.16, 23.3745, 1.11318, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

                -- Quest Givers
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000206, 90144, 0, 0, 0, 0, 1, -4660.72, 1279.67, 96.1788, 3.18617, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000207, 90145, 0, 0, 0, 0, 1, -4668.94, 1281.38, 96.1774, 2.59712, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000208, 90146, 0, 0, 0, 0, 1, -4675.35, 1285.28, 96.1774, 5.6209, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000209, 90147, 0, 0, 0, 0, 1, -4688.51, 1283.07, 96.439, 0.343021, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000215, 90150, 0, 0, 0, 0, 1, -3388.92, 2504.62, 23.3405, 4.43541, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000216, 90151, 0, 0, 0, 0, 1, -3393.18, 2505.47, 23.2657, 4.57285, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000217, 90152, 0, 0, 0, 0, 1, -3399.46, 2501.7, 23.471, 5.87268, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);


        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30383, 357, 38, 46, 0, 8, 0, 30384, 'Onwards to Faely', 'Hello there, $N. There are more people who need your assistance far to the east of here, off the island, near Dire Maul. Go there and meet Faely at her camp.', 'Take the boat off the island and head far east to Faely, near the entrance of Dire Maul.', 'Vivianna sent you? Great, we could use all the help we can get.', 'Why are you still here? Go to Faely outside Dire Maul!', '', '', '', '', '', 0, 0, @FACTION_DARNASSUS, 50, 2100, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7947, 30383);  -- Vivianna (Fethermon Stronghold)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30383); -- Faely (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`) VALUES (30384, 357, 38, 46, 8, 30383, 30385, 'Dark Ceremony', 'These seem to be plans for some sort of dark ceremony, $N. From what I can make out, this ritual is conducted by the Gordunni mage-lords.$B$BFind one of these mage-lords, and from him, gather an orb.$B$BThe orb of a mage contains great power, and will help us discover more about this ceremony and the magic that the Gordunni wield.', 'Faely near Diremaul wants you to find a Gordunni Orb.', 'This orb will provide us with more information about the Gordunni... which we will then use in planning their downfall, $N.', 'We must discover more about why the Gordunni are here, $N.', '', '', '', '', '', 9371, 1, 69, 100, 4050, 2460, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30384);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30384); -- Faely (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30385, 357, 38, 46, 0, 8, 30384, 30386, 'Charge the Orb!', '$N, I need your help once again. Take this Gordunni Orb and find a way to charge it inside the Ruins of Isildien.', 'Find a way to charge the Gordunni Orb then return to Faerly near Diremaul.', 'Whoa! Such power in this orb...unstable power....', 'Get to charging!', '', '', '', '', '', 90143, 1, @FACTION_DARNASSUS, 100, 4750, 1680);

            -- Dummy NPCs and replace quest text
                UPDATE `mangos`.`quest_template` SET `SrcItemId`=30479, `SrcItemCount`=1, `ReqItemId1`=30479, `ReqItemCount1`=1, `ObjectiveText1`='Gordunni Orb charged at eastern iris', `ObjectiveText2`='Gordunni Orb charged at central iris', `ObjectiveText3`='Gordunni Orb charged at north western iris', `ReqCreatureOrGOId1`=2949, `ReqCreatureOrGOId2`=2958, `ReqCreatureOrGOId3`=2975, `ReqCreatureOrGOCount1`=1, `ReqCreatureOrGOCount2`=1, `ReqCreatureOrGOCount3`=1 WHERE `entry`=30385;

            -- Objects
                -- display_info_addon
                    REPLACE `mangos`.`gameobject_display_info_addon` (`display_id`, `min_x`, `min_y`, `min_z`, `max_x`, `max_y`, `max_z`) VALUES (7800, -0.260733, -0.451229, 0.00741847, 0.260617, 0.44936, 0.686414);
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987701, 10, 7800, 'Highborne Focusing Iris', 2.0, 304, 7, 1, -1);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987702, 10, 7800, 'Highborne Focusing Iris', 2.0, 304, 7, 1, -1);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`) VALUES (987703, 10, 7800, 'Highborne Focusing Iris', 2.0, 304, 7, 1, -1);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100225, 987701, 1, -5780.25, 1200.39, 67.6314, 0.0461256, 0, 0, 0.0230608, 0.999734, 25, 25, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100226, 987702, 1, -5660.91, 1374.86, 78.4457, 6.17458, 0, 0, 0.0542745, -0.998526, 25, 25, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100227, 987703, 1, -5560.17, 1471.15, 52.6243, 3.72412, 0, 0, 0.957882, -0.287162, 25, 25, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30385);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30385); -- Faely (Dire Maul)
    
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`) VALUES (30386, 357, 38, 46, 1, 8, 30385, 0, 'Cleanse the Orb!', 'The orb is now fully charged, but has been corrupted. We must cleanse it of this corruption. Perhaps inside the Ruins of Isildien you might find a way to cleanse it. Beware, as I sense something very evil inside the orb.', 'Take the Charged Gordunni Orb into the Ruins of Isildien and find a way to cleanse it.', 'This is great! The orb is fully cleansed!', 'Did you cleanse the orb yet?!', '', '', '', '', '', 90048, 1, @FACTION_DARNASSUS, 250, 7100, 25000, 1680);

            UPDATE `mangos`.`quest_template` SET `SrcItemId`=30480, `SrcItemCount`=1, `ReqItemId1`=30480, `ReqItemCount1`=1, `ObjectiveText1`='Gordunni Orb cleansed', `RewChoiceItemId1`=30481, `RewChoiceItemId2`=11863, `RewChoiceItemId3`=11864, `RewChoiceItemId4`=11862, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1 WHERE `entry`=30386;

            -- Creature
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `shadow_res`, `loot_id`, `pickpocket_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `equipment_id`, `static_flags1`) VALUES (90048, 'Zhi\'Mun', 48, 48, 45, 11560, 2, 7, 1, 8, 5.0, 25.0, 2, 3.5, 125, 5240, 5240, 62, 421, 200075, 1, 5240, 524288);

                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_probability1`, `display_total_probability`, `speed_walk`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `inhabit_type`, `mechanic_immune_mask`, `static_flags1`) VALUES (90049, 'Summoned Skeleton', 48, 48, 14, 158, 1, 1, 0.888888, 6, 1, 0.33, 0.33, 1, 8602131, 4);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987704, @GAMEOBJECT_TYPE_GOOBER, 602, 'Highborne Brazier', 4, 43, 0, 0);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100228, 987704, 1, -5687.57, 1376.88, 51.6745, 6.23344, 0, 0, 0.0248689, -0.999691, 25, 25, 100, 1, 0, 0, 0, 10);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30386);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30386); -- Faely (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30387, 357, 38, 43, 9466, 1, 'Gordunni Cobalt', 'I just arrived here in Feralas, and I\'ve heard that the Gordunni Ogres that inhabit the wilds here have some interesting minerals. Who knows what they are up to, but they sure are protective of that stuff! They don\'t leave it just lying around; no, they bury it to protect folks like me from getting their hands on it.$B$BIf you\'d be willing, I\'ll give you my shovel. Go to the Gordunni Outpost north of here and dig me up some Gordunni cobalt. Look for the blue glow, then start digging!', 'Faely near Diremaul wants 12 samples of Gordunni Cobalt.', 'Perfect! I will take these along as I continue my travels, $N. I\'m sure I can find someone that will pay a pretty penny for this cobalt.$B$BHere, take this for your trouble.', 'Get on up there and start digging!$B$BI\'ve got places to go and people to see - time is money!', '', '', '', '', '', 9463, 9466, 12, 1, 9658, 9660, 1, 1, 69, 100, 3600, 2160, 1, 1);

            -- Object template
                -- REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `icon`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (144064, 0, 3, 20, 'Gordunni Dirt Mound', '', 0, 0, 0.75, 43, 8446, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (144064, @GAMEOBJECT_TYPE_CHEST, 20, 'Gordunni Dirt Mound', 4, 43, 8446);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30387);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30387); -- Faely (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30388, 357, 38, 43, 8, 30389, 'The Ogres of Feralas', 'The effects of the Gordunni Ogre tribe can hardly go unnoticed in this area. Look around, $N; their very presence scars this land. We must push them back before they expand even further into Feralas.$B$BFollow the river north, and you will find their outpost. Decrease their numbers, $N. We must show them that their kind is not wanted here.', 'Faely near Diremaul wants you to kill 10 Gordunni Ogres, 10 Gordunni Ogre-Magi, and 5 Gordunni Brutes.', 'Excellent, $N. In time, the land will heal. We must not give up.', 'Move swiftly, $N. Or is the task I requested too difficult?', '', '', '', '', '', 5229, 5237, 5232, 10, 10, 5, 69, 75, 2700, 4500, 1620, 5, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30388);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30388); -- Faely (Dire Maul)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30389, 357, 38, 44, 8, 30388, 30390, 'The Ogres of Feralas', 'Now that you have proven that you are a true fighter, I trust that you possess the courage to continue with the task at hand.$B$BTravel to the High Wilderness, southwest of here. There lie some abandoned and destroyed structures, on land that once belonged to the night elves. Look for these ruins, and when you see the withered trees and desecrated terrain, you will find the Gordunni. Push them back.$B$BThese ogres are much stronger than the ones you faced previously, $N. Be aware.', 'Faely near Diremaul wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.', 'You have proven yourself to be a trustworthy and dependable ally, $N. ', 'Have you found the ruins, $N?', '', '', '', '', '', 5236, 5240, 5234, 10, 10, 5, 69, 100, 3750, 12500, 2280, 2);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30389);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30389); -- Faely (Dire Maul)

        -- -> Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30390, 357, 38, 47, 8, 30389, 0, 'The Ogres of Feralas', 'Now that you have proven that you are a true fighter, I trust that you possess the courage to continue with the task at hand.$B$BTravel to the High Wilderness, southwest of here. There lie some abandoned and destroyed structures, on land that once belonged to the night elves. Look for these ruins, and when you see the withered trees and desecrated terrain, you will find the Gordunni. Push them back.$B$BThese ogres are much stronger than the ones you faced previously, $N. Be aware.', 'Faely near Diremaul wants you to kill 10 Gordunni Mage-Lord, 10 Gordunni Battlemasters, and 5 Gordunni Warlords.', 'You have proven yourself to be a trustworthy and dependable ally, $N. ', 'Have you found the ruins, $N?', '', '', '', '', '', 5239, 5238, 5241, 10, 10, 5, 69, 100, 4500, 12500, 2280, 2);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90144, 30390);  -- Faely (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90144, 30390); -- Faely (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`,`ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30391, 357, 38, 47, 8, 0, 0, 'Stolen Highborne Relics', '$N, I require your assistance in obtaining the stolen Highborne Relics from the Ruins of Isildien.', 'Elyin near Diremaul wants you to find the Yellow, Red, and Blue Highborne Relics in the Ruins of Isildien to the south, then bring them back to her.', 'It\'s great to know I can depend on you, $N!', 'Have you found the relics, $N?', '', '', '', '', '', 30482, 30483, 30484, 1, 1, 1, 69, 100, 4500, 12500, 2280, 2);
            
            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987705, @GAMEOBJECT_TYPE_CHEST, 5743, 'Highborne Coffer', 4, 43, 42930);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987706, @GAMEOBJECT_TYPE_CHEST, 5743, 'Highborne Coffer', 4, 43, 42931);
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987707, @GAMEOBJECT_TYPE_CHEST, 5743, 'Highborne Coffer', 4, 43, 42932);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100229, 987705, 1, -5689.64, 1347, 73.2553, 4.61474, 0, 0, 0.740775, -0.671753, 10, 10, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100230, 987706, 1, -5506.27, 1043.75, 22.0435, 2.00564, 0, 0, 0.842992, 0.537926, 10, 10, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100231, 987707, 1, -5535.27, 990.995, 19.4497, 2.54756, 0, 0, 0.956214, 0.292668, 10, 10, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42930, 30482, -100);
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42931, 30483, -100);
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42932, 30484, -100);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30391);  -- Elyin (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30391); -- Elyin (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30392, 357, 39, 42, 8, 30393, 'War on the Woodpaw', 'The gnolls... they are more than a nuisance.  They are a constant threat to the existence of this very camp!  It is irrelevant whether they are indigenous to Feralas or not; if we do not strengthen our resolve against them, we will find ourselves driven out of the entire region.$B$BThe gnoll attacks against the camp have become more fevered as of late.  We need your aid in thinning their numbers; bring to me ten of their manes, and I will reward you handsomely for your effort.$B$BGo!', 'Bring 10 Woodpaw Gnoll Manes to Elyin near Diremaul.', 'This is proof of a good start, $n.  Your skills as a soldier are to be commended.$B$BYou are not the only one I ask that task of.  Many before you have fought them, and in times past our efforts have kept them at bay.  Recently though, their attempts to push northward into our area of influence have increased dramatically.  Their attacks have also become more savage... almost as if they were desperate.$B$BI have a plan though, $n, that might settle things once and for all against them...', 'We drive them back, and yet they still attack!  Someone or something must be driving them into a frenzy... oh, you have returned, eh $n?  Do you have the manes I require for the bounty to be met?', '', '', '', '', '', 9237, 10, 69, 75, 2550, 4500, 1560, 1, 5, 5, 21);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30392);  -- Elyin (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30392); -- Elyin (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30393, 357, 39, 43, 3600, 8, 30392, 30394, 2902, 'Alpha Strike', 'The plan is for various leaders of the gnolls - Alphas as they call themselves - to be taken down within rapid succession.  If we\'re able to execute this sort of swift and precise devastation against them, it would cause chaos in their ranks.  Perhaps it would also drive a message through their thick flea-bitten heads that we can and will destroy them!$B$BI want you to be the messenger of my will; eliminate five of their Alphas within one hour for this to work $N, or we\'ll remain at this impasse!', 'Kill 5 Woodpaw Alphas and return to Elyin within one hour.', 'You\'ve done as I have asked, and for that I salute you.  Take this small reward as compensation for your efforts, $n.$B$BWith their numbers thinned and their leaders slain, the gnolls will think twice about storming the camp.  This doesn\'t conclude the issue at hand, however...$B$BThere must be some reason why the gnolls have been whipped into such a frenzied state.  Before they have a chance to regroup though, I want to find out what is causing it.', 'Time is running out, $n!  If you\'re not here to report that you\'ve taken out the Alphas, then you\'re wasting time!', '', '', '', '', '', 5258, 5, 69, 75, 2700, 4500, 1620, 1, 5, 5, 66);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30393);  -- Elyin (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30393); -- Elyin (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `CompleteEmote`) VALUES (30394, 357, 39, 43, 8, 30393, 30395, 2903, 'Woodpaw Investigation', 'Gnolls aren\'t the sharpest tools in the shed, but they will no doubt have some sort of documented strategy on their recent activity.  If we were to find those plans, then we\'d have a clearer idea of what is making them so worked up.$B$BI want you to head back to the Woodpaw and find anything that might resemble their battle plans.  They have to have something; their attacks have been too coordinated to be done without them.  Find them, and return to me when you have them.', 'Find the gnoll battle plans somewhere in the gnoll camps to the south of Camp Mojache.', 'Examining the map reveals it to be the battle plans that Elyin wants.  Numerous arrows that perhaps represent troop movements are drawn on the map, though most seem to be headed toward the south rather than to the north where Camp Mojache lies.$B$BAnother section of the map has a picture of what you think is a large insect of some kind, with various tick marks under it.  From the looks of the gnolls, it perhaps represents their losses against the unknown bugs...', '', '', '', '', '', '', 69, 50, 1800, 1080, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30394);  -- Elyin (Dire Maul)

            -- End
                REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (142195, 30394); -- Woodpaw Battle Map

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`) VALUES (30395, 357, 39, 43, 30394, 9266, 1, 'The Battle Plans', 'With the battle plans of the gnolls discovered, all that now remains is to bring the plans back to Elyin near Diremaul.  Perhaps he or someone there can make further sense of what the gnolls are up to.', 'Bring the Woodpaw Battle Plans to Elyin near Diremaul.', 'Ah, this is exactly what we needed.  While I am not so skilled at ciphering what most of the scrawling on this map is, I\'ve seen enough battle plans in my day to understand what is happening with the gnolls.  It looks like they are currently fighting a two front war.  One is with us... but it seems that their main energy has been against a foe to their south.$B$BThere\'s more at hand here than meets the eye.  Perhaps it is time to figure out who this other foe they face really is.', 'Welcome back $n - were you able to find some tangible evidence as to the plans of the gnolls?', '', '', '', '', '', 9266, 1, 9661, 9662, 1, 1, 69, 100, 3600, 2160, 6, 6);

            -- Removed horde quest
                DELETE FROM `mangos`.`gameobject_questrelation` WHERE  `id`=142195 AND `quest`=2903;

            -- Start
                REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (142195, 30395); -- Woodpaw Battle Map

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30395); -- Elyin (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30396, 3, 357, 39, 47, 8, 30395, 30397, 'Stinglasher', 'In surveying the Writhing Deep, one of our scouts reported seeing a giant insect - much larger than the other insects spotted - wandering about the twisted terrain.  Not only is it larger, it also seems to secrete some sort of aura that the other insects don\'t.  We\'ve given it a name - Stinglasher.$B$BThe innards of this beast would be invaluable to study as we figure out the best way to deal with this new threat.  Cut out its secretion glands and bring it back to me immediately!', 'Defeat Stinglasher in the Writhing Deep, bringing its glands back to Elyin near Diremaul, Feralas.', 'Impressive, $c... most impressive!  If Stinglasher is indeed one of their strongest creatures, the study of the beast will prove to be quite valuable in time.  It\'s now my charge to make sure we defend ourselves long enough to take advantage of it.$B$BPlease accept this coin bounty as a token of the entire camp\'s thanks, $N.  Well done.', 'Have you managed to bring down Stinglasher yet?', '', '', '', '', '', 18962, 1, 69, 150, 4200, 13500, 2520, 1, 1, 6, 6, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30396);  -- Elyin (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30396); -- Elyin (Dire Maul)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30397, 3, 357, 39, 45, 8, 30395, 30398, 'Zukk\'ash Infestation', 'From what scouting we have managed to muster, we believe that the foe south of the gnolls is an insect-like race.  Frankly, it is irrelevant whether or not if they\'re sentient.  If they are driving the gnolls to frenzy against us, then they are as big of a threat - if not more - than the gnolls.$B$BDrive deep into where these Zukk\'ash insects dwell; it is known as the Writhing Deep.  Thin their numbers and report back to me what you find, bringing back their carapaces as evidence of your handiwork.', 'Bring 20 Zukk\'ash Carapaces to Elyin near Diremaul, Feralas.', 'Well done, $c.  Though the extensiveness of the Zukk\'ash presence will not be thwarted with anything less than a full-scale invasion, you have bought us some time so we can devise a proper strategy.$B$BI will be sure to have these carapaces analyzed; we\'ll need to learn everything about them before we deal with what has unfortunately turned into a much larger issue than we had anticipated.', 'How goes the hunt, $N?  Are you here to report your success?', '', '', '', '', '', 18961, 20, 69, 100, 3900, 6500, 2340, 1, 1, 6, 6, 4, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30397);  -- Elyin (Dire Maul)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30397); -- Elyin (Dire Maul)

        REPLACE `mangos`.`quest_template` (`entry`, `patch`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30398, 3, 357, 39, 48, 30397, 19020, 1, 'Zukk\'ash Report', 'You\'ve done doubly well in addressing the threat that the Zukk\'ash insects pose to Camp Mojache.  The threat these things pose is far from over, and I\'d like to ask you for one last task on behalf of the Horde.$B$BThis is a document that details all the information we have learned about these Zukk\'ash insects.  I want you to deliver it to Thyn\'tel Bladeweaver in the Warrior\'s Terrace of Darnassus.  He\'s an expert on alien creatures like these; I hope he can do something with the lore we\'ve obtained.', 'Deliver the Camp Mojache Zukk\'ash Report to Thyn\'tel Bladeweaver.  She resides in the Warrior\'s Terrace of Darnassus.', 'Ah, I\'ve been expecting this.  These creatures you faced... they are an ancient threat that the Horde continues to choose to ignore.  Hadoken was wise to bring this - and you - to me.$B$BThe Zukk\'ash are nothing more than creatures called the silithid.  Some would think that they are a mindless nuisance, but let me assure you - they are a far, far worse threat than anything the Alliance could muster.$B$BIf you\'re willing and strong enough, I could use your aid in bringing this threat to light.', 'Greetings friend... you look as though you are on urgent business.  Is there something I can help you with?', '', '', '', '', '', 19020, 1, 19038, 19037, 1, 1, 69, 50, 4400, 2640, 1, 1, 1, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30398);  -- Elyin (Dire Maul)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (8026, 30398);  -- Thyn'tel Bladeweaver (Darnassus)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30399, 357, 38, 45, 8, 30400, 'A Grim Discovery', 'What!? You came across tauren in the area? You\'re joking! What did they look like!?$B$BThe Grimtotem clan! You found some of them? Belgrom, one of our masters, has an interest in their kind... he\'s even put a bounty on them.$B$BYou have to go back, $c. Go back and bring me their horns... piles of them if you can. The Grimtotem are not to be trifled with or underestimated. Go back and slay them; let the rivers in Feralas run red with their dark blood.', 'Bring 20 Grimtotem Horns to Elyin near Diremaul.', 'These are good horns, $c. Well done. I\'ll take these from you and be sure to tell Belgrom as soon as we return to Orgrimmar. You\'ve helped me twice now, and for that, you have my mark. Perhaps in the future I can help you! Good luck to you.', 'Take my words seriously, $c, the Grimtotem clan is evil. If you\'ve found their whereabouts, then it\'s up to you to return and strike the first blow against their clan... before they can come into our own lands and raze our own villages, or pilfer our lands.', '', '', '', '', '', 9460, 20, 69, 100, 1, 3900, 6500, 2340, 5, 1, 1, 5, 1, 1, 1, 1, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30399);  -- Elyin (Dire Maul)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90145, 30399); -- Elyin (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`) VALUES (30400, 357, 37, 45, 30399, 9462, 1, 'A Grim Discovery', 'What?!$B$BAh, so I did mention a bounty, didn\'t I? Well, that\'ll teach me to open my mouth, won\'t it?$B$BYou did the work, so I suppose it is only right you reap the greatest reward from it. Take the horns, I\'ll have them put in a crate for you. Find  Grimand Elmore in the Dwarven District of Stormwind, he\'ll want to know what you saw and he\'ll reward you for your hard work.$B$BBe well, $c, and thank you again for everything you\'ve done.', 'Bring the Crate of Grimtotem Horns to  Grimand Elmore in Stormwind.', 'The Grimtotem!? This is interesting. You say you came across them while hunting in Feralas? Truly?$B$BMy peers will want to hear your news, $c. Tell me more and I\'ll count out your coin while you do so.$B$BAnd before you go, know that I give you thanks for the information you\'ve passed on to me this day.', 'Be quick, $c, I have much to complete today.', '', '', '', '', '', 9462, 1, 11858, 11859, 1, 1, 47, 150, 1, 4850, 6500, 2940, 5, 1, 1, 2, 1, 1, 5, 1, 1, 2);


        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90145, 30400);  -- Elyin (Dire Maul)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (1416, 30400); -- Grimand Elmore (Stormwind)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30401, 357, 40, 47, 30402, 9619, 1, 'Hippogryph Muisek', 'Since you have proven that you are both trustworthy and gifted with the ability to use the muisek vessel, I now wish you to capture another creature.$B$BHippogryphs have been loyal companions to the night elves for many years; their spirits are loyal and steadfast.$B$BYour task is to kill 10 frayfeather hippogryphs, and quickly, shrink and capture them with the vessel, so that their muisek may be preserved. You will find the hippogryphs in the High Wilderness, to the south of here. ', 'Kill 10 Frayfeather Hippogryphs of any type, then use the Muisek Vessel to shrink and capture them.', 'After killing an animal, if we allowed the muisek to escape, it may take the form of an even greater creature. We would never be safe from its vengeance.$B$BThis is a dangerous job I have given you, $N. Again, you have completed it well.', 'Were you able to capture the hippogryphs?', '', '', '', '', '', 9595, 9619, 10, 1, 69, 100, 4200, 2520, 1, 6, 6, 1);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30401); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30401); -- Dellania (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30402, 357, 40, 45, 30401, 30403, 9620, 1, 'Faerie Dragon Muisek', '$N, next I must have you capture a creature that in appearance, may look quite fragile, yet its powerful spirit is what we are truly after. The faerie dragons that I speak of have served the night elves as their allies. We must capture one so that the horde may benefit from this strength of spirit as well.$B$BHere is the muisek, $N. Kill 8 sprite darters or sprite dragons, and capture their muisek. They may be found to the west of here.', 'Kill 8 Sprite Darters or Sprite Dragons. Use the Muisek Vessel to shrink and capture the fallen Faerie Dragons.', 'Thank you, $N. Now the spiritual powers of the faerie dragon will be available to us.$B$BI hope you willing to perform another task for me.', 'Were you able to capture the muisek of the faerie dragons?', '', '', '', '', '', 9596, 9620, 8, 1, 69, 100, 3900, 2340, 1, 1);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30402); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30402); -- Dellania (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30403, 357, 40, 50, 30402, 30404, 9606, 1, 'Treant Muisek', 'The wandering forest walkers that can be found meandering through the forest are our next target, $N. Night elves have enlisted treants as allies to fight against the horde. Their movement may be slow, but their role as protectors is undeniable.$B$BSoon we will be able to use this power for our own benefit.$B$BFind 3 wandering forest walkers; kill them, and use the muisek vessel to shrink and capture them.', 'Kill 3 Wandering Forest Walkers. Use the Muisek Vessel to shrink and capture the fallen Treants.', 'Thank you, $N. Our muisek collection is almost complete.', 'Were you able to capture the wandering forest walkers?', '', '', '', '', '', 9593, 9606, 3, 1, 69, 100, 4700, 2820, 1, 6, 6, 1);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30403); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30403); -- Dellania (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `PrevQuestId`, `NextQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30404, 357, 40, 50, 1, 30403, 30405, 9621, 1, 'Mountain Giant Muisek', 'The last task I will require of you is to travel to the northwest and find the final enemy.$B$BThe mountain giants left the mountains to aid the night elves when the burning legion appeared in the world. You will know them by their massive size and the way the ground begins to shake as you travel along their rocky terrain.$B$BI am eager to harness power of that size. Kill 7 mountain giants, then use the muisek vessel to capture their powerful muisek.', 'Kill 7 Land Walkers or Cliff Giants. Use the Muisek Vessel to shrink and capture the fallen Mountain Giants.', 'Just imagine the possibilities of what we now possess, $N. Along with the materials that you have collected, I will be able to forever trap the muisek of these creatures into whatever I wish.', 'Were you able to capture the mountain giants?', '', '', '', '', '', 9597, 9621, 7, 1, 69, 100, 4700, 2820, 1, 1, 4);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30404); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30404); -- Dellania (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmoteDelay2`, `StartScript`) VALUES (30405, 357, 40, 50, 30404, 'Weapons of Spirit', 'Imbuing the muisek into the weapons is a difficult process. Now that I have all of the required materials and the muisek of the creatures that you captured, I can create a weapon for you.', 'Choose a reward.', 'As promised, you have your choice, $N. The muisek of the creatures has been forever sealed into the power of these weapons.$B$BYou may now wield their energy as your own. Use it well.', '', '', '', '', '', '', 9684, 9686, 9683, 10652, 1, 1, 1, 1, 69, 100, 4700, 2820, 1, 1, 1, 4, 300, 0);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30405); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30405); -- Dellania (Dire Maul)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30406, 357, 40, 47, 0, 0, 0, 'Danceshrooms', 'This land is known for it\'s delcious mushrooms. Sadly, the mushrooms only grow in the Writhing Deep, to the east. Go there and get me Danceshrooms, but beware as the place is now infested with the Slithid.', 'Gather 12 Danceshrooms from the Writhing Deep to the east.', 'Yummy in my tummy!', 'Did you get the Danceshrooms?', '', '', '', '', '', 30485, 0, 12, 0, 69, 100, 4900, 2520, 1, 6, 6, 1);

        -- Objects
            -- Template
                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987708, @GAMEOBJECT_TYPE_CHEST, 1847, 'Danceshroom', 4, 43, 42933);

            -- Spawns
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100242, 987708, 1, -5251.09, -6.01671, 13.2337, 5.0819, 0, 0, 0.565174, -0.824972, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100241, 987708, 1, -5237.89, 59.355, 26.3208, 4.92718, 0, 0, 0.62724, -0.778826, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100240, 987708, 1, -5331.58, 321.816, 18.7801, 3.87476, 0, 0, 0.933558, -0.358426, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100239, 987708, 1, -5255.03, 334.356, 17.4155, 0.807778, 0, 0, 0.392997, 0.91954, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100238, 987708, 1, -5241.76, 253.903, 10.6819, 3.91324, 0, 0, 0.926488, -0.376324, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100237, 987708, 1, -5239.81, 290.712, 9.59093, 0.636555, 0, 0, 0.312931, 0.949776, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100236, 987708, 1, -5299.18, 421.316, 8.76146, 0.658563, 0, 0, 0.323363, 0.946275, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100235, 987708, 1, -5338.89, 437.023, 7.68485, 1.72356, 0, 0, 0.759004, 0.651086, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100234, 987708, 1, -5378.99, 365.322, 24.0911, 0.214809, 0, 0, 0.107198, 0.994238, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100233, 987708, 1, -5363.7, 256.413, 20.9928, 1.1188, 0, 0, 0.530679, 0.847573, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100232, 987708, 1, -5394.85, 269.687, 20.893, 3.43181, 0, 0, 0.989491, -0.144598, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100243, 987708, 1, -5288.81, 24.3656, 20.7583, 2.33379, 0, 0, 0.919534, 0.393009, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100244, 987708, 1, -5288.74, -12.1833, 21.4898, 4.60752, 0, 0, 0.743195, -0.669075, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100245, 987708, 1, -5276.13, 103.309, 23.5771, 1.42509, 0, 0, 0.65376, 0.756702, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100246, 987708, 1, -5329.67, 79.4189, 25.4141, 3.03044, 0, 0, 0.998456, 0.0555464, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100247, 987708, 1, -5291.02, 45.5886, 27.5462, 0.364795, 0, 0, 0.181388, 0.983412, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100248, 987708, 1, -5356.74, -27.5787, 21.6218, 3.80798, 0, 0, 0.945002, -0.327063, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100249, 987708, 1, -5398.33, -67.7884, 29.9298, 3.84332, 0, 0, 0.939075, -0.343711, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100250, 987708, 1, -5290.89, -50.2315, 12.7396, 5.79504, 0, 0, 0.241656, -0.970362, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100251, 987708, 1, -5261.72, -42.4195, 7.73132, 0.275261, 0, 0, 0.137197, 0.990544, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100252, 987708, 1, -5387.72, 32.2812, 24.9348, 2.89457, 0, 0, 0.992382, 0.1232, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100253, 987708, 1, -5411.8, 58.0233, 39.568, 4.02632, 0, 0, 0.903742, -0.428077, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100254, 987708, 1, -5435.47, 100.244, 27.8894, 3.70431, 0, 0, 0.960679, -0.277661, 630, 630, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100255, 987708, 1, -5429.65, 136.437, 23.9548, 0.15745, 0, 0, 0.0786437, 0.996903, 630, 630, 100, 1, 0, 0, 0, 10);

            -- Loot Template
                REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42933, 30485, -100);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90146, 30406); -- Dellania (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90146, 30406); -- Dellania (Dire Maul)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30407, 357, 40, 44, 8, 30408, 'Feral Scar Vale', 'To the south east of here there is a cave known as the Feral Scar Vale. It is full of Yeti\'s, I need you to thin their numbers for me.', 'Cyrenia near Diremaul wants you to kill 15 Feral Scar Yeti\'s and 15 Enraged Feral Scar Yeti\'s.', 'Excellent, $N!', 'Move swiftly, $N. Or is the task I requested too difficult?', '', '', '', '', '', 5292, 5295, 0, 15, 15, 0, 69, 75, 2700, 4500, 1620, 5, 1);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30407); -- Cyrenia (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30407); -- Cyrenia (Dire Maul)

    -- -> Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30408, 357, 40, 47, 8, 30407, 0, 'Rage Scar Hold', 'There are still more Yeti\'s in this area that need to be taken care of. Far to the north along the east mountainside lies a cave named Rage Scar Hold, go there and thin their numbers as well. It is full of Yeti\'s, I need you to thin their numbers for me.', 'Cyrenia near Diremaul wants you to kill 10 Rage Scar Yeti\'s, 10 Elder Rage Scars and 10 Ferocious Rage Scars.', 'Great, $N!', 'Move swiftly, $N. Or is the task I requested too difficult?', '', '', '', '', '', 5296, 5297, 5299, 10, 10, 10, 69, 75, 2700, 4900, 1620, 5, 1);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30408); -- Cyrenia (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30408); -- Cyrenia (Dire Maul)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30409, 357, 40, 47, 30407, 0, 0, 'Yeti Victims', 'I sent a party of Night Elves to scout the cave far to the north called Rage Scar Hold but no one has returned. I fear they have all gotten lost, or worse, killed. Go there and find what happened to them.', 'Find what happened to the Night Elf party sent to Rage Scar Hold.', 'This is dreadful news...', 'Did you find out what happened to the Night Elf party?', '', '', '', '', '', 30486, 0, 6, 0, 69, 100, 4900, 2520, 1, 6, 6, 1);

            UPDATE `mangos`.`quest_template` SET `ObjectiveText1`='Find the Night Elves' WHERE `entry`=30409;

        -- Objects
            -- Template
                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987709, @GAMEOBJECT_TYPE_CHEST, 293, 'Recently Eaten Victim', 4, 43, 42934);

            -- Spawns
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100257, 987709, 1, -3929.68, 1645.79, 134.482, 5.88296, 0, 0, 0.198778, -0.980045, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100258, 987709, 1, -3888.56, 1660.24, 118.702, 0.71583, 0, 0, 0.350322, 0.936629, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100259, 987709, 1, -3893.91, 1560.76, 122.065, 5.47141, 0, 0, 0.394834, -0.918752, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100260, 987709, 1, -3879.46, 1608.22, 135.906, 5.76279, 0, 0, 0.25727, -0.96634, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100261, 987709, 1, -3843.63, 1658.35, 145.359, 0.535966, 0, 0, 0.264787, 0.964307, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100262, 987709, 1, -3854.42, 1713.99, 144.86, 1.49808, 0, 0, 0.680936, 0.732343, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100263, 987709, 1, -3923.98, 1592.88, 126.909, 2.99739, 0, 0, 0.997402, 0.0720367, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100264, 987709, 1, -3914.77, 1623.21, 129.358, 6.05965, 0, 0, 0.111535, -0.99376, 330, 330, 100, 1, 0, 0, 0, 10);
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100265, 987709, 1, -3932.92, 1667.62, 134.6, 0.911365, 0, 0, 0.440075, 0.897961, 330, 330, 100, 1, 0, 0, 0, 10);

            -- Loot Template
                REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42934, 30486, -100);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30409); -- Cyrenia (Dire Maul)
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30409); -- Cyrenia (Dire Maul)

    -- Quest
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`) VALUES (30410, 357, 40, 53, 1, 8, 30407, 0, 'Ancient Yeti', 'Take this Yeti Charm and find a way to release it inside of Rage Scar Hold to the north.', 'Release the Yeti Charm inside Rage Scar Hold to the north and defeat whatever it summons.', 'Great, here are some rewards for the effort you put in.', 'Did you cleanse the cave yet?!', '', '', '', '', '', 90148, 1, @FACTION_DARNASSUS, 200, 6500, 25000, 1680);

        UPDATE `mangos`.`quest_template` SET `SrcItemId`=30487, `SrcItemCount`=1, `ReqItemId1`=30487, `ReqItemCount1`=1, `RewChoiceItemId1`=30488, `RewChoiceItemId2`=30489, `RewChoiceItemId3`=30490, `RewChoiceItemId4`=30491, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1 WHERE `entry`=30410;

        -- Creature
            -- Template
                REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `type`, `rank`, `unit_class`, `health_multiplier`, `damage_multiplier`, `loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `movement_type`, `inhabit_type`, `static_flags1`) VALUES (90148, 'Ancient Rage Scar', 53, 53, 16, 3209, 2, 7, 1, 1, 5.0, 2.5, 5297, 5297, 107, 557, 200119, 1, 1, 524288);

        -- Objects
            -- Template
                REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`, `data3`) VALUES (987710, @GAMEOBJECT_TYPE_GOOBER, 602, 'Rage Scar Brazier', 4, 43, 0, 0);

            -- Spawns
                REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100256, 987710, 1, -3937.18, 1663.59, 134.607, 1.65202, 0, 0, 0.735234, 0.677813, 25, 25, 100, 1, 0, 0, 0, 10);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30410); -- Cyrenia (Dire Maul)
            
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30410); -- Cyrenia (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`) VALUES (30411, 357, 44, 50, 0, 8, 0, 30384, 'Lending Rockbiter a Hand', 'Hi $N! There is a camp of alliance up north that needs your help. Travel far north, following the road, until you find Rockbiter west off the road at the Twin Colossals. You', 'Head north up the road to the Twin Colossals, then veer off the road to the west and meet Rockbiter.', 'More help? Good news!', 'Get to Rockbiter!', '', '', '', '', '', 0, 0, @FACTION_DARNASSUS, 50, 2100, 1680);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30411); -- Cyrenia (Dire Maul)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7765, 30411); -- Rockbiter (The Twin Colossals)

        -- Hippo kill quest (Frayfeather Hippogryph - 5300)
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30412, 357, 40, 44, 8, 0, 0, 'Hippogryph Hunting', 'Go south west to Frayfeather Highlands and thin the numbers of the Hippogryphs there for me.', 'Cyrenia near Diremaul wants you to kill 15 Frayfeather Hippogryph.', 'You have proven yourself to be a trustworthy and dependable ally, $N. ', 'Have you killed the Hipogryphs, $N?', '', '', '', '', '', 5300, 0, 0, 15, 0, 0, 69, 100, 3750, 12500, 2280, 2);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30412); -- Cyrenia (Dire Maul)
            
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30412); -- Cyrenia (Dire Maul)

        -- ->
        -- Hippo kill quest (Frayfeather Stagwing - 5304, Frayfeather Skystormer - 5305, Frayfeather Patriarch - 5306)
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30413, 357, 40, 47, 8, 30412, 0, 'Hippogryph Hunting', 'Go south west to Frayfeather Highlands and thin the numbers of the Hippogryphs there for me.', 'Cyrenia near Diremaul wants you to kill 10 Frayfeather Stagwing, 10 Frayfeather Skystormer and 5 Frayfeather Patriarch.', 'You have proven yourself to be a trustworthy and dependable ally, $N. ', 'Did you clear out the Hippogryphs yet?', '', '', '', '', '', 5304, 5305, 5306, 10, 10, 5, 69, 100, 3750, 12500, 2280, 2);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30413); -- Cyrenia (Dire Maul)
            
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30413); -- Cyrenia (Dire Maul)

        -- Hippo gather drops off hippos quest
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `PrevQuestId`, `SrcItemId`, `SrcItemCount`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30414, 357, 40, 47, 30412, 0, 0, 'Pristine Hippgryph Feathers', 'The Hippogryphs to the south west at Frayfeather Highlands have special feathers. Pluck them from them for me and I will reward you.', 'Gather 50 Pristine Hippogryph Feathers for Cyrenia near Dire Maul.', 'These will be of great use, thank you $N!', 'Did you get the Pristine Hippogryph Feathers?', '', '', '', '', '', 30492, 0, 50, 0, 69, 100, 4900, 2520, 1, 6, 6, 1);

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (5300, 30492, -100, 2, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (5304, 30492, -100, 2, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (5305, 30492, -100, 2, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (5306, 30492, -100, 2, 5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (5347, 30492, -100, 2, 5);

        -- Start 
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30414); -- Cyrenia (Dire Maul)
            
        -- End 
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30414); -- Cyrenia (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30415, 357, 40, 52, 1, 8, 30412, 0, 'Boroka', 'South west of here at the Frayfeather Highlands there is a mighty Hippogryph named Boroka. Take him out for me.', 'Cyrenia near Diremaul wants you to kill Boroka for her.', 'You have proven yourself to be a trustworthy and dependable ally, $N. ', 'Have you killed Boroka, $N?', '', '', '', '', '', 90149, 0, 0, 1, 0, 0, 69, 100, 6500, 12500, 2280, 2);
            
            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `speed_run`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `damage_multiplier`, `ranged_attack_time`, `loot_id`, `spell_list_id`, `movement_type`, `static_flags1`) VALUES (90149, 'Boroka', 52, 52, 16, 10889, 2, 1.71429, 20, 1, 1, 1, 5.0, 2.0, 1375, 5347, 200120, 1, 524288);

                -- Spawns
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000212, 90149, 0, 0, 0, 0, 1, -5859.53, 1525.92, 87.4685, 5.74076, 25, 25, 5, 100, 100, 1, 0, 0, 0, 10);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90147, 30415); -- Cyrenia (Dire Maul)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90147, 30415); -- Cyrenia (Dire Maul)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30416, 357, 45, 50, 8, 'Vengeance on the Northspring', 'In my day, I was a seasoned hunter. There wasn\'t any creature around that I feared. Until...$B$BI was out in the forest, sharpening my blade after a tough battle, when I was ambushed. Harpies surrounded me, and I barely managed to drag myself to safety.$B$BEven now, I can still hear their cries echoing...$B$BI was never the same after that. But the hate boils inside of me - I must get even, after all these years.$B$BThe Northspring harpies can be found to the west of here. $N, get my revenge. ', 'Rockbiter at the Twin Colossals, in Feralas wants you to kill 4 Northspring Harpies, 4 Northspring Roguefeathers, 4 Northspring Windcallers, and 4 Northspring Slayers.', 'Thank you, $N. You have put an old tauren\'s mind at peace.', 'The wings of the Northspring harpies are black as the night; do not take your eyes off of them, lest they disappear into darkness.', '', '', '', '', '', 5362, 5363, 5364, 5366, 4, 4, 4, 4, 69, 75, 3550, 5500, 2160, 1, 2);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7765, 30416); -- Rockbiter (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7765, 30416); -- Rockbiter (The Twin Colossals)
        
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30417, 357, 45, 50, 1, 8, 'Dark Heart', 'Edana Hatetalon is the queen of the Northspring harpies that reside in the ruins to the west. She is pure evil; I have heard that her heart is one of crystal. She is void of any emotion aside from the hate she feels towards all others. You must face Edana and bring me back her dark heart.$B$BI have heard of a horn that harpies carry - blowing it by the Hatetalon stones, in the northern part of the ruins, will summon the queen.$B$BImagine her surprise when it is not her kin calling her, but her death.', 'Rockbiter at The Twin Collosals wants Edana Hatetalon\'s Dark Heart.', 'Now I know that Edana is truly dead. This heart; I will keep it in memory of what did here for me, $N. Thank you.', 'The hate that Edana spreads across the land must be stopped.', '', '', '', '', '', 9528, 1, 9530, 1, 9665, 9666, 1, 1, 69, 150, 5900, 3600, 1, 2, 400);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7765, 30417); -- Rockbiter (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7765, 30417); -- Rockbiter (The Twin Colossals)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30418, 357, 45, 50, 0, 8, 'Harpy Hearts', 'North West of here ther are many harpies, kill them and bring me their hearts.', 'Elaura at The Twin Colossals wants you to bring her 12 Harpy Hearts.', 'Thank you.', 'Did you get the Harpy Hearts yet?.', '', '', '', '', '', 30493, 8, 0, 0, 0, 0, 0, 0, 69, 150, 5400, 3600, 1, 2, 400);

            -- Loot template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5362, 30493, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5363, 30493, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5364, 30493, -25);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5366, 30493, -25);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90150, 30418); -- Elaura (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90150, 30418); -- Elaura (The Twin Colossals)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30419, 357, 45, 50, 1, 8, 'Feralas Crystals', 'South west of here amongst the mountain giants there are big purple crystals. Gather 12 of them for me.', 'Elaura at The Twin Colossals wants you to bring her 12 Feralas Crystals.', 'Thank you.', 'Did you get the Feralas Crystals for me yet?', '', '', '', '', '', 30494, 12, 0, 0, 0, 0, 0, 0, 69, 150, 6500, 3600, 1, 2, 400);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987711, @GAMEOBJECT_TYPE_CHEST, 5011, 'Twin Colossal Crystal Formation', 4, 43, 42935);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100266, 987711, 1, -3270.87, 2774.65, 71.5204, 3.29576, 0, 0, 0.997031, -0.0770064, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100267, 987711, 1, -3338.46, 2753.67, 68.2734, 3.71594, 0, 0, 0.959048, -0.283245, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100268, 987711, 1, -3405.13, 2781.49, 75.1376, 3.218, 0, 0, 0.99927, -0.038193, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100269, 987711, 1, -3449.2, 2732.31, 80.9408, 5.49722, 0, 0, 0.382945, -0.923771, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100270, 987711, 1, -3495.18, 2710.01, 89.3367, 1.88438, 0, 0, 0.808848, 0.588018, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100271, 987711, 1, -3472.75, 2663.28, 81.4275, 3.97748, 0, 0, 0.913926, -0.405881, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100272, 987711, 1, -3426.14, 2640.05, 70.8183, 5.82473, 0, 0, 0.227225, -0.973842, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100273, 987711, 1, -3420.65, 2579.39, 67.5843, 3.64132, 0, 0, 0.968946, -0.247274, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100274, 987711, 1, -3491.68, 2583.34, 75.3114, 2.71063, 0, 0, 0.976873, 0.21382, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100275, 987711, 1, -3518.28, 2645.49, 90.5459, 2.1255, 0, 0, 0.873698, 0.486469, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100276, 987711, 1, -3537.52, 2620.55, 86.7602, 3.92485, 0, 0, 0.924289, -0.381694, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100277, 987711, 1, -3547.99, 2577.18, 83.0046, 5.62523, 0, 0, 0.323077, -0.946373, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100278, 987711, 1, -3529.66, 2772.12, 92.6275, 2.66035, 0, 0, 0.97119, 0.238307, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100279, 987711, 1, -3488.92, 2741.76, 86.0389, 5.7234, 0, 0, 0.276251, -0.961086, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100280, 987711, 1, -3468.69, 2801.98, 88.2189, 2.74204, 0, 0, 0.980111, 0.198452, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100281, 987711, 1, -3369.11, 2809.21, 72.2844, 6.00772, 0, 0, 0.137298, -0.99053, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100282, 987711, 1, -3372.16, 2672.15, 68.1326, 1.95898, 0, 0, 0.830213, 0.557446, 330, 330, 100, 1, 0, 0, 0, 10);


                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42935, 30494, -100);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90150, 30419); -- Elaura (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90150, 30419); -- Elaura (The Twin Colossals)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30420, 357, 45, 50, 1, 8, 'Moving Rocks', 'To the south west of here there are many mountain giants. I want you to thin their numbers. ', 'Elaura at the Twin Colossals, in Feralas wants you to kill 6 Land Walkers and 6 Cliff Giants.', 'Thank you, $N.', 'Did you kill the mountain giants yet?', '', '', '', '', '', 5357, 5358, 0, 0, 6, 6, 0, 0, 69, 75, 3550, 6900, 2160, 1, 2);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90150, 30420); -- Elaura (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90150, 30420); -- Elaura (The Twin Colossals)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30421, 357, 45, 50, 1, 8, 'Giant Moss', 'The mountain giants to the south west of here carry a special moss on their backs. Kill them and get it for me, it might have some medical uses.', 'Elaura at The Twin Colossals wants you to collect 1 Giant Moss from the mountain giants to the south west.', 'This should be of great use to us, thank you!', 'Did you get the Giant Moss yeet?', '', '', '', '', '', 30495, 1, 0, 0, 0, 0, 0, 0, 69, 150, 6500, 3600, 1, 2, 400);

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5357, 30495, -10);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5358, 30495, -10);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90150, 30421); -- Elaura (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90150, 30421); -- Elaura (The Twin Colossals)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30422, 357, 45, 53, 1, 8, 'Gargantua', 'There is an even bigger mountain giant, who must be their leader, up the mountain south west of here. Go there and kill him.', 'Elaura at the Twin Colossals, in Feralas wants you to kill Gargantua.', 'Thank you, $N.', 'Have you rid this world of Gargantua?', '', '', '', '', '', 90153, 0, 0, 0, 1, 0, 0, 0, 69, 75, 3550, 7500, 2160, 1, 2);

            -- TODO: Custom item rewards

            -- Creatures
                -- Template
                    REPLACE `mangos`.`creature_template` (`entry`, `name`, `level_min`, `level_max`, `faction`, `display_id1`, `display_scale1`, `speed_walk`, `detection_range`, `type`, `rank`, `unit_class`, `health_multiplier`, `mana_multiplier`, `damage_multiplier`, `base_attack_time`, `loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `equipment_id`) VALUES (90153, 'Gargantua', 53, 53, 778, 10037, 2, 0.777776, 20, 5, 1, 1, 6.0, 2, 2.5, 2600, 5357, 244, 1619, 200121, 5357);

                -- Spawns
                    REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000218, 90153, 0, 0, 0, 0, 1, -3326.05, 2890.17, 129.155, 5.03459, 660, 660, 0, 100, 100, 0, 0, 0, 0, 10);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90150, 30422); -- Elaura (The Twin Colossals)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90150, 30422); -- Elaura (The Twin Colossals)

        -- REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90151, 'Feorinas', '', 50, 50, 80, 2, 12045, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

        -- REPLACE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `health_multiplier`, `damage_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90152, 'Florelin', '', 50, 50, 80, 2, 12033, 1, 1, 7, 1, 1.1, 1.05, 2796, 138936390, 2);

    -- Prevquest 2869 - >
    -- Quest
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30423, 357, 40, 45, 0, 8, 2869, 'Hatecrest Mining', 'Edana Hatetalon is the queen of the Northspring harpies that reside in the ruins to the west. She is pure evil; I have heard that her heart is one of crystal. She is void of any emotion aside from the hate she feels towards all others. You must face Edana and bring me back her dark heart.$B$BI have heard of a horn that harpies carry - blowing it by the Hatetalon stones, in the northern part of the ruins, will summon the queen.$B$BImagine her surprise when it is not her kin calling her, but her death.', 'Talo Thornhoof in Camp Mojache wants Edana Hatetalon\'s Dark Heart.', 'Now I know that Edana is truly dead. This heart; I will keep it in memory of what did here for me, $N. Thank you.', 'The hate that Edana spreads across the land must be stopped.', '', '', '', '', '', 30496, 12, 0, 0, 0, 0, 0, 0, 69, 150, 3750, 3600, 1, 2, 400);

            -- Objects
                -- Template
                    REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`, `data0`, `data1`) VALUES (987712, @GAMEOBJECT_TYPE_CHEST, 5011, 'Crystal Formation', 4, 43, 42936);

                -- Spawns
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100283, 987712, 1, -5493.08, 3614.42, 0.995454, 4.63874, 0, 0, 0.732661, -0.680594, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100284, 987712, 1, -5532.24, 3584.13, -14.562, 0.492615, 0, 0, 0.243825, 0.969819, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100285, 987712, 1, -5513.37, 3531.25, -6.85918, 5.14767, 0, 0, 0.537742, -0.84311, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100286, 987712, 1, -5609.55, 3539.76, 3.1014, 2.59435, 0, 0, 0.962798, 0.270222, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100287, 987712, 1, -5634.67, 3560.77, 5.72383, 1.60475, 0, 0, 0.719007, 0.695003, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100288, 987712, 1, -5646.56, 3462.41, 2.83601, 4.69999, 0, 0, 0.711478, -0.702708, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100289, 987712, 1, -5628.47, 3448.04, 3.52754, 6.21031, 0, 0, 0.036431, -0.999336, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100290, 987712, 1, -5640.1, 3451.92, 3.63615, 0.743934, 0, 0, 0.363449, 0.931614, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100291, 987712, 1, -5574.24, 3477.14, 4.86746, 0.234209, 0, 0, 0.116837, 0.993151, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100292, 987712, 1, -5546.73, 3533.35, 12.094, 1.63222, 0, 0, 0.728486, 0.685061, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100293, 987712, 1, -5532.42, 3565.56, 19.479, 2.70036, 0, 0, 0.975763, 0.218831, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100294, 987712, 1, -5561.3, 3525.9, 21.0242, 5.71629, 0, 0, 0.27967, -0.960096, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100295, 987712, 1, -5586.51, 3514.67, 18.6308, 2.09953, 0, 0, 0.867306, 0.497775, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100296, 987712, 1, -5586.22, 3539.77, 19.181, 1.69505, 0, 0, 0.749644, 0.661842, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100297, 987712, 1, -5550.42, 3634.77, -14.7642, 1.65578, 0, 0, 0.736505, 0.676433, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100298, 987712, 1, -5535.7, 3548.89, 1.72496, 2.27624, 0, 0, 0.907846, 0.419304, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100299, 987712, 1, -5529.23, 3479.06, -5.18657, 3.64282, 0, 0, 0.96876, -0.248, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100300, 987712, 1, -5499.57, 3473.24, -5.5473, 0.0912514, 0, 0, 0.0456099, 0.998959, 330, 330, 100, 1, 0, 0, 0, 10);
                    REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100301, 987712, 1, -5493.59, 3494.58, -5.39519, 2.46473, 0, 0, 0.943276, 0.33201, 330, 330, 100, 1, 0, 0, 0, 10);

                -- Loot Template
                    REPLACE `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42936, 30496, -100);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7877, 30423); -- Latronicus Moonspear (Feathermoon Stronghold)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7877, 30423); -- Latronicus Moonspear (Feathermoon Stronghold)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `ReqSourceId2`, `ReqSourceCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`, `OfferRewardEmoteDelay1`) VALUES (30424, 357, 40, 45, 0, 8, 2869, 'Pristine Hatecrest Scale', 'Edana Hatetalon is the queen of the Northspring harpies that reside in the ruins to the west. She is pure evil; I have heard that her heart is one of crystal. She is void of any emotion aside from the hate she feels towards all others. You must face Edana and bring me back her dark heart.$B$BI have heard of a horn that harpies carry - blowing it by the Hatetalon stones, in the northern part of the ruins, will summon the queen.$B$BImagine her surprise when it is not her kin calling her, but her death.', 'Talo Thornhoof in Camp Mojache wants Edana Hatetalon\'s Dark Heart.', 'Now I know that Edana is truly dead. This heart; I will keep it in memory of what did here for me, $N. Thank you.', 'The hate that Edana spreads across the land must be stopped.', '', '', '', '', '', 30497, 1, 0, 0, 0, 0, 0, 0, 69, 150, 3600, 3600, 1, 2, 400);

            -- Loot Template
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5333, 30497, -5);
                REPLACE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5336, 30497, -5);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7877, 30424); -- Latronicus Moonspear (Feathermoon Stronghold)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7877, 30424); -- Latronicus Moonspear (Feathermoon Stronghold)

        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `OfferRewardEmote1`) VALUES (30425, 357, 40, 45, 8, 2869, 'Vengeance on the Hatecrest', 'In my day, I was a seasoned hunter. There wasn\'t any creature around that I feared. Until...$B$BI was out in the forest, sharpening my blade after a tough battle, when I was ambushed. Harpies surrounded me, and I barely managed to drag myself to safety.$B$BEven now, I can still hear their cries echoing...$B$BI was never the same after that. But the hate boils inside of me - I must get even, after all these years.$B$BThe Northspring harpies can be found to the west of here. $N, get my revenge. ', 'Rockbiter at the Twin Colossals, in Feralas wants you to kill 4 Northspring Harpies, 4 Northspring Roguefeathers, 4 Northspring Windcallers, and 4 Northspring Slayers.', 'Thank you, $N. You have put an old tauren\'s mind at peace.', 'The wings of the Northspring harpies are black as the night; do not take your eyes off of them, lest they disappear into darkness.', '', '', '', '', '', 5333, 5336, 0, 0, 15, 15, 0, 0, 69, 75, 3550, 5500, 2160, 1, 2);

            -- Start 
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7877, 30425); -- Latronicus Moonspear (Feathermoon Stronghold)
                
            -- End 
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7877, 30425); -- Latronicus Moonspear (Feathermoon Stronghold)

    -- TODO: Monu still doesn't summon succubus
-- Dungeons
    -- Ragefire Chasm
        -- Hidden Enemies
            -- Quest
                REPLACE `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewRepSpilloverMask`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (30289, 0, 2, 2437, 9, 0, 16, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hidden Enemies', 'Hmm, leaders of the Searing Blade... this concerns me most. If they are the ones of value to Neeru, then those are who we must target first. This satyr... Bazzalan, and the other Neeru mentioned--what was he, a warlock?--must be slain.$B$BReturn to the Cleft of Shadow and enter Ragefire Chasm, $N. Find these two leaders of the Searing Blade, and kill them. But be careful not to let Neeru know it was you who did this. You must retain your identity as one of his $gbrothers:sisters; in arms.', 'Kill Bazzalan and Jergosh the Invoker before returning to Tyrande in Darnassus.', 'I am glad you\'ve returned, $N. Some of those loyal to me brought word immediately that the caverns below Orgrimmar were in disarray now that their leaders have been slain. I even heard reports that Neeru was more than agitated. It seems we\'ve put a dent in his armor. I can\'t say I\'m displeased... even with such a minor victory.', 'Have you found them yet, $N? The leaders of the Searing Blade.$B$BI knew the Shadow Council sought to take Orgrimmar and all of the Horde from me, but I hadn\'t realized how quickly they were able to infiltrate the city. So many arms this beast has... we can cut them off until exhaustion sets in, but we will be no further than when we started. I will have to have my spies double their efforts.', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11519, 11518, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 30408, 30409, 30410, 30411, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 550, 0, 0, 0, 0, 0, 3170, 800, 720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7999, 30289); -- Tyrande (Darnassus)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7999, 30289); -- Tyrande (Darnassus)

    -- Slaying The Beast
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30290, 2437, 9, 16, 81, 8, 'Slaying the Beast', 'The primary task set upon me by our great Warchief is to root out the creatures responsible for infesting our lord\'s great city with demonic influence. The Burning Blade is one threat, but there are others; the Searing Blade for instance, who make their home in Ragefire Chasm, secretly attempting to subvert innocent members of the Horde.$B$BIf they are to be stopped, then their leader must be slain--a Felguard named Taragaman the Hungerer.$B$BKill him, and his heart will appease Arch Druid Fandral Staghelm, of this I\'m sure.', 'Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.', 'Ha! You\'ve done it! Arch Druid Fandral Staghelm will be so pleased.$B$BI will ensure this heart is taken care of properly.$B$BFor now though, you must celebrate your victory. I will inform Arch Druid Fandral Staghelm of your success.$B$BThank you for your aid, $c.', 'Have you killed the beast? He surely must be the leader of the Searing Blade in Ragefire Chasm.', '', '', '', '', '', 14540, 1, 1150, 800, 720, 1, 1, 6, 6, 4, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3516, 30290); -- Arch Druid Fandral Staghelm (Darnassus)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3516, 30290); -- Arch Druid Fandral Staghelm (Darnassus)

    -- Testing an Enemy's Strength
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30291, 2437, 9, 15, 81, 8, 'Testing an Enemy\'s Strength', 'Beneath the city of Orgrimmar, stout creatures known as troggs started coming to the surface from deep below the lava filled tunnels. In her ever-benevolence, Magatha sought to make peace with the creatures, but they turned on her diplomats, killing them. She will not allow such treatment of the tauren people and now consider the creatures a threat to all of the Horde.$B$BShe asks that you put an end to this trogg threat before it overwhelms the Horde from below. Find Ragefire Chasm and destroy them all.', 'Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Terenthis in Auberdine.', 'I am glad to see you took Magatha\'s task seriously. Thank you, $N. I\'m sure the troggs will have a harder time coming to the surface with their numbers so greatly reduced.$B$BPerhaps in the future we can take time to figure out where such creatures came from, and what they really want.', 'How goes your search for the Chasm? And the troggs?$B$BThe threat cannot be allowed to persist it will only injure our orc brethren if it continues.', '', '', '', '', '', 11318, 11319, 8, 8, 69, 100, 1050, 700, 660, 1, 1, 6, 6, 2, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3693, 30291); -- Terenthis (Auberdine)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3693, 30291); -- Terenthis (Auberdine)

    -- The Power to Destroy..
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemCount1`, `ReqItemCount2`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30292, 2437, 9, 16, 81, 8, 'The Power to Destroy...', 'Many denizens of the Legion bestow gifts on their followers as you may well know. Some of these gifts the Dark Lady feels would be better off in her hands than in the hands of those with... lesser vision.$B$BA sect of the Shadow Council hidden in caverns below Orgrimmar known as the Searing Blade are a prime example. The Lady tells me that members of the Searing Blade have come into the possession of two powerful spell books she would like to "borrow" these books from them. You will get them for her.', 'Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.', 'Good, $c. You have done well in serving the Dark Lady. Your continued perseverance and ambition will be of great use to the Lady\'s subjects. Return to me again in the future. Perhaps I will have other tasks for you that will aid the Dark Lady in her attempts at overtaking the Lich King and completely freeing the Scourge.', 'There are a hundred other tasks awaiting my attention, $c. Do you have the books?', '', '', '', '', '', 14395, 14396, 1, 1, 15449, 15450, 15451, 1, 1, 1, 69, 150, 1450, 900, 1, 1, 6, 6, 1, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3516, 30292); -- Arch Druid Fandral Staghelm (Darnassus)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3516, 30292); -- Arch Druid Fandral Staghelm (Darnassus)

    -- Oggleflint's Demise
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30293, 2437, 9, 16, 81, 8, 0, 0, 'Oggleflint\'s Demise', 'Go to Ragefire Chasm and rid the cavern of Oggleflint.', 'Go to Ragefire Chasm and rid the cavern of Oggleflint then return to Thundris Windweaver in Auberdine', 'Thank you!', 'Have you killed Oggleflint yet?', '', '', '', '', '', 11517, 1, 15452, 15453, 1, 1, 69, 150, 2330, 720, 6, 6, 4, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3649, 30293); -- Thundris Windweaver (Auberdine)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3649, 30293); -- Thundris Windweaver (Auberdine)

    -- Wailing Caverns
        -- Leaders of the Fang
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmoteDelay2`) VALUES (30294, 718, 10, 22, 81, 8, 0, 'Leaders of the Fang', 'The druids in the Wailing Caverns, the Druids of the Fang, are an aberration.  They were part of an order of noble druids whose plan was to heal the Barrens, but now seek to remake that land to match their own, twisted dreams.$B$BThe Druids of the Fang have four leaders, and each possesses a dream gem.  Even now their faces haunt me!  Defeat the leaders and bring me their gems, and the Barrens may again know peace.$B$BGo, $N.  You will find them lurking deep within the Wailing Caverns.', 'Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Tyrande in Darnassus.', 'You have done it, $N.  You killed the leaders of the Druids of the Fang.  My dreams are now free of their wicked faces, and you have helped save the Barrens from a cursed future.$B$BI thank you, $N.  I thank you for myself, for the druids of Darnassus, and for the land.', 'Memories of my nightmares haunt me, $N.  Have you defeated the leaders of the fang and acquired their gems?', '', '', '', '', '', 9738, 9739, 9740, 9741, 1, 1, 1, 1, 6505, 6504, 1, 1, 69, 150, 2200, 1320, 1, 1, 1, 1, 2, 1000);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (7999, 30294); -- Tyrande (Darnassus)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (7999, 30294); -- Tyrande (Darnassus)

        -- Serpentbloom
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `CompleteEmote`) VALUES (30295, 718, 14, 18, 81, 8, 'Serpentbloom', 'The Royal Apothecary Society, based in the great Undercity of Lordaeron, has sent me here for a very specific service, $n. Perhaps you wish to aid me, and in turn The Dark Lady in our efforts to advance the Forsaken.$b$bRecently I studied a rare specimen of flora named Serpentbloom. I believe in greater quantities this herb has great potential.$b$bUnfortunately Serpentbloom can only be found in the darkest recesses of the Wailing Caverns, a dangerous cave system located in the Barrens.', 'Faldreas Goeth\'Shael in Ashenvale wants you to collect 10 Serpentbloom.', 'Ah, splendid specimens. You have done well, $N.', 'I am eager to see if you can gather enough Serpentbloom from the Wailing Caverns. I\'ve sent many to do my bidding but none have returned.', '', '', '', '', '', 5339, 10, 10919, 1, 69, 150, 1700, 2000, 1020, 1, 1, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3996, 30295); -- Faldreas Goeth'Shael (Ashenvale)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3996, 30295); -- Faldreas Goeth'Shael (Ashenvale)
    
    -- Shadowfang Keep
        -- Arugal Must Die
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewItemId1`, `RewItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `RewSpellCast`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30337, 209, 18, 27, 81, 8, 'Arugal Must Die', 'Arugal still resides in Shadowfang Keep. We cannot claim Silverpine as a strategic stronghold for the Dark Lady until Arugal is slain.$b$bI shall see to it that his magic is eradicated, $n. But I leave it in your hands to see that Arugal meets the death he so deserves.$b$bTravel to Shadowfang Keep and put an end to Arugal\'s foul spells once and for all. Bring to me the vile wizard\'s head!', 'Kill Arugal and bring his head to Loremaster Dibbs at Southshore.', 'Silverpine Forest is finally free from the vice of that wretch Arugal. You have done the Dark Lady a great service, $n. Your tenacity shall be rewarded.', 'With Arugal\'s death we stand to increase the Dark Lady\'s stronghold on Lordaeron.', '', '', '', '', '', 5442, 1, 30443, 1, 72, 200, 3300, 1980, 1460, 1, 1, 5, 1, 1, 21, 1, 1);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2277, 30337); -- Loremaster Dibbs (Southshore)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2277, 30337); -- Loremaster Dibbs (Southshore)
        
        -- The Book of Ur
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `OfferRewardEmote1`) VALUES (30338, 209, 16, 26, 81, 8, 'The Book of Ur', '$N, Shadowfang Keep holds a book, the Book of Ur, which would be much prized in my collection.  Ur was a great mage of Dalaran before the coming of the Scourge, his studies in other worlds are of much value to ... certain parties among the Forsaken.$B$BEnter Shadowfang Keep and find the book.  Bring it to me, and I will report your service to our Dark Lady...', 'Bring the Book of Ur to Librarian Mae Paledust at the Hall of Explorers in Ironforge.', 'Very good.  This book will add nicely to my collections of the workings of Ur.  His knowledge was great, but his conscience held him from true power.  And so when the Scourge came and his strength was tested, it failed.$B$BWe of the Forsaken cannot afford such weakness, if we are to survive...$B$B...If we are to conquer.', 'Did you find the book, $N?', '', '', '', '', '', 6283, 1, 6335, 4534, 1, 1, 72, 100, 2100, 1260, 2);

            -- Start
                REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (3979, 30338); -- Librarian Mae Paledust (Ironforge - Hall of Explorers)

            -- End
                REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (3979, 30338); -- Librarian Mae Paledust (Ironforge - Hall of Explorers)

    -- Butcher's's Demise
        -- Quest
            REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `QuestFlags`, `PrevQuestId`, `NextQuestInChain`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `RewMoneyMaxLevel`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`) VALUES (30339, 209, 16, 26, 81, 8, 0, 0, 'Butcher\'s Demise', 'Go to Shadowfang Keep and rid the catle of Razorclaw the Butcher.', 'Go to Shadowfang Keep and rid the castle of Razorclaw the Butcher then return to Apprentice Honeywell in Southshore.', 'Thank you!', 'Have you killed Razorclaw the Butcher yet?', '', '', '', '', '', 3886, 1, 3324, 2230, 1, 1, 72, 100, 2000, 720, 6, 6, 4, 1);

        -- Start
            REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (2363, 30339); -- Apprentice Honeywell (Southsore)

        -- End
            REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (2363, 30339); -- Apprentice Honeywell (Southsore)



