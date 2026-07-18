-- Quests
-- South STV
-- Azshara - Wildlife: (8759, 8762, 8760, 8761) Ooze: 8766 Turtles: (6352, 6369) Hippo: 6377 Cracklaws: (6135, 6370, 6350, 6137) Murloc: 6138 Hydra: 6348 Chimaera: (8763, 8764) Shark: 12125 Giant Strider: 6144
-- Deadwind Pass
-- Winterspring
-- Silithus
-- Alterac Mountains Lord Aliden Perenolde quest should be alterac mountains for zone
-- WPL (Tomb in Sorrow Hill, Weeping Cave [Slimes / Living Elementals])
-- EPL (Nathanos horde quests)
-- Ashenvale (East - High level)
-- Use 9666 and 9665 for rewards somewhere
-- Add rewards to Blasted Lands quests, end of ogre chain. Maybe some other chains
-- Quests that start from random drops from mobs (5% drop chance)
-- Quests that start from a drop from random named mobs (like TBC)
-- Quests that start at random clickable objects
-- Add new custom item rewards to a lot of quests (especially end of chains missing rewards)
-- Hydraxian waterlolrds rep vendor and killing stuff here gives rep? or just eles in general and https://www.wowhead.com/classic/quest=3507/betrayed 
-- Desolace quest for https://www.wowhead.com/classic/npc=5760/lord-azrethoc (Flag quest as Elite)
-- Arathi Stormgarde quest add horde quest - > https://www.wowhead.com/classic/quest=680/the-real-threat#comments
-- Add loot rewards to Greatest Scott! (Horde badland quest rewards?)
-- Blasted Lands unused mine by Nethergarde Keep
-- Tanaris Breadcrumb to Zalashji (8617) and also have him start a quest chain
-- Tanaris add quest for scorpid hunter
-- Tanaris add quest for blisterpaw hyena to goblin in middle of zone(or does one exist?)
-- Tanaris add quest for glasshide gazer goblin in middle of zone(or does one exist?)
-- Tanaris ground pounder drop a quest item for free 3000 exp
-- Azshara operation azshara part1 moshoof stag not courser
-- Azshara Naga elite bosses in towers on the Beach
-- Azshara At War with the Spitelash say in quest specifically which Nagas to kill
-- Azshara quest for Naga Myrmidons on beach
-- Azshara FAR south east beach quests for level 54+ Spitelash (Enchantress / Battlemasters)
-- Ferarlas Camp Protection part3 should be 4 different types of harpies 10-8 klls each not just 2 (Northspring  Roguefeather + Northspring Harpy)
-- Felwood quest for overlord Ror? (Furbolg)
-- Felwood quest for Chieftain Bloodmaw
-- Felwood Ironbeak Screecher kill quest
-- Felwood quest for Prince Xavalis
-- WPL Skeletal Sorcrerer Sorrow Hill quest @ Crypt (Maybe other enemies in there too)
-- Falling to Corruption to see how to code objects you can turn quests into (was a cauldron)
-- Timed quests (Timer on item, or timer on quest)
-- More quests to click / interact / gather things sprinkled inside of kill x / loot x things from mob quest areas
-- More quests for boss kills deep in caves / towers / etc far behind a ton of mobs
-- Lots of quests to use item on a mob below 20% HP
-- More 100% drop rate quests that need like 20+ drops
-- how do distress beacon quests not replace item on starting? same with ship schedule

-- Quest + Vendor + Repair npc flag = 
-- NEXT quest_template 30289
-- NEXT quest_end_script 10010
-- NEXT generic_script 9000001
-- NEXT creature_movement_scripts 9000001

-- NEXT creature_template 90109
-- NEXT gameobject_template 987671
-- NEXT gameobject_loot_template 42911

-- NEXT gameobject 300406

--     QUEST_TYPE_ELITE               = 1,
--     QUEST_TYPE_LIFE                = 21,
--     QUEST_TYPE_PVP                 = 41,
--     QUEST_TYPE_RAID                = 62,
--     QUEST_TYPE_DUNGEON             = 81,
--     //tbc?
--     QUEST_TYPE_WORLD_EVENT         = 82,
--     QUEST_TYPE_LEGENDARY           = 83,
--     QUEST_TYPE_ESCORT              = 84,

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


    -- documentation: https://github.com/cmangos/issues/wiki/Gameobject_template

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

    -- Custom Mage Class quests
    REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemId2`, `RewItemCount1`, `RewItemCount2`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30025, -161, 40, 40, 128, 'Wizard\'s Cloak', 'You have come very far on your journey. I think you are ready for one of the pieces of your attire. Bring me 10 Bolts of Mageweave, 4 Thick Leather and 2 Silken Thread and I will create them for you.', 'Bring 10 Bolts of Mageweave, 4 Thick Leather and 2 Silken Thread to Jennea Cannon in Stormwind.', 'Here we go.  May it serve you well.', 'Did you bring me the 10 Bolts of Mageweave, 4 Thick Leather and 2 Silken Thread?', '', '', '', '', '', 4339, 4304, 4291, 10, 4, 2, 30135, 30136, 1, 1, 4100, 5500, 1, 6, 6, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5497, 30025);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5497, 30025);

    REPLACE INTO `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `RewItemId1`, `RewItemId2`, `RewItemCount1`, `RewItemCount2`, `RewXP`, `RewMoneyMaxLevel`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`) VALUES (30246, -161, 50, 50, 128, 'Wizard\'s Hat', 'You have a cape, now you need a hat! A wizard is nothing without their fancy wizard hat! Bring me 10 Bolts of Runecloth, 8 Rugged Leather and 4 Heavy Silken Thread and I will create them for you.', ' Bring me 10 Bolts of Runecloth, 8 Rugged Leather and 4 Heavy Silken Thread and I will create them for you.', 'Now you\'re looking more like a Wizard!', 'Did you bring me the 10 Bolts of Runecloth, 8 Rugged Leather and 4 Heavy Silken Thread?', '', '', '', '', '', 14048, 8170, 8343, 10, 8, 4, 30137, 0, 1, 0, 7100, 7100, 1, 6, 6, 1);
    REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5497, 30246);
    REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5497, 30246);

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
                INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10000, 5, 0, 10, 90060, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Skeletal Warlord');

            -- (Temp Summon Zareehkl)
                DELETE FROM `quest_end_scripts` WHERE `id`=10005;
                INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10005, 5, 0, 10, 90061, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Ghoul');

            -- (Temp Summon Velionis)
                DELETE FROM `quest_end_scripts` WHERE `id`=10006;
                INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
                (10006, 5, 0, 10, 90067, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -10946.9, -1872.8, -17.7514, 0.41247, 0, 'Eerie Altar: Summon Skeletal Mage');

            -- (Temp Summon Quasimodo)
                DELETE FROM `quest_end_scripts` WHERE `id`=10007;
                INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
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
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10001, 0, 0, 81, 4100087, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10001, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');

            DELETE FROM `quest_end_scripts` WHERE `id`=10002;
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10002, 0, 0, 81, 4100088, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10002, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');

            DELETE FROM `quest_end_scripts` WHERE `id`=10003;
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10003, 0, 0, 81, 4100089, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Despawn Object'),
            (10003, 1, 0, 17, 30212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Runestone: Give Player Item');


    -- Kirin Tor Coffer
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987665, 3, 10, 'Kirin Tor Coffer', 94, 57, 42908, 1, 1, 1, 1500, 2500);

        -- Object Spawns
        -- Dont forget 30m respawn timer (1800)
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100090, 987665, 0, -11052.1, -1906.41, -15.2643, 5.14985, 0, 0, 0.536824, -0.843695, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100091, 987665, 0, -11185.9, -1935.93, -14.327, 0.41076, 0, 0, 0.203939, 0.978984, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100092, 987665, 0, -11148.6, -1969.97, 35.7492, 3.01043, 0, 0, 0.99785, 0.0655359, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100093, 987665, 0, -11061.1, -2039.2, 31.114, 2.48263, 0, 0, 0.94621, 0.323554, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100094, 987665, 0, -10992.6, -2055.83, 92.9714, 2.29492, 0, 0, 0.911723, 0.410806, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100095, 987665, 0, -11168.6, -2454.08, 107.879, 5.85904, 0, 0, 0.210484, -0.977597, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100096, 987665, 0, -11094, -2462.02, 113.397, 1.76712, 0, 0, 0.773002, 0.634403, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100097, 987665, 0, -10896.8, -2350.27, 117.749, 1.27231, 0, 0, 0.594109, 0.804385, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100098, 987665, 0, -10770.7, -2174.83, 122.246, 3.14549, 0, 0, 0.999998, -0.00194983, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100099, 987665, 0, -10733.8, -2078.53, 136.75, 1.13096, 0, 0, 0.53582, 0.844332, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100100, 987665, 0, -10424.3, -2135.67, 91.821, 3.69135, 0, 0, 0.962458, -0.271431, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100101, 987665, 0, -10277.8, -2050.65, 55.9284, 2.2258, 0, 0, 0.896984, 0.442063, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100102, 987665, 0, -10348.5, -1886.9, 39.1211, 2.31219, 0, 0, 0.915237, 0.402917, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100103, 987665, 0, -10549, -1877.68, 116.145, 2.03337, 0, 0, 0.850369, 0.526187, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100104, 987665, 0, -10697.7, -1930.37, 98.3556, 4.14607, 0, 0, 0.876506, -0.48139, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100105, 987665, 0, -10944.6, -1987.69, 75.0819, 2.32705, 0, 0, 0.918205, 0.396105, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100106, 987665, 0, -11072.9, -2129.64, 6.71916, 2.18017, 0, 0, 0.886666, 0.462411, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100121, 987665, 0, -11357.7, -2154.08, 23.1316, 0.24832, 0, 0, 0.123841, 0.992302, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100122, 987665, 0, -11245.8, -2180.8, 36.1472, 4.54445, 0, 0, 0.763921, -0.64531, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100123, 987665, 0, -11182.3, -2243.69, 22.7071, 1.46569, 0, 0, 0.668986, 0.743275, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100124, 987665, 0, -11153.1, -2185.95, 22.7065, 3.08361, 0, 0, 0.99958, 0.0289894, 1800, 1800, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100125, 987665, 0, -11231.8, -2165.54, 22.7073, 0.0833858, 0, 0, 0.0416808, 0.999131, 1800, 1800, 100, 1, 0, 0, 0, 10);

        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42908; -- To ensure duplicate entries are not added
        INSERT INTO `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42908, 30228, 100, 0, 1);

    -- Curtana
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987667, 3, 4175, 'Curtana', 94, 57, 42909, 1, 1, 1, 0, 0);

        -- Object Spawns
        -- Don't forget 4hr respawn timer (7200)
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100108, 987667, 0, -11405.9, -2152.9, 34.6624, 4.71169, 0, 0, 0.707354, -0.706859, 7200, 7200, 100, 1, 0, 0, 0, 10);


        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42909; -- To ensure duplicate entries are not added
        INSERT INTO `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42909, 30255, 100, 0, 1);

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
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10004, 5, 0, 10, 90094, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1,-10813.6, -2094.34, 117.132, 2.07719, 0, 'Ogre Mound: Summon Highlord Ogrok');

-- Enchanted Dirt (Used to summon Ogopogo)
    -- Object 
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`) VALUES (987668, 2, 20, 'Enchanted Dirt', 84, 4);

    -- Object Spawns
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100109, 987668, 0, -11074.5, -2132.78, 6.18172, 2.35391, 0, 0, 0.923442, 0.383737, 25, 25, 100, 1, 0, 0, 0, 10);

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
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10008, 5, 0, 10, 90098, 60000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0 ,0 , 0, 'Enchanted Dirt: Summon Ogopogo');

    -- Curtana
        -- Object
            REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `data0`, `data1`, `data3`, `data10`, `data12`, `mingold`, `maxgold`) VALUES (987669, 3, 32, 'Aged Karazhan Ale', 94, 57, 42910, 1, 1, 1, 0, 0);

        -- Object Spawns
        -- TODO: Respawn time (5m)
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100110, 987669, 0, -11163.5, -2101.39, 31.239, 4.67878, 0, 0, 0.718888, -0.695126, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100111, 987669, 0, -11208, -2107.14, 31.2399, 4.47064, 0, 0, 0.78721, -0.616685, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100112, 987669, 0, -11175, -2158.29, 22.7066, 4.5688, 0, 0, 0.756006, -0.654564, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100113, 987669, 0, -11073.6, -2195.31, 14.7724, 1.56465, 0, 0, 0.704931, 0.709275, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100114, 987669, 0, -11237, -2215.04, 22.7048, 0.00562239, 0, 0, 0.00281119, 0.999996, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100115, 987669, 0, -11363, -2216.69, 23.2868, 4.62769, 0, 0, 0.736408, -0.676537, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100116, 987669, 0, -11211.1, -2142.23, 22.7061, 1.54501, 0, 0, 0.697931, 0.716165, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100117, 987669, 0, -11412.7, -2179.67, 23.2035, 3.0569, 0, 0, 0.999104, 0.0423318, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100118, 987669, 0, -11246.3, -2206.71, 22.7044, 4.68269, 0, 0, 0.71753, -0.696528, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100119, 987669, 0, -11074.7, -2221.24, 15.7904, 4.65363, 0, 0, 0.727574, -0.686029, 300, 360, 100, 1, 0, 0, 0, 10);
            REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100120, 987669, 0, -11209.2, -2130.9, 26.9735, 3.12996, 0, 0, 0.999983, 0.00581853, 300, 360, 100, 1, 0, 0, 0, 10);


        -- Loot Template
        DELETE FROM `gameobject_loot_template` WHERE `entry`=42910; -- To ensure duplicate entries are not added
        INSERT INTO `mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `patch_min`) VALUES (42910, 30256, 100, 0, 1);

    -- Fel Gem (Trade Soulshards for random buff OR debuff)
        -- Object
        REPLACE `mangos`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `flags`) VALUES (987670, 2, 327, 'Fel Gem', 4);

        -- Object Spawns
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100126, 19901, 0, -10810.1, -1979.05, 123.709, 0.880017, 0, 0, 0.425947, 0.904748, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100127, 987670, 0, -10810.1, -1979.05, 123.709, 0.880017, 0, 0, 0.425947, 0.904748, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100128, 19901, 0, -10879.9, -2144.29, 117.132, 1.86175, 0, 0, 0.802144, 0.597131, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100129, 987670, 0, -10879.9, -2144.29, 117.132, 1.86175, 0, 0, 0.802144, 0.597131, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100130, 19901, 0, -10950.3, -2157.19, 117.072, 6.15787, 0, 0, 0.0626151, -0.998038, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100131, 987670, 0, -10950.3, -2157.19, 117.072, 6.15787, 0, 0, 0.0626151, -0.998038, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100132, 19901, 0, -11115.3, -2080.41, 48.2955, 2.91809, 0, 0, 0.993762, 0.111518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100133, 987670, 0, -11115.3, -2080.41, 48.2955, 2.91809, 0, 0, 0.993762, 0.111518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100134, 19901, 0, -11216.1, -2015.8, 47.0986, 1.47688, 0, 0, 0.673137, 0.739518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100135, 987670, 0, -11216.1, -2015.8, 47.0986, 1.47688, 0, 0, 0.673137, 0.739518, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100136, 19901, 0, -11106.1, -1980.45, 47.0763, 3.91238, 0, 0, 0.926651, -0.375923, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100137, 987670, 0, -11106.1, -1980.45, 47.0763, 3.91238, 0, 0, 0.926651, -0.375923, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100138, 19901, 0, -10931, -1964.88, 116.156, 1.24593, 0, 0, 0.583447, 0.812151, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100139, 987670, 0, -10931, -1964.88, 116.156, 1.24593, 0, 0, 0.583447, 0.812151, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100140, 19901, 0, -10768.6, -1810.52, 124.555, 1.80671, 0, 0, 0.785407, 0.61898, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100141, 987670, 0, -10768.6, -1810.52, 124.555, 1.80671, 0, 0, 0.785407, 0.61898, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100142, 987670, 0, -11169.1, -2071.56, 48.3018, 3.08296, 0, 0, 0.99957, 0.029314, 960, 960, 100, 1, 0, 0, 0, 10);
        REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (4100143, 19901, 0, -11169.1, -2071.56, 48.3018, 3.08296, 0, 0, 0.99957, 0.029314, 960, 960, 100, 1, 0, 0, 0, 10);

    -- Quest
        -- Quest Template
            REPLACE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`, `CompleteScript`) VALUES (30267, 0, 41, 58, 62, 264, 1, 'Fel Gem', '', '', '', 'Play the game of luck?', '', '', '', '', '', 30208, 10, 0, 0, 0, 0, 0, 0, 10009);

        -- Quest Relation
            REPLACE `mangos`.`gameobject_questrelation` (`id`, `quest`) VALUES (987670, 30267);

        -- Quest Involved Relation
            REPLACE `mangos`.`gameobject_involvedrelation` (`id`, `quest`) VALUES (987670, 30267);

        -- quest_end_script (Cast spell on Player, then Despawn for 16m)
            DELETE FROM `quest_end_scripts` WHERE `id`=10009;
            INSERT INTO `quest_end_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
            (10009, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Gem: Despawn Object'),
            (10009, 1, 0, 15, 34185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Gem: Cast Spell on Player');


-- NPC for Karazhan Mementos
    -- Creature Template
        REPLACE INTO `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `type`, `unit_class`, `armor_multiplier`, `equipment_id`, `static_flags1`, `flags_extra`) VALUES (90099, 'Prospector Ariden', 'Explorers\' League', 16, 16, 55, 2, 1277, 1, 1, 7, 1, 2, 2917, 4718662, 2);

    -- Creature (Spawn)
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000128, 90099, 0, 0, 0, 0, 0, -10434.7, -2137.54, 90.7795, 3.41392, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

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
        REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES (2000132, 90100, 0, 0, 0, 0, 0, -11021.9, -2046.25, 40.7051, 0.619303, 25, 25, 5, 100, 100, 1, 0, 0, 0, 10);

    -- Creature Template
        REPLACE INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `totem_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (90100, 0, 'Scared Spirit', NULL, 60, 60, 10, 2, 0, 10481, 10481, 10481, 10481, 0, 0, 0, 0, 25, 25, 25, 25, 100, 0, 1, 1.14286, 20, 5, 0, 6, 0, 0, 1, 1, 2, 2, 1.25, 1, 0.14, 0, 2000, 2000, 0, 168, 168, 168, 168, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '16331', '', 1, 3, 0, 0, 0, 0, 0, 8413718, 0, 0, 0, 0, 0, '');


    -- Quest (escort)
        REPLACE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `CompleteEmote`, `OfferRewardEmote1`, `StartScript`) VALUES (30263, 41, 58, 0, 61, 2, 2, 'Scared Spirit Escort', 'Please help me! Im scared and lost and need to find my way back to Karazhan.', 'Escort the Scared Spirit back to Karazhan.', 'Thank you.', 'Please help me!', 'Escort the Scared Spirit back to Karazhan.', '', '', '', '', 6, 1, 21, 30263);
        
    -- Quest Relation
        REPLACE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90100, 30263);

    -- Quest Involved Relation
        REPLACE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90100, 30263);

    -- Start script for quest Scared Spirit Escort.
        DELETE FROM `quest_start_scripts` WHERE `id`=30263;
        INSERT INTO `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
        (30263, 0, 0, 61, 30263, 600, 0, 0, 0, 0, 0, 8, 0, 9000000, 1019, 9000000, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Start Scripted Map Event'),
        (30263, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Say Text'),
        (30263, 0, 2, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Remove Questgiver Flag'),
        (30263, 0, 4, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort: Scared Spirit - Start Waypoints');


    -- Fail script for quest Scared Spirit Escort.
        DELETE FROM `generic_scripts` WHERE `id`=9000000;
        INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
        (9000000, 0, 0, 70, 30263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort Failed: Player - Fail Quest'),
        (9000000, 7200, 0, 71, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scared Spirit Escort Failed: Scared Spirit - Respawn');

    -- Waypoint scripts for Scared Spirit.
        DELETE FROM `creature_movement_scripts` WHERE `id`=9000000;
        INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
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
