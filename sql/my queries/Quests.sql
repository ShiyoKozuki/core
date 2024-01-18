-- Quests

-- A Lack of Fear (Fear Ward Quest)
UPDATE mangos . quest_template 
SET RequiredRaces = 0
WHERE entry IN(5641, 5645, 5647);

-- Blasted Lands
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8716, 30007, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8717, 30007, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8718, 30007, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12396, 30007, 20);


INSERT IGNORE `mangos`.`faction` (`id`, `build`, `reputation_list_id`, `base_rep_race_mask1`, `base_rep_race_mask2`, `base_rep_race_mask3`, `base_rep_value1`, `base_rep_value2`, `base_rep_value3`, `reputation_flags1`, `reputation_flags2`, `name`, `description`) VALUES (476, 5302, 55, 73, 178, 4, 150, -42000, 500, 16, 22, 'Nethergarde Defenders', 'Stout defenders of the Dark Portal.');
UPDATE `mangos`.`creature_template` SET `faction`=476 WHERE  `entry`=5385 AND `patch`=0;
INSERT IGNORE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30000, 0, 4, 58, 60, 264, 1, 'Demon Bounty', '', '', 'Please bring me more demon cores.', 'Please bring me more demon cores.', '', '', '', '', '', 30007, 5, 476, 150, 390, 25, 1, 1);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30000);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30000);
INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30001, 4, 58, 56, 5, 8, 1, -5542, 'Legion Clean Up', 'Thin the lines of the Legion and help us push them back!', 'Kill 20 Felguard Elites, 10 Doomguard Commanders, and 3 Dreadlords then return to Watcher Mahar Ba.', 'Well done $N. Maybe we will live for another day.', 'The Legion must fall!', '', '', '', '', '', 8717, 12396, 8716, 20, 5, 5, 476, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30001);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30001);
