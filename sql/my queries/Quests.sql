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
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `hostile_mask`, `friend_faction1`) VALUES (1678, 4222, 476, 4, 471);
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1679, 4222, 476, 2081, 3, 2, 12, 471);
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1680, 4222, 476, 33, 2, 2, 4, 471);

UPDATE `mangos`.`creature_template` SET `faction`=476 WHERE  `entry`=5385 AND `patch`=0;
INSERT IGNORE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30000, 0, 4, 58, 62, 264, 1, 'Demon Bounty', '', '', 'Please bring me more demon cores.', 'Please bring me more demon cores.', '', '', '', '', '', 30007, 5, 476, 150, 390, 25, 1, 1);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30000);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30000);
INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30001, 4, 58, 62, 5, 8, 1, -5542, 'Legion Clean Up', 'Thin the lines of the Legion and help us push them back!', 'Kill 20 Felguard Elites, 10 Doomguard Commanders, and 3 Dreadlords then return to Watcher Mahar Ba.', 'Well done $N. Maybe we will live for another day.', 'The Legion must fall!', '', '', '', '', '', 8717, 12396, 8716, 20, 5, 5, 476, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30001);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30001);
INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30002, 4, 58, 62, 5, 8, 1, -5542, 'Manahound Round Up', 'Clear out Mana Hounds.', 'Annihilate 50 Mana Hounds.', 'Well done $N. Maybe we will live for another day.', 'The Legion must fall!', '', '', '', '', '', 8718, 50, 476, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (5385, 30002);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (5385, 30002);

-- Deadwind Pass
INSERT IGNORE `mangos`.`faction` (`id`, `build`, `reputation_list_id`, `base_rep_race_mask1`, `base_rep_race_mask2`, `base_rep_race_mask3`, `base_rep_value1`, `base_rep_value2`, `base_rep_value3`, `reputation_flags1`, `reputation_flags2`, `name`, `description`) VALUES (477, 5302, 56, 73, 178, 4, 150, -42000, 500, 16, 22, 'Caretakers of Karazhan', 'Medivh\'s personal caretakers.');
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `hostile_mask`, `friend_faction1`) VALUES (1681, 4222, 477, 4, 471);
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1682, 4222, 477, 2081, 3, 2, 12, 471);
INSERT IGNORE `mangos`.`faction_template` (`id`, `build`, `faction_id`, `faction_flags`, `our_mask`, `friendly_mask`, `hostile_mask`, `friend_faction1`) VALUES (1683, 4222, 477, 33, 2, 2, 4, 471);

INSERT IGNORE `mangos`.`creature_template` (`entry`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `display_id1`, `display_probability1`, `display_total_probability`, `health_multiplier`, `damage_multiplier`, `base_attack_time`, `fire_res`, `arcane_res`, `unit_class`, `unit_flags`, `type`, `ai_name`, `equipment_id`, `flags_extra`) VALUES (90035, 'Maximillian Arturo', 'Caretaker of Karazhan', 58, 58, 477, 2, 1724, 1, 1, 3, 0.8, 1000, 100, 100, 1, 4096, 7, 'EventAI', 264, 524296);
INSERT IGNORE `mangos`.`creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`) VALUES (2000037, 90035, 0, -10451.66, -1720.62, 85.05, 1.8897, 0);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30003, 41, 58, 60, 5, 8, 1, -5542, 'Clear the Crypts', 'Rid the Crypts underneath Karazhan of Damned Souls, and Wailing Spectres.', 'Kill 25 Damned Souls and 25 Wailing Spectres.', 'Well done $N. Now the ghostly presence should be lowered.', 'Karazhan is all I care about.', '', '', '', '', '', 12378, 12377, 25, 25, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30003);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30003);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30004, 0, 41, 58, 62, 264, 1, 'Ectoplasm Collection', '', '', 'Please bring me Ghost Ectoplasm from the Unliving near Karazhan.', 'Please bring me Ghost Ectoplasm from the Unliving near Karazhan.', '', '', '', '', '', 30016, 5, 477, 150, 390, 25, 1, 1);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30004);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30004);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12379, 30016, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12380, 30016, 20);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30005, 41, 58, 60, 5, 8, 1, -5542, 'Exorcise the Unliving', 'Kill the Unliving Residents and Unliving Caretakers near Karazhan.', 'Kill 25 Unliving Residents and 25 Unliving Caretakers.', 'Well done $N. Now the ghostly presence should be lowered.', 'Karazhan is all I care about.', '', '', '', '', '', 12380, 12379, 25, 25, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30005);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30005);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30006, 0, 41, 58, 62, 264, 1, 'Shade Dust', '', '', 'Bring me Shade Dust from the Restless Shades in the crypts underneath Karazhan.', 'Please bring me Shade Dust from the Restless Shades in the crypts underneath Karazhan.', '', '', '', '', '', 30017, 25, 477, 150, 390, 25, 1, 1);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30006);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30006);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7370, 30017, 100);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `QuestFlags`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemCount1`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `IncompleteEmote`, `CompleteEmote`) VALUES (30007, 0, 41, 58, 62, 264, 1, 'Ogre Beads', '', '', 'Bring me Ogre Beads from the Deadwind Ogres ', 'Bring me Ogre Beads from the Deadwind Ogres.', '', '', '', '', '', 30018, 10, 477, 150, 390, 25, 1, 1);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30007);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30007);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7372, 30018, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7371, 30018, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7379, 30018, 20);
INSERT IGNORE `mangos`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7369, 30018, 20);

INSERT IGNORE `mangos`.`quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `SuggestedPlayers`, `QuestFlags`, `SpecialFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `RewRepFaction1`, `RewRepValue1`, `RewXP`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`) VALUES (30008, 41, 58, 60, 5, 8, 1, -5542, 'Ogre Round Up', 'Kill 20 Deadwind Warlocks, 10 Deadwind Maulers and 20 Deadwind Ogre Mages.', 'Kill 20 Deadwind Warlocks, 10 Deadwind Maulers and 20 Deadwind Ogre Mages.', 'Well done $N. Those Ogres must be pushed out of Deadwind Pass.', 'Karazhan is all I care about.', '', '', '', '', '', 7372, 7371, 7379, 20, 10, 20, 477, 250, 5800, 1, 1, 1, 5, 5, 1, 1, 5);
INSERT IGNORE `mangos`.`creature_questrelation` (`id`, `quest`) VALUES (90035, 30008);
INSERT IGNORE `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES (90035, 30008);
