-- Gear
-- Delete the WDB folder in your client directory.

-- ITEM_MOD_MANA                     = 0,
-- ITEM_MOD_HEALTH                   = 1,
-- ITEM_MOD_AGILITY                  = 3,
-- ITEM_MOD_STRENGTH                 = 4,
-- ITEM_MOD_INTELLECT                = 5,
-- ITEM_MOD_SPIRIT                   = 6,
-- ITEM_MOD_STAMINA                  = 7,

-- spellid_1 = 9397, -- +7 Spell damage
-- spellid_1 = 16431, -- Bone Armor (Encases the caster in bone armor, absorbing 1388 to 1612 damage for 1 min. While the armor holds, spellcasting cannot be interrupted by Physical attacks)
-- Chance on hit = spelltrigger_1 = 2
-- spellid_1 = 9344 -- +15 Spell Damage

-- DPS Calc: https://docs.google.com/spreadsheets/d/1R3A3AQiqE0aqhn4C9zdLSVr_wrecjtrpxPgg3UZ66y4/edit?gid=0#gid=0

-- Preview rows before updating
-- SELECT * FROM mangos.creature_template 
-- WHERE armor_multiplier < 2.0 AND armor_multiplier > 0;

-- dmg_type
-- 0 	Physical
-- 1 	Holy
-- 2 	Fire
-- 3 	Nature
-- 4 	Frost
-- 5 	Shadow
-- 6 	Arcane 

-- ItemPrototype.h for more enums
-- INVTYPE_NON_EQUIP                           = 0,
-- INVTYPE_HEAD                                = 1,
-- INVTYPE_NECK                                = 2,
-- INVTYPE_SHOULDERS                           = 3,
-- INVTYPE_BODY                                = 4,
-- INVTYPE_CHEST                               = 5,
-- INVTYPE_WAIST                               = 6,
-- INVTYPE_LEGS                                = 7,
-- INVTYPE_FEET                                = 8,
-- INVTYPE_WRISTS                              = 9,
-- INVTYPE_HANDS                               = 10,
-- INVTYPE_FINGER                              = 11,
-- INVTYPE_TRINKET                             = 12,
-- INVTYPE_WEAPON                              = 13,
-- INVTYPE_SHIELD                              = 14,
-- INVTYPE_RANGED                              = 15,
-- INVTYPE_CLOAK                               = 16,
-- INVTYPE_2HWEAPON                            = 17,
-- INVTYPE_BAG                                 = 18,
-- INVTYPE_TABARD                              = 19,
-- INVTYPE_ROBE                                = 20,
-- INVTYPE_WEAPONMAINHAND                      = 21,
-- INVTYPE_WEAPONOFFHAND                       = 22,
-- INVTYPE_HOLDABLE                            = 23,
-- INVTYPE_AMMO                                = 24,
-- INVTYPE_THROWN                              = 25,
-- INVTYPE_RANGEDRIGHT                         = 26,
-- INVTYPE_QUIVER                              = 27,
-- INVTYPE_RELIC                               = 28

-- ITEM_SUBCLASS_WEAPON_AXE                    = 0,
-- ITEM_SUBCLASS_WEAPON_AXE2                   = 1,
-- ITEM_SUBCLASS_WEAPON_BOW                    = 2,
-- ITEM_SUBCLASS_WEAPON_GUN                    = 3,
-- ITEM_SUBCLASS_WEAPON_MACE                   = 4,
-- ITEM_SUBCLASS_WEAPON_MACE2                  = 5,
-- ITEM_SUBCLASS_WEAPON_POLEARM                = 6,
-- ITEM_SUBCLASS_WEAPON_SWORD                  = 7,
-- ITEM_SUBCLASS_WEAPON_SWORD2                 = 8,
-- ITEM_SUBCLASS_WEAPON_obsolete               = 9,
-- ITEM_SUBCLASS_WEAPON_STAFF                  = 10,
-- ITEM_SUBCLASS_WEAPON_EXOTIC                 = 11,
-- ITEM_SUBCLASS_WEAPON_EXOTIC2                = 12,
-- ITEM_SUBCLASS_WEAPON_FIST                   = 13,
-- ITEM_SUBCLASS_WEAPON_MISC                   = 14,
-- ITEM_SUBCLASS_WEAPON_DAGGER                 = 15,
-- ITEM_SUBCLASS_WEAPON_THROWN                 = 16,
-- ITEM_SUBCLASS_WEAPON_SPEAR                  = 17,
-- ITEM_SUBCLASS_WEAPON_CROSSBOW               = 18,
-- ITEM_SUBCLASS_WEAPON_WAND                   = 19,
-- ITEM_SUBCLASS_WEAPON_FISHING_POLE           = 20


-- New Custom Items
DELETE FROM `mangos`.`item_template` WHERE  `entry`=30104 AND `patch`=0;
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30000, 4, 4, 'Sentinel\'s Ring', 9832, 3, 32768, 750000, 18750, 11, -1, -1, 63, 58, 1, 4, 12, 3, 11, 7, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 4);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30001, 4, 4, 'Battlemage\'s Ring', 28812, 3, 32768, 750000, 18750, 11, -1, -1, 63, 58, 1, 7, 8, 0, 9343, 1, -1, -1, 21619, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 4);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `flags`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30002, 4, 4, 1, 'Cleric\'s Cape', 32067, 3, 32768, 854920, 17098, 16, -1, -1, 63, 58, 1, 7, 11, 6, 8, 0, 45, 9315, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 7);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30003, 8, 4, 7, 'Tome of Battle', 34961, 3, 66041, 13208, 28, 32767, -1, 57, 52, 1, 0, 27850, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 48);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30004, 8, 4, 8, 'Idol of Battle', 34953, 4, 246770, 49354, 28, 32767, -1, 78, 60, 1, 0, 27846, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `range_mod`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30005, 5, 2, 19, 'Wand of Arathor', 32774, 4, 517308, 103461, 26, -1, -1, 75, 60, 5, 12, 7, 7, 1600, 100, 107, 199, 2, 9396, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 1, 2, 75, 65);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30006, 2, 16, 'Star of Arathor', 20772, 2, 800, 80, 25, -1, -1, 37, 200, 2300, 100, 4, 28, 53, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30007, 2, 12, 'Demon Core', 8560, 1, 2048, -1, -1, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30008, 9, 4, 1, 'Belt of Fel Energy', 35120, 3, 115218, 15043, 6, -1, -1, 68, 58, 5, 7, 7, 6, 0, 54, 9346, 1, -1, -1, 25975, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 7, 30, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `frost_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30009, 9, 4, 4, 'Demonic Gauntlets', 35118, 3, 124682, 14936, 10, -1, -1, 68, 58, 4, 19, 5, 19, 0, 441, 5, 5, 7597, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 6, 45, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30010, 9, 4, 1, 'Cape of the Legion', 35115, 3, 111207, 22241, 16, -1, -1, 68, 58, 5, 9, 7, 9, 0, 48, 9335, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 7, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30011, 2, 7, 'Fel Saber', 19997, 4, 1235040, 87008, 21, -1, -1, 65, 60, 1, 2900, 96, 178, 18205, 2, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 3, 105, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30012, 5, 2, 4, 'Corrupted Mace', 32588, 4, 1241460, 88292, 21, -1, -1, 66, 60, 1, 5, 9, 7, 6, 2400, 64.4, 134.4, 18035, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 3, 105, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `container_slots`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `material`) VALUES (30013, 1, 1, 'Bag of the Legion', 20342, 2, 2500000, 20000, 18, -1, -1, 60, 16, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 8);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30014, 5, 4, 4, 'Fel-infused Legplates', 32756, 3, 144352, 28870, 7, -1, -1, 68, 60, 476, 6, 5, 13, 7, 6, 4, 13, 0, 618, 9346, 1, -1, -1, 7597, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30015, 5, 4, 3, 'Fel Leggings', 32753, 3, 211655, 42331, 7, -1, -1, 68, 60, 476, 6, 5, 6, 7, 6, 0, 348, 18052, 1, -1, -1, 18382, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 90, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30016, 2, 12, 'Ghost Ectoplasm', 20614, 1, 2048, -1, -1, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30017, 2, 12, 'Shade Essence', 20798, 1, 2048, -1, -1, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30018, 2, 12, 'Ogre Beads', 1399, 1, 2048, -1, -1, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `block`, `armor`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30019, 4, 6, 'Karazhan Protector', 20971, 3, 183600, 36720, 14, -1, -1, 63, 5, 7, 6, 7, 0, 40, 2153, 5, 5, 9318, 1, -1, -1, 21363, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 4, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30020, 3, 4, 'Ring of the Prophet', 31657, 4, 641024, 60256, 11, -1, -1, 71, 60, 5, 7, 7, 7, 0, 14254, 1, -1, -1, 23727, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 3, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30021, 2, 4, 3, 'Bracers of the Tirisfal', 31280, 4, 162290, 32458, 9, -1, -1, 71, 60, 3, 7, 7, 5, 0, 198, 15464, 1, -1, -1, 9330, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 50, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30022, 3, 4, 'Lost Karazhan Emblem', 35442, 4, 665132, 16283, 12, -1, -1, 51, 0, 15808, 1, -1, -1, 15465, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 4, 9);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30023, 4, 1, 'Cape of the Tirisfal', 24013, 3, 82494, 16498, 16, -1, -1, 63, 58, 3, 5, 0, 45, 9331, 1, -1, -1, 15907, 1, -1, -1, 15873, 1, -1, -1, -1, -1, 0, 0, 1, 7, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `delay`, `armor`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30024, 2, 4, 3, 'Helm of the Tirisfal', 31268, 4, 628980, 25796, 1, 2047, 255, 62, 5, 14, 6, 12, 7, 12, 0, 297, 10, 10, 18384, 1, -1, -1, 14798, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 70, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30025, 4, 3, 'Thundering Mail', 25754, 3, 103212, 20642, 5, -1, -1, 54, 49, 6, 11, 7, 5, 0, 322, 14047, 1, -1, -1, 18384, 1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 5, 120, 47);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30026, 7, 4, 4, 'Mantle of the Tirisfal', 33810, 3, 178158, 35631, 3, 32767, -1, 72, 60, 4, 12, 5, 12, 0, 510, 15465, 1, -1, -1, 9417, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 6, 100, 65);
REPLACE `mangos`.`item_template` (`entry`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellid_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30027, 'Tirisfal Whiskey', 18119, 1, 1600, 400, -1, -1, 1, 10, 0, 25804, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 3);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `armor`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30028, 6, 4, 'Frostsaber Ring of Protection', 9823, 4, 656412, 89103, 11, -1, -1, 73, 60, 1, 0, 200, 7, 7, 7, 7, 7, 7517, 1, -1, -1, 15465, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 3, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `shadow_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30029, 5, 4, 'Peacock Charm', 32297, 4, 694513, 48628, 2, -1, -1, 68, 60, 0, -10, 7597, 1, -1, -1, 15465, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 3, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `delay`, `armor`, `frost_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30030, 5, 4, 2, 'Frostsaber Eyepatch', 21701, 4, 354680, 30936, 1, -1, -1, 65, 60, 1, 7, 13, 0, 300, 15, 15465, 1, -1, -1, 15810, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 8, 70, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `frost_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30031, 5, 4, 4, 'Frostsaber Sabatons', 32758, 4, 327856, 21571, 8, -1, -1, 68, 60, 5, 17, 7, 17, 0, 486, 10, 18379, 1, -1, -1, 9408, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 65, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30032, 5, 2, 2, 'Frostsaber Hunting Bow', 32571, 4, 1283916, 56783, 15, -1, -1, 68, 60, 3, 10, 7, 4, 2800, 100, 2, 80, 135, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 1, 2, 75, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30033, 5, 2, 6, 'Frostsaber Fork', 32446, 3, 456382, 91276, 17, -1, -1, 68, 60, 7, 7, 3500, 163, 246, 26153, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 1, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `frost_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30034, 5, 2, 10, 'Frostsaber Staff', 32613, 4, 539549, 107909, 17, -1, -1, 66, 60, 5, 10, 7, 10, 3300, 143.55, 226.55, 10, 23729, 1, -1, -1, 18056, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 2, 120, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `delay`, `frost_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30035, 5, 4, 'Frostsaber Eye', 32335, 3, 176815, 44203, 2, -1, -1, 66, 60, 1, 5, 6, 6, 6, 7, 5, 0, 5, 18031, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 3, 65);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `frost_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `disenchant_id`) VALUES (30036, 5, 4, 'Frostsaber Tooth Bag', 32344, 3, 154512, 63628, 23, -1, -1, 66, 60, 1, 0, 5, 14054, 1, -1, -1, 23727, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 7, 7, 65);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30037, 2, 13, 'Protectors Claw', 23270, 3, 11619, 30656, 13, -1, -1, 51, 18, 2700, 28, 53, 9140, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 7, 65, 47);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30038, 2, 13, 'Protectors Claw', 23270, 3, 32784, 30656, 13, -1, -1, 51, 28, 2700, 40, 75, 9141, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 7, 65, 47);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30039, 2, 13, 'Protectors Claw', 23270, 3, 71548, 30656, 13, -1, -1, 51, 38, 2700, 55, 103, 9142, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 7, 65, 47);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30040, 2, 13, 'Protectors Claw', 23270, 3, 144705, 30656, 13, -1, -1, 51, 48, 2700, 66, 124, 9331, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 7, 65, 47);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30041, 2, 13, 'Protectors Claw', 23270, 3, 247162, 30656, 13, -1, -1, 51, 58, 2700, 78, 146, 9336, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 7, 65, 47);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `container_slots`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `material`) VALUES (30042, 1, 1, 'Shiyo\'s Bank Bag', 20342, 5, 32768, 2500000, 20000, 18, -1, -1, 60, 0, 7, 0, 36, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 8);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30043, 2, 12, 'Ooze Ichor', 6690, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30044, 2, 12, 'Dustwallow Crocolisk Skin', 3124, 1, 0, -1, -1, 1, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30045, 2, 12, 'Dustwallow Spider Venom', 6690, 1, 0, -1, -1, 1, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30046, 2, 12, 'Bloodfen Claw', 3146, 1, 2048, -1, -1, 1, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30047, 2, 10, 'Wildhammer Staff', 20379, 4, 153296, 25549, 17, -1, -1, 51, 47, 471, 6, 6, 15, 5, 12, 3000, 106, 160, 18049, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 2, 90, 41);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30048, 2, 1, 'Wildhammer Waraxe', 28719, 4, 153296, 25549, 17, -1, -1, 51, 47, 471, 6, 3700, 149, 225, 13665, 1, -1, -1, 7597, 1, -1, -1, 9336, 1, -1, -1, -1, -1, 0, 0, 1, 1, 1, 100, 48);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30049, 9, 2, 8, 'Wildhammer Blade', 30853, 4, 153296, 25549, 17, -1, -1, 51, 47, 471, 6, 3200, 135, 185, 7597, 1, -1, -1, 14052, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 1, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30050, 2, 7, 'Wildhammer Sword', 21554, 4, 75532, 12588, 21, -1, -1, 51, 47, 471, 6, 2800, 81, 151, 8191, 2, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 3, 90, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30051, 2, 2, 15, 'Wildhammer Dagger', 20574, 4, 75532, 12588, 13, -1, -1, 51, 47, 471, 6, 1800, 51, 96, 9336, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 3, 65, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30053, 2, 2, 6, 'Wildhammer Spear', 31174, 4, 153296, 25549, 17, -1, -1, 51, 47, 471, 6, 3400, 137, 206, 7597, 1, -1, -1, 15814, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 2, 100, 48);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30054, 2, 4, 'Wildhammer Mace', 21956, 4, 75532, 12588, 21, -1, -1, 51, 47, 471, 6, 2700, 71, 132, 9317, 1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 3, 90, 48);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30055, 8, 2, 18, 'Wildhammer Crossbow', 22929, 4, 153296, 25549, 26, -1, -1, 51, 47, 471, 6, 3, 3, 3200, 100, 2, 77, 117, 15464, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 1, 2, 75, 48);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30056, 2, 12, 'Lost One Artifact', 20784, 1, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30057, 2, 12, 'Gordunni Artifact', 26772, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30058, 2, 12, 'Gordunni Orb', 16209, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30059, 2, 7, 'Wildhammer Spellblade', 21554, 4, 75532, 12588, 21, -1, -1, 51, 47, 471, 6, 1800, 58, 88, 18049, 2, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 1, 3, 90, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30060, 2, 12, 'Fel Rock', 6504, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30061, 2, 12, 'Elven Keepsake', 28863, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30062, 2, 12, 'Moose Antler', 7999, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30063, 2, 12, 'Hippogryph Beak', 6633, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30064, 2, 12, 'Spitelash Spear', 34794, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30065, 2, 12, 'Spitelash Mace', 5226, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30066, 2, 12, 'Mountain Giant Moss', 7337, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30067, 2, 12, 'Highborne Amulet', 1399, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30068, 2, 12, 'Fel Infused Gem', 7393, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30069, 2, 12, 'Ogre Treasure', 7393, 1, 2048, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30070, 2, 12, 'Uldum Stone', 7218, 1, 2048, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30071, 2, 12, 'Dreadmaul Orb', 16209, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30072, 2, 12, 'Fel Artifact', 19316, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30073, 2, 12, 'Shadowsworn Pendant', 15420, 1, 2048, -1, -1, 1, 150, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30074, 2, 7, 'Whirlwind Shortsword', 20154, 4, 91277, 18255, 13, 1, -1, 44, 4, 7, 7, 7, 2200, 67, 87, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 3, 90, 45);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30075, 2, 12, 'Titan Artifact', 7148, 1, 2048, -1, -1, 1, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30076, 2, 12, 'Blackrock Head', 3914, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30077, 2, 12, 'Blackrock Medal', 20219, 1, 0, -1, -1, 1, 12, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellid_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30078, 9, 4, 'Self Immolation Device', 21583, 2, 28000, 7000, 12, -1, -1, 61, 0, 2601, 300000, 1141, 10000, -1, -1, -1, -1, -1, -1, 0, 0, 1, 8, 11);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30079, 9, 4, 'Shadrine\'s Magical Orb', 30690, 2, 28000, 7000, 12, -1, -1, 61, 0, 23727, 1, 0, 0, 9395, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 8, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `random_property`, `max_durability`, `disenchant_id`) VALUES (30080, 4, 4, 'Pauldrons of the Scourge', 26342, 2, 70876, 14175, 3, -1, -1, 63, 58, 0, 448, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 1206, 70, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30081, 4, 4, 'Breastplate of the Scourge', 19844, 2, 101850, 20370, 5, -1, -1, 65, 60, 0, 615, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 115, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30082, 4, 4, 'Legplates of the Scourge', 19843, 2, 98854, 19770, 7, -1, -1, 64, 59, 0, 530, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 85, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30083, 4, 4, 'Greaves of the Scourge', 26341, 2, 66239, 13247, 8, -1, -1, 62, 57, 0, 404, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 55, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30084, 4, 4, 'Gauntlets of the Scourge', 26339, 2, 44329, 8865, 10, -1, -1, 62, 57, 0, 368, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 40, 11);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `delay`, `armor`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30085, 4, 4, 'Bascinet of the Scourge', 26257, 2, 70344, 14068, 1, -1, -1, 63, 58, 0, 485, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 2, 6, 70, 11);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30086, 2, 12, 'Abomination Cleaver', 8482, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30087, 2, 12, 'Frostsaber Fang', 7886, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30088, 2, 12, 'Dredge Crusher Venom', 6690, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `armor`, `name`, `display_id`, `quality`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellid_3`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30089, 7, 4, 150, 'Marauder\'s Ring', 33855, 3, 11, 1, -1, 65, 60, 1, 7, 20, 0, 15464, 1, -1, -1, 9336, 1, -1, -1, 9174, 600000, 1141, 15000, -1, 0, 0, 1, 4, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30090, 2, 12, 'Flamescale Heart', 4826, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30091, 2, 12, 'Frostmaul Eye', 35400, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30092, 2, 12, 'Gordok Artifact', 32745, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `armor`, `name`, `display_id`, `quality`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `stat_type1`, `stat_value1`, `delay`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellid_3`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30093, 7, 4, 200, 'Marauder\'s Ring +1', 33855, 4, 11, 1, -1, 71, 60, 1, 7, 25, 0, 15464, 1, -1, -1, 14049, 1, -1, -1, 9174, 300000, 1141, 15000, -1, 0, 0, 1, 4, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30094, 2, 12, 'Green Scale', 21363, 1, 0, -1, -1, 1, 30, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `name`, `description`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `start_quest`, `material`) VALUES (30095, 12, 'Orc Documents', 'Documents with instructions for the Orcs.', 7629, 1, 2048, 2047, 255, 15, 40, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 30228, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30096, 2, 6, 'Headhunter\'s Spear', 28790, 3, 109167, 21833, 17, -1, -1, 44, 6, 20, 0, 0, 2200, 75, 115, 7597, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 2, 100, 45);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`) VALUES (30097, 2, 13, 'Gryphon Claws', 15720, 3, 19792, 3958, 13, -1, -1, 34, 2700, 75, 115, 18206, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 7, 55);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30098, 4, 4, 'Gryphon Plate Mail', 27899, 3, 46227, 9245, 5, -1, -1, 50, 0, 5, 15, 7, 15, 0, 480, 21515, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 6, 115, 8);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30099, 4, 3, 'Gryphon Breastplate', 25932, 3, 49654, 9930, 5, -1, -1, 45, 0, 5, 15, 6, 15, 0, 248, 17988, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 100, 7);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `max_durability`, `disenchant_id`) VALUES (30100, 4, 2, 'Gryphon Vest', 27914, 3, 45679, 9135, 5, -1, -1, 47, 0, 5, 15, 6, 15, 0, 126, 17988, 1, -1, -1, 17823, 1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 8, 85, 8);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30101, 2, 10, 'Troll Hunter\'s Stick', 20329, 3, 72885, 14577, 17, -1, -1, 38, 5, 10, 6, 10, 2800, 75, 113, 14248, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 2, 100, 44);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30102, 2, 12, 'Living Sample', 3152, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `class`, `name`, `description`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `max_count`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `start_quest`, `material`) VALUES (30103, 12, 'Strange Sample', 'A sample of ooze from a large ooze in the Weeping Cave.', 33203, 1, 2048, 2047, 255, 15, 50, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 30234, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30104, 8, 2, 10, 'Himmel Stock', 20384, 3, 311350, 62270, 17, -1, -1, 61, 5, 10, 6, 10, 3400, 94, 142, 9346, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 2, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30105, 2, 6, 'Cletine', 22209, 3, 166732, 33346, 17, -1, -1, 49, 2200, 83, 123, 14052, 1, -1, -1, 7597, 1, -1, -1, 25669, 2, -1, -1, -1, -1, 0, 0, 1, 1, 2, 100, 46);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30106, 2, 13, 'Cross-Counters', 3007, 3, 18316, 3663, 13, -1, -1, 26, 0, 3, 12, 4, 12, 2500, 72, 112, 13532, 2, 10, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 7, 60, 42);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30108, 2, 13, 'Tactician Magician\'s Hooks', 23742, 3, 254256, 50851, 13, -1, -1, 60, 2500, 60, 100, 6306, 2, 5, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 7, 65, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30109, 2, 'Viking Axe', 8489, 3, 58427, 11685, 13, -1, -1, 39, 3, 8, 4, 8, 2600, 63, 103, 16928, 2, 10, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 3, 90, 44);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `delay`, `dmg_min1`, `dmg_max1`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30110, 8, 2, 15, 'Hornetneedle', 24775, 3, 268060, 53612, 13, -1, -1, 62, 3, 9, 1800, 42, 72, 18797, 2, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 3, 65, 49);
REPLACE `mangos`.`item_template` (`entry`, `class`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `max_count`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `disenchant_id`) VALUES (30111, 4, 'Woodsman Ring', 9834, 3, 17235, 4308, 11, -1, -1, 35, 1, 3, 7, 4, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 5, 1, 43);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `delay`, `block`, `armor`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30112, 4, 6, 'Heater Shield', 27339, 3, 56171, 11234, 14, -1, -1, 46, 7, 10, 0, 21, 1436, 7, 7, 7, 7, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 4, 85, 28);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `stat_type1`, `stat_value1`, `delay`, `armor`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `disenchant_id`) VALUES (30113, 4, 1, 'Cheviot Cape', 26228, 3, 37341, 7468, 16, -1, -1, 51, 7, 5, 0, 33, 20732, 1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 7, 9);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `delay`, `dmg_min1`, `dmg_max1`, `fire_res`, `spellid_1`, `spelltrigger_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30114, 2, 5, 'Wildhammer Bludgeoner', 28677, 4, 153296, 25549, 17, -1, -1, 50, 45, 471, 6, 4, 20, 5, 20, 2200, 85, 135, 0, 18049, 1, -1, -1, 20667, 2, 15, -1, -1, -1, -1, -1, -1, 0, 0, 1, 2, 1, 100, 46);
REPLACE `mangos`.`item_template` (`entry`, `class`, `subclass`, `name`, `display_id`, `quality`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_reputation_faction`, `required_reputation_rank`, `stat_type1`, `stat_value1`, `delay`, `block`, `armor`, `nature_res`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`, `sheath`, `max_durability`, `disenchant_id`) VALUES (30115, 4, 6, 'Wildhammer Shield', 22831, 4, 75532, 12588, 14, -1, -1, 63, 471, 6, 7, 20, 0, 40, 2153, 25, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 1, 4, 100, 49);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30116, 2, 12, 'Winterfall Head', 3917, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30117, 2, 12, 'Fire Dragon Essence', 21583, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30118, 2, 12, 'Wind Dragon Essence', 13687, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30119, 2, 12, 'Earth Dragon Essence', 8560, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE `mangos`.`item_template` (`entry`, `patch`, `class`, `name`, `display_id`, `quality`, `flags`, `allowable_class`, `allowable_race`, `item_level`, `stackable`, `delay`, `spellcooldown_1`, `spellcategorycooldown_1`, `spellcooldown_2`, `spellcategorycooldown_2`, `spellcooldown_3`, `spellcategorycooldown_3`, `spellcooldown_4`, `spellcategorycooldown_4`, `spellcooldown_5`, `spellcategorycooldown_5`, `bonding`, `material`) VALUES (30120, 2, 12, 'Frost Dragon Essence', 8025, 1, 0, -1, -1, 1, 20, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 4, -1);
REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`) VALUES (30121, 7, 4, 0, 'Geomancer\'s Ring', '', 31657, 3, 0, 1, 0, 0, 11, 64, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 10, 4, 10, 5, 10, 6, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 0, 0, 0, 600000, 0, -1, 9346, 1, 0, 0, -1, 0, -1, 21363, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 1);
REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`) VALUES (30122, 7, 4, 0, 'Geomancer\'s Ring +1', '', 31657, 4, 0, 1, 0, 0, 11, 64, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 12, 4, 12, 5, 12, 6, 12, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 0, 0, 0, 600000, 0, -1, 14799, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 1);
REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`) VALUES (30123, 7, 4, 0, 'Geomancer\'s Ring +2', '', 31657, 4, 0, 1, 0, 0, 11, 64, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 14, 4, 14, 5, 14, 6, 14, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10058, 0, 0, 0, 600000, 0, -1, 15714, 1, 0, 0, -1, 0, -1, 21364, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 1);

-- NEXT 30124

-- flags 2048 = lootable by anyone

-- Vendor Prices

-- Sophie Klein (Custom Azshara vendor)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90041, 8766, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90041, 8952, 0);

-- High level Fish (5s+)
UPDATE mangos . item_template SET sell_price = 530 WHERE entry = 13758;
UPDATE mangos . item_template SET sell_price = 515 WHERE entry = 13760;
UPDATE mangos . item_template SET sell_price = 575 WHERE entry = 13754;
UPDATE mangos . item_template SET sell_price = 595 WHERE entry = 13756;
UPDATE mangos . item_template SET sell_price = 605 WHERE entry = 13889;
UPDATE mangos . item_template SET sell_price = 635 WHERE entry = 13888;
UPDATE mangos . item_template SET sell_price = 625 WHERE entry = 13893;
UPDATE mangos . item_template SET sell_price = 500 WHERE entry = 13422;
UPDATE mangos . item_template SET sell_price = 525 WHERE entry = 13755;

-- T4 Scroll buy prices
UPDATE mangos.item_template
SET buy_price = 2000
WHERE entry IN (10310, 10309, 10307, 10308, 10305);

-- Vendors

-- Reagent Vendors
INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (3323, 1307, 1351, 16015, 3335, 4878, 2805, 1257, 3351, 3490, 4083, 8361, 5151, 3562, 12784, 12795, 13476, 1275, 5110, 4575, 983, 958, 4562, 12096, 1308, 3500, 3700, 10364, 12097, 1463, 1673, 3970, 5139, 3542, 4220, 14739, 15175) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421, 16896, 10310, 10309, 10307, 10308, 10305);

-- Silverwing Rep Vendor (WSG)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30000, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30001, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30002, 159);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30037, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30038, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30039, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30040, 160);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (14753, 30041, 160);

-- Timbermaw Rep
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1155700, 18260, 1, 7200);

-- Thorium Brotherhood rep
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (12944, 20729, 131);


INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (14753) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);


-- The League of Arathor Rep Vendor (AB)
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30003, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30004, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30005, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 30006, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20056, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20044, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20051, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20120, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20122, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20119, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (15127, 20118, 0);

INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (15127) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

-- Stormpike Guard (AV)
INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (13216) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

INSERT IGNORE npc_vendor(entry, item)
SELECT creature_template.entry, item_template.entry
FROM (SELECT DISTINCT entry FROM creature_template) creature_template
JOIN (SELECT DISTINCT entry FROM item_template) item_template
WHERE creature_template.entry IN (13217) AND item_template.entry IN (5512, 5511, 5509, 5510, 9421);

-- Shaman Trainer (Stormwind)
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5175, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5176, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5177, 0, 0);
INSERT IGNORE `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (90034, 5178, 0, 0);

-- PvP Armor Vendor (ID: 12777, vendorID: 1277701)
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22857);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22867);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22876);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 22887);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 23259);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 23260);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16577);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16578);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16580);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16573);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16574);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277701, 16579);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22857);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22867);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22876);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 22887);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 23259);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 23260);

INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16577);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16578);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16580);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16573);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16574);
INSERT IGNORE `mangos`.`npc_vendor_template` (`entry`, `item`) VALUES (1277702, 16579);

-- Wildhammer Rep Vendor (471)
UPDATE `mangos`.`creature_template` SET `npc_flags`=6 WHERE  `entry`=5635 AND `patch`=0; -- Quest Giver + Vendor flags
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30047, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30048, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30049, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30050, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30051, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30052, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30053, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30054, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30055, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30059, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30114, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 30115, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5635, 20730, 0);

-- Nethergarde Defenders Quartermaster
UPDATE `mangos`.`creature_template` SET `npc_flags`=6 WHERE  `entry`=5393 AND `patch`=0;
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30008, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30009, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30010, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30011, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30012, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30013, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30014, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 30015, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (5393, 18259, 0);

-- Caretaker of Karazhan Quartermaster
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30019, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30020, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30021, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30022, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30023, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30024, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30025, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30026, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 30027, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (90036, 20727, 0);

-- Wintersaber Trainers Quarter 
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30028, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30029, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30030, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30031, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30032, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30033, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30034, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30035, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 30036, 0);
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `item`, `condition_id`) VALUES (10618, 20728, 0);

-- Alchemists' Stone Recipe
INSERT IGNORE `mangos`.`npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`) VALUES (8157, 28, 13517, 1, 3600, 3);

-- Drops

-- Sul'thraze the Lasher
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 146,
    dmg_max1 = 206
WHERE entry = 9372;

-- Breastplate of Bloodthirst
UPDATE mangos . item_template
SET spellid_3 = 15817, -- +64 Attack Power
    spelltrigger_3 = 1,
    spellid_4 = 15465, -- +2% Physical Hit
    spelltrigger_4 = 1,
    arcane_res = 15,
    fire_res = 15,
    nature_res = 15,
    frost_res = 15,
    shadow_res = 15
WHERE entry = 12757;

-- Breastplate of the Chromatic Flight
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 15,
    fire_res = 15,
    nature_res = 15,
    frost_res = 15,
    shadow_res = 15
WHERE entry = 12895;

-- Legguards of the Chromatic Defier
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    arcane_res = 15,
    fire_res = 15,
    nature_res = 15,
    frost_res = 15,
    shadow_res = 15
WHERE entry = 12903;

-- Legplates of the Chromatic Defier
UPDATE mangos . item_template
SET spellid_1 = 17367, -- +32 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 23729, -- +2% Spell Hit
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1,
    arcane_res = 15,
    fire_res = 15,  
    nature_res = 15,
    frost_res = 15,
    shadow_res = 15
WHERE entry = 12945;

-- Flying Tiger Goggles
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4368;

-- Shadow Goggles
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4373;

-- Green Tinted Goggles
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4385;

-- Bright-Eye Goggles
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 10499;

-- Craftsman's Monocle
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4393;

-- Fire Goggles
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 30,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 10500;

-- Gnomish Goggles
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 15808, -- +38 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 10545;

-- Spellpower Goggles Xtreme
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 12,
    spellid_1 = 23729, -- +2% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 14127, -- +28 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 10502;

-- Rose Colored Goggles
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18032, -- +42 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 10503;

-- Linen Belt
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 6,
    stat_value2 = 3
WHERE entry = 7026;

-- Brown Linen Robe
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 6238;

-- White Linen Robe
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 6241;

-- Heavy Linen Gloves
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 4307;

-- Red Linen Robe
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 0
WHERE entry = 2572;

-- Blue Linen Vest
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 7
WHERE entry = 6240;

-- Red Linen Vest
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 7
WHERE entry = 6239;

-- Green Linen Bracers
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 4308;

-- Reinforced Linen Cape
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 2580;

-- Linen Boots
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 2569;

-- Soft-soled Linen Boots
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 4,
    stat_type2 = 7,
    stat_value2 = 4
WHERE entry = 4312;

-- Barbaric Linen Vest
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 2578;

-- Blue Linen Robe
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 5,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 6242;

-- Handstitched Linen Britches
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 4309;

-- Spidersilk Boots
UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4320;

-- Green Woolen Vest
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7
WHERE entry = 2582;

-- Heaven Woolen Gloves
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6
WHERE entry = 4310;

-- Pearl-clasped Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 6,
    stat_value2 = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5542;

-- Red Woolen Boots
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 5
WHERE entry = 4313;

-- Woolen Boots
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 8,
    stat_type2 = 7,
    stat_value2 = 0,
    stat_type3 = 3,
    stat_value3 = 0
WHERE entry = 2583;

-- Blue Overalls
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 0,
    stat_value2 = 0
WHERE entry = 6263;

-- Heavy Woolen Cloak
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6
WHERE entry = 4311;

-- Gray Woolen Robe
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 2585;

-- Double-stitched Woolen Shoulders
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 4314;

-- Heavy Woolen Pants
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 8
WHERE entry = 4316;

-- Greater Adept's Robe
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5,
    stat_type3 = 7,
    stat_value3 = 7
WHERE entry = 6264;

-- Colorful Kilt
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 8,
    stat_type3 = 3,
    stat_value3 = 0
WHERE entry = 10048;

-- Reinforced Woolen Shoulders
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 2,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 4315;

-- Gloves of Meditation
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 10,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 4318;

-- Lesser Wizard's Robe
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5766;

-- Robes of Arcana
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 5770;

-- Phoenix Gloves
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 4331;

-- Phoenix Pants
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6
WHERE entry = 4317;

-- Spider Silk Slippers
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 6,
    stat_value2 = 3,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 4321;

-- Azure Silk Hood
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    spellid_1 = 7703, -- +10 Frost spell damage
    spelltrigger_1 = 1
WHERE entry = 7048;

-- Hands of Darkness
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 7047;

-- Green Silk Armor
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6,
    stat_type3 = 7,
    stat_value3 = 8
WHERE entry = 7065;

-- Earthen Vest
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 12,
    stat_type2 = 0,
    stat_value2 = 0
WHERE entry = 7051;

-- Enchanter's Cowl
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 4,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4322;

-- Boots of the Enchanter
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4325;

-- Crimson Silk Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7055;

-- Crimson Silk Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7056;

-- Long Silken Cloak
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 4326;

-- Crimson Silk Shoulders
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7059;

-- Crimson Silk Pantaloons
UPDATE mangos . item_template
SET quality = 3,
    bonding = 2, -- BOE
    stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7062;

-- Green Silken Shoulders
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5,
    stat_type3 = 7,
    stat_value3 = 6
WHERE entry = 7057;

-- Robe of Power
UPDATE mangos . item_template
SET spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7054;

-- Crimson Silk Robe
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 7063;

-- Earthern Silk Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 10
WHERE entry = 7061;

-- Icy Cloak
UPDATE mangos . item_template
SET spellid_1 = 9304, -- +16 Frost Damage
    spelltrigger_1 = 1
WHERE entry = 4327;

-- Star Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6
WHERE entry = 4329;

-- Black Mageweave Leggings
UPDATE mangos . item_template
SET spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9999;

-- Black Mageweave Vest
UPDATE mangos . item_template
SET spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9998;

-- Black Mageweave Robe
UPDATE mangos . item_template
SET spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1
WHERE entry = 10001;

-- Black Mageweave Gloves
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 10003;

-- Black Mageweave Boots
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10026;

-- Black Mageweave Headband
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10024;

-- Black Mageweave Shoulders
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10027;

-- Crimson Silk Gloves
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 3,
    stat_type2 = 7,
    stat_value2 = 3,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1
WHERE entry = 7064;

-- White Bandit Mask
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 3,
    stat_type2 = 7,
    stat_value2 = 3,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1
WHERE entry = 10008;

-- Red Mageweave Pants
UPDATE mangos . item_template
SET spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 10009;

-- Red Mageweave Vest
UPDATE mangos . item_template
SET spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 10007;

-- Red Mageweave Shoulders
UPDATE mangos . item_template
SET spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 10029;

-- Red Mageweave Headband
UPDATE mangos . item_template
SET spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 10033;

-- Red Mageweave Gloves
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10018;

-- Heavy Earthen Gloves
UPDATE mangos . item_template
SET quality = 3,
    armor = 150,
    stat_type1 = 7,
    stat_value1 = 8
WHERE entry = 5770;

-- Toughened Leather Gloves
UPDATE mangos . item_template
SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4253;

-- Barbaric Bracers
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 18948;

-- Barbaric Shoulders
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 5964;

-- Barbaric Leggings
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type3 = 6,
    stat_value3 = 9
WHERE entry = 5963;

-- Barbaric Harness
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 5739;

-- Barbaric Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4264;

-- Barbaric Gloves
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4254;

-- Cloak of Warding
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 20
WHERE entry = 18413;

-- Helm of Fire
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1, -- BOP
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 3,
    stat_value1 = 22,
    stat_type2 = 4,
    stat_value2 = 25,
    stat_type3 = 7,
    stat_value3 = 22,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 8348;

-- Thick Murloc Armor
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 5782;

-- Fine Leather Belt
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 4246;

-- Fine Leather Tunic
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7
WHERE entry = 4243;

-- Fine Leather Pants
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7
WHERE entry = 5958;

-- Fine Leather Boots
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 2312;

-- Fine Leather Boots
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 2307;

-- Fine Leather Cloak
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5
WHERE entry = 2308;

-- Black Whelp Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 3,
    stat_type3 = 6,
    stat_value3 = 3
WHERE entry = 7283;

-- Black Whelp Tunic
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 6,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 20575;

-- Red Whelp Gloves
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 4,
    stat_value2 = 7
WHERE entry = 7284;

-- Green Whelp Armor
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 7375;

-- Green Whelp Bracers
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 7386;

-- Murloc Scale Set
-- Body
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 6,
    stat_type2 = 5,
    stat_value2 = 6,
    stat_type3 = 6,
    stat_value3 = 6
WHERE entry = 5781;

-- Belt
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 5780;

-- Bracers
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4
WHERE entry = 5783;

-- Dark Leather Set
-- boots
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 2315;

-- shoulders
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 2
WHERE entry = 4252;

-- gloves
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 4248;

-- belt
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 4249;

-- pants
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 8,
    stat_type2 = 7,
    stat_value2 = 3
WHERE entry = 5961;

-- body
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 4
WHERE entry = 2317;

-- cloak
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 3,
    stat_value1 = 6
WHERE entry = 2316;

-- Fine Leather Pants
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 3,
    stat_type2 = 5,
    stat_value2 = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5958;

-- Green Leather Set
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 4255;

-- Hillman's Leather Vest
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8
WHERE entry = 4244;

-- Hillman's Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4250;

-- Hillman's Leather Gloves
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7
WHERE entry = 4247;

-- Hillman's Shoulders
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7
WHERE entry = 4251;

-- Hillman's Cloak
UPDATE mangos . item_template
SET quality = 3,
    bonding = 2,
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 3719;

-- Big Voodoo Helm
UPDATE mangos . item_template
SET quality = 3,
    armor = 150,
    stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8
WHERE entry = 8201;

-- Big Voodoo Pants
UPDATE mangos . item_template
SET quality = 3,
    armor = 180,
    stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10
WHERE entry = 8202;

-- Big Voodoo Robe
UPDATE mangos . item_template
SET quality = 3,
    armor = 200,
    stat_type1 = 4,
    stat_value1 = 14,
    stat_type2 = 5,
    stat_value2 = 11,
    stat_type3 = 6,
    stat_value3 = 11
WHERE entry = 8200;

-- Big Voodoo Cloak
UPDATE mangos . item_template
SET quality = 3,
    armor = 75,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 8216;

-- Gem Studded Leather Belt
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 8,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 4262;

-- Green Leather Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4259;

-- Green Leather Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 4257;

-- Guardian Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 4258;

-- Guardian Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 5965;

-- Raptor Hide Belt
UPDATE mangos . item_template
SET armor = 155
WHERE entry = 4456;

-- Raptor Hide Harness
UPDATE mangos . item_template
SET armor = 200,
    stat_type2 = 4,
    stat_value2 = 7
WHERE entry = 4455;

-- Frost Leather Cloak
UPDATE mangos . item_template
SET armor = 75,
    stat_type1 = 4,
    stat_value1 = 10
WHERE entry = 7377;

-- Dusky Leather Set
-- boots
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7390;

-- body
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7374;

-- belt
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7387;

-- Nightscape Leather Set
-- boots
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8197;

-- body
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15807, -- +32 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8175;

-- pants
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15807, -- +32 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8193;

-- helm
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8176;

-- shoulders
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8192;

-- cape
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 8195;

-- Tunic Scale Set

-- Turtle Scale Helm
UPDATE mangos . item_template
SET quality = 3,
    required_level = 47,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 8191;

-- Turtle Scale Gloves
UPDATE mangos . item_template
SET quality = 3,
    required_level = 47,
    stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 8,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 8187;

-- Turtle Scale Breastplate
UPDATE mangos . item_template
SET quality = 3,
    required_level = 47,
    stat_type1 = 4,
    stat_value1 = 18,
    stat_type2 = 5,
    stat_value2 = 14,
    stat_type3 = 6,
    stat_value3 = 14,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 8189;

-- Turtle Scale Bracers
UPDATE mangos . item_template
SET quality = 3,
    required_level = 47,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 6,
    stat_type3 = 6,
    stat_value3 = 6,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 8198;

-- Turtle Scale Leggings
UPDATE mangos . item_template
SET quality = 3,
    required_level = 47,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 14,
    stat_type3 = 6,
    stat_value3 = 14,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 8185;

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
    spellid_2 = 17823, -- +26 Arcane Damage
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
    spellid_2 = 17823, -- +26 Arcane Damage
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

-- Timbermaw Brawlers
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 250,
    spellid_1 = 13670, -- 2% Dodge
    spelltrigger_1 = 1
WHERE entry = 19049;

-- Might of the Timbermaw
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 250,
    spellid_1 = 13670, -- 2% Dodge
    spelltrigger_1 = 1
WHERE entry = 19044;

-- Golden Mantle of the Dawn
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 300,
    spellid_1 = 13669, -- +1% Dodge
    spelltrigger_1 = 1,
    spellid_2 = 15808, -- +38 Attack Power
    spelltrigger_2 = 1
WHERE entry = 19058;

-- Dawn Treaders
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    armor = 275,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 15808, -- +38 Attack Power
    spelltrigger_2 = 1
WHERE entry = 19052;

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
    bonding = 2,
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

-- Dragonscale Gauntlets
UPDATE mangos . item_template
SET stat_type1 = 4, 
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    stat_type3 = 6,
    stat_value3 = 10,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 8347;

-- Dragonscale Breastplate
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 8367;

-- Black Dragonscale Set

-- Body
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21365, -- 9 MP/5
    spelltrigger_3 = 1
WHERE entry = 15050;

-- Shoulders
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 9,
    stat_type2 = 7,
    stat_value2 = 9,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 15051;

-- Legs
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21365, -- 9 MP/5
    spelltrigger_3 = 1
WHERE entry = 15052;

-- Boots
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    stat_type1 = 5,
    stat_value1 = 9,
    stat_type2 = 7,
    stat_value2 = 9,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 16984;

-- Blue Dragonscale Set
UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1,
    spellid_2 = 18052, -- +34 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 15048;

UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1,
    spellid_2 = 18052, -- +34 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 20295;

UPDATE mangos . item_template
SET quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 14127, -- +28 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 15049;

-- Green Dragonscale Armor Set
UPDATE mangos . item_template
SET required_level = 55,
    quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18045, -- +75 Healing
    spelltrigger_1 = 1
WHERE entry = 15045;

UPDATE mangos . item_template
SET required_level = 55,
    quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18041, -- +66 Healing
    spelltrigger_1 = 1
WHERE entry = 15046;

UPDATE mangos . item_template
SET required_level = 55,
    quality = 4,
    bonding = 1,
    required_skill = 165, -- Leatherworking
    required_skill_rank = 300,
    spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 20296;

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
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
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

-- Chromatic Cloak
UPDATE mangos . item_template
SET spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18509;

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

-- Mantle of the Timbermaw
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 197, -- Tailoring
    required_skill_rank = 300,
    spellid_2 = 18031, -- +40 Healing
    spelltrigger_2 = 1
WHERE entry = 19050;

-- Wisdom of the Timbermaw
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 197, -- Tailoring
    required_skill_rank = 300,
    spellid_2 = 9318, -- +33 Healing
    spelltrigger_2 = 1
WHERE entry = 19047;

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
    spelltrigger_2 = 1,
    spellid_3 = 9778, -- When struck in combat has a 3% chance to heal you for 60 to 100. (Proc chance: 3%)
    spelltrigger_3 = 1
WHERE entry = 7939;

-- Truesilver Gauntlets
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7938;

-- Gloves of the Dawn
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 15,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1,
    spellid_2 = 9417, -- +12 spell damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 19057;

-- Girdle of the Dawn
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type3 = 5,
    stat_value3 = 15,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1,
    spellid_2 = 9417, -- +12 spell damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 19051;

-- Heavy Timbermaw Boots
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type2 = 4,
    stat_value2 = 15,
    stat_type3 = 5,
    stat_value3 = 15,
    spellid_2 = 13387, -- +8 Defense
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 19048;

-- Heavy Timbermaw Belt
UPDATE mangos . item_template
SET quality = 4,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type2 = 4,
    stat_value2 = 15,
    stat_type3 = 5,
    stat_value3 = 15,
    spellid_2 = 13387, -- +8 Defense
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 19043;

-- Demon Forged Breastplate
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 13,
    stat_type2 = 5,
    stat_value2 = 13,
    spellid_1 = 21408, -- +12 Defense
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 16611, -- When struck has a 3% chance of stealing 120 life from the attacker over 4 sec.
    spelltrigger_3 = 1
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

-- Steel Breastplate
UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 500,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 15,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7963;

-- Green Iron Set 
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3484;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3844;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3842;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3485;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9138, -- +6 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3840;

-- Rough Bronze Set
UPDATE mangos . item_template
SET quality = 2,
    stat_type1 = 4,
    stat_value1 = 3
WHERE entry = 6350;

UPDATE mangos . item_template
SET quality = 2,
    stat_type1 = 4,
    stat_value1 = 3
WHERE entry = 3480;

UPDATE mangos . item_template
SET quality = 2,
    stat_type1 = 4,
    stat_value1 = 3,
    stat_type2 = 7,
    stat_value2 = 3
WHERE entry = 2866;

-- Silvered Bronze Set
UPDATE mangos . item_template
SET quality = 3,
    stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3482;

UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 6,
    stat_value3 = 5,
    stat_type4 = 5,
    stat_value4 = 5
WHERE entry = 2869;

UPDATE mangos . item_template
SET quality = 3,
    stat_type4 = 5,
    stat_value4 = 3
WHERE entry = 3483;

UPDATE mangos . item_template
SET quality = 3,
    stat_type4 = 5,
    stat_value4 = 6
WHERE entry = 10423;

UPDATE mangos . item_template
SET quality = 3,
    stat_type4 = 5,
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

-- Mithril Scale Set
UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 400,
    stat_type1 = 5,
    stat_value1 = 13,
    stat_type2 = 7,
    stat_value2 = 13,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7931;

UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 250,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7925;

UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 350,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7932;

UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 400,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 20,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7920;

UPDATE mangos . item_template
SET subclass = 4, -- Plate Armor (Must be combined with class 4)
    armor = 200,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 7924;

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
    stat_value2 = 10,
    stat_type3 = 4,
    stat_value3 = 10
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

-- Boots
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7936;

-- Body
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 0,
    spelltrigger_2 = 0
WHERE entry = 7935;

-- Gloves
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7927;

-- Pants
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7926;

-- Helm
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type3 = 6,
    stat_value3 = 9,
    spellid_2 = 9343, -- +14 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 7937;

-- Shoulders
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
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
    stat_value1 = 15,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 0,
    spelltrigger_2 = 0,
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
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 7,
    stat_value2 = 27,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21631, -- 9 MP/5
    spelltrigger_3 = 1,
    spellid_4 = 21471, -- 2% Shield Block
    spelltrigger_4 = 1
WHERE entry = 12620;

UPDATE mangos . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 7,
    stat_value2 = 30,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21631, -- 9 MP/5
    spelltrigger_3 = 1,
    spellid_4 = 21471, -- 2% Shield Block
    spelltrigger_4 = 1
WHERE entry = 12618;

UPDATE mangos . item_template
SET required_skill = 164, -- Blacksmithing
    required_skill_rank = 300,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 7,
    stat_value2 = 29,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 21631, -- 9 MP/5
    spelltrigger_3 = 1,
    spellid_4 = 21471, -- 2% Shield Block
    spelltrigger_4 = 1
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
    delay = 1500,
    dmg_min1 = 64,
    dmg_max1 = 104
WHERE entry = 19168;

-- Frostguard
UPDATE mangos . item_template
SET required_level = 60,
    item_level = 78,
    inventory_type = 13, -- One-handed (MH or OH)
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
    bonding = 1, -- BOP
    delay = 2900,
    dmg_min1 = 125,
    dmg_max1 = 190
WHERE entry = 12798;

-- Lesser Magic Wand
UPDATE mangos . item_template
SET dmg_min1 = 9,
    dmg_max1 = 17,
    spellid_1 = 25975, -- +10 Spell Penetration
    spelltrigger_1 = 1
WHERE entry = 11287;

-- Greater Magic Wand
UPDATE mangos . item_template
SET dmg_min1 = 13,
    dmg_max1 = 25,
    spellid_1 = 25975, -- +10 Spell Penetration
    spelltrigger_1 = 1
WHERE entry = 11288;

-- Gravestone Scepter
UPDATE mangos . item_template
SET inventory_type = 26,
    bonding = 1, -- BOP
    dmg_min1 = 21,
    dmg_max1 = 51,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7001;

-- Copper Shortsword
UPDATE mangos . item_template
SET quality = 2,
    inventory_type = 13, -- One-handed (MH or OH)
    bonding = 2, -- BoE
    dmg_min1 = 9,
    dmg_max1 = 18
WHERE entry = 2847;

-- Copper Dagger
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2, -- BoE
    dmg_min1 = 7,
    dmg_max1 = 13
WHERE entry = 7166;

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

-- Bronze Shortsword
UPDATE mangos . item_template
SET quality = 2,
    inventory_type = 13, -- One-handed (MH or OH)
    bonding = 2, -- BoE
    dmg_min1 = 18,
    dmg_max1 = 38
WHERE entry = 2850;

-- Deadly Bronze Poniard
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 21,
    dmg_max1 = 39
WHERE entry = 3490;

-- Bronze Axe
UPDATE mangos . item_template
SET quality = 2,
    dmg_min1 = 17,
    dmg_max1 = 37
WHERE entry = 2849;

-- Bronze Mace
UPDATE mangos . item_template
SET quality = 2,
    dmg_min1 = 23,
    dmg_max1 = 43
WHERE entry = 2848;

-- Bronze Greatsword
UPDATE mangos . item_template
SET quality = 3,
    delay = 3300,
    dmg_min1 = 51,
    dmg_max1 = 81
WHERE entry = 7957;

-- Bronze Battle Axe
UPDATE mangos . item_template
SET quality = 3,
    delay = 3600,
    dmg_min1 = 57,
    dmg_max1 = 87
WHERE entry = 7958;

-- Heavy Bronze Mace
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 30,
    dmg_max1 = 57
WHERE entry = 3491;

-- Iridescent Hammer
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 22,
    dmg_max1 = 42
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
    armor = 100,
    delay = 1500,
    dmg_min1 = 20,
    dmg_max1 = 40
WHERE entry = 3849;

-- Golden Iron Destroyer
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 88,
    dmg_max1 = 132,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
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

-- Glinting Steel Dagger
UPDATE mangos . item_template
SET quality = 3,
    delay = 1700,
    dmg_min1 = 29,
    dmg_max1 = 57
WHERE entry = 12259;

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
    stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 7943;

-- Reforged Blade of Heroes
UPDATE mangos . item_template
SET required_level = 50,
    quality = 4,
    inventory_type = 21,
    required_skill = 164, -- Blacksmithing
    required_skill_rank = 225,
    delay = 1700,
    dmg_min1 = 51,
    dmg_max1 = 76,
    spellid_1 = 30000, -- +50 Attack Power for 30s
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

-- Heavy Mithril Axe
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 66,
    dmg_max1 = 96
WHERE entry = 7941;

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

-- Ebon Shiv
UPDATE mangos . item_template
SET quality = 3,
    delay = 1700,
    dmg_min1 = 39,
    dmg_max1 = 74
WHERE entry = 7947;

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
SET delay = 3800,
    dmg_min1 = 153,
    dmg_max1 = 256,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1,
    spellid_3 = 15465, -- +2% Physical Hit
    spelltrigger_3 = 1
WHERE entry = 12790;

-- Hammer of the Titans
UPDATE mangos . item_template
SET dmg_min1 = 153,
    dmg_max1 = 256,
    armor = 0,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    spellid_1 = 15261, -- Holy Fire
    spelltrigger_1 = 2,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 12796;

-- Blackfury
UPDATE mangos . item_template
SET delay = 3800,
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

-- Dark Iron Sunderer
UPDATE mangos . item_template
SET quality = 4,
    delay = 3800,
    dmg_min1 = 195,
    dmg_max1 = 245
WHERE entry = 11607;

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

-- Alchemists' Stone
UPDATE mangos . item_template
SET spellid_1 = 17493, -- 44 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21365, -- 9 MP/5
    spelltrigger_2 = 1,
    spellid_3 = 27675, -- Increases your spell damage by up to 100 and your healing by up to 190 for 15 sec.
    spelltrigger_3 = 0
WHERE entry = 13503;

-- Healthstones
UPDATE mangos . item_template
SET max_count = 3,
    stackable = 3
WHERE entry IN(19008,5512,9421,5510,5509,19013,5511,19012,19011,19009,19010,19007,19004,19005,19006);

-- Soulstones
UPDATE mangos . item_template
SET max_count = 20,
    stackable = 20
WHERE entry IN(16893, 5232, 16896, 16895, 16892);

-- Elemental Invasions

-- Baron Charr's Sceptre
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 97,
    dmg_max1 = 181
WHERE entry = 18671;

-- Elemental Ember
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 14248, -- +21 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18672;

-- Avalanchion's Stony Hide
UPDATE mangos . item_template
SET quality = 4,
    block = 47,
    armor = 2575,
    spellid_1 = 23516, -- Block Value +27
    spelltrigger_1 = 1
WHERE entry = 18673;

-- Hardened Stone Band
UPDATE mangos . item_template
SET quality = 3,
    armor = 100,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 18674;

-- Tempestria's Frozen Necklace
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 17900, -- +40 Frost Damage
    spelltrigger_1 = 1
WHERE entry = 18678;

-- Frigid Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17890, -- +24 Frost Damage
    spelltrigger_2 = 1
WHERE entry = 18679;

-- Sash of the Windreaver
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 17997, -- +40 Nature Damage
    spelltrigger_2 = 1
WHERE entry = 18676;

-- Zephyr Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 15,
    stat_type2 = 4,
    stat_value2 = 15,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 18677;

-- Dungeon Gear

-- Deadmines

-- Lavishly Jeweled Ring
UPDATE mangos . item_template
SET spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1
WHERE entry = 1156;

-- Emberstone Staff
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 5201;

-- Corsair's Overshirt
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5202;

-- Cookie's Stirring Rod
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 5198;

-- Shadowfang Keep

-- Odo's Ley Staff
UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6318;

-- Fenrus' Hide
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 5
WHERE entry = 6340;

-- Feline Mantle
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 10
WHERE entry = 3748;

-- Robes of Arugal
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 20
WHERE entry = 6324;

-- Belt of Arugal
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 10
WHERE entry = 6392;

-- BFD

-- Rod of the Sleepwalker
UPDATE mangos . item_template
SET spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1
WHERE entry = 1155;

-- Ghamoo-ra's Bind
UPDATE mangos . item_template
SET quality = 2,
    bonding = 2,
    stat_type1 = 7,
    stat_value1 = 0,
    stat_type2 = 5,
    stat_value2 = 0,
    spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 6908;

-- Leech Pants
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 1,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6910;

-- Gnomergan

-- Toxic Revenger
UPDATE mangos . item_template
SET spellid_1 = 9357, -- +16 Nature Damage
    spelltrigger_1 = 1
WHERE entry = 9453;

-- Manual Crowd Pummeler
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 15,
    spellid_2 = 7681, -- +15 Healing
    spelltrigger_2 = 1
WHERE entry = 9449;

-- Electrocutioner Leg
UPDATE mangos . item_template
SET spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1
WHERE entry = 9446;

-- Electrocutioner Lagnut
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 0,
    stat_type2 = 5,
    stat_value2 = 0,
    spellid_1 = 23688, -- 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
    spelltrigger_1 = 1
WHERE entry = 9447;

-- Charged Gear
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 0,
    stat_type2 = 5,
    stat_value2 = 0,
   spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1
WHERE entry = 9461;

-- Electromagnetic Gigaflux Reactivator
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 6,
    spellcooldown_1 = 300000,
    spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 9492;

-- RFK

-- Agamaggan's Clutch
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 9324, -- +16 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 6693;

-- Stygian Bone Amulet
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 9324, -- +16 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 6695;

-- Wind Spirit Staff
UPDATE mangos . item_template
SET spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 6689;

-- Scarlet Monastery

-- Scarlet Chestpiece
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 6,
    stat_value2 = 10,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10328;

-- Scarlet Leggings
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 6,
    stat_value2 = 10,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10330;

-- Scarlet Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 5,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10329;

-- Scarlet Boots
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10332;

-- Scarlet Wristguards
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 7,
    stat_value2 = 4,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10332;

-- Scarlet Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 7,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 10331;

-- Raging Berserker's Helm
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10
WHERE entry = 7719;

-- Herod's Shoulders
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7718;

-- Dusty Mail Boots
UPDATE mangos . item_template
SET spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 19509;

-- Whitemane's Chapeau
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 9,
    stat_type2 = 6,
    stat_value2 = 9,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 7720;

-- Triune Amulet
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 7722;

-- Mograine's Might
UPDATE mangos . item_template
SET spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7723;

-- RFD

-- Icemetal Barbute
UPDATE mangos . item_template
SET armor = 500,
    stat_type1 = 7,
    stat_value1 = 25,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 10763;

-- Arachnid Gloves
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 10777;

-- Glowing Eye of Mordresh
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10769;

-- Robes of the Lich
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 10762;

-- Uldaman

-- Galgann's Firehammer
UPDATE mangos . item_template
SET quality = 3,
    dmg_type1 = 2, -- Fire
    dmg_min1 = 50, 
    dmg_max1 = 90, 
    spellppmrate_1 = 15 
WHERE entry = 9419;

-- Oilskin Leggings
UPDATE mangos . item_template
SET quality = 3,
    armor = 200,
    fire_res = -15,
    stat_type1 = 4,
    stat_value1 = 20,
    stat_type2 = 7,
    stat_value2 = 10
WHERE entry = 9414;

-- Emissary Cuffs
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 9455;

-- Grimlok's Tribal Vestments
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 23688, -- 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
    spelltrigger_1 = 1
WHERE entry = 9415;

-- Stoneweaver Leggings
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 23688, -- 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
    spelltrigger_1 = 1
WHERE entry = 9407;

-- Archaedic Stone
UPDATE mangos . item_template
SET armor = 0,
    spellid_1 = 9345, -- +16 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11118;


-- Zul Farrak

-- Jinxed Hoodoo Kilt
UPDATE mangos . item_template
SET spellid_1 = 17988, -- +24 Nature Damage
    spelltrigger_1 = 1,
    spellid_2 = 17823, -- +26 Arcane Damage
    spelltrigger_2 = 1
WHERE entry = 9474;

-- Gahz'rilla Fang
UPDATE mangos . item_template
SET dmg_min1 = 43,
    dmg_max1 = 83,
    spellid_2 = 9331, -- +20 Attack Power
    spelltrigger_2 = 1
WHERE entry = 9467;

-- Gahz'rilla Scale Armor
UPDATE mangos . item_template
SET spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 9469;

-- Big Bad Pauldrons
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 8,
    stat_type2 = 4,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 12
WHERE entry = 9476;

-- Witch Doctor's Cane
UPDATE mangos . item_template
SET spellid_2 = 9318, -- +33 Healing
    spelltrigger_2 = 1
WHERE entry = 9482;

-- Lifeblood Amulet
UPDATE mangos . item_template
SET spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 9641;

-- The Chief's Enforcer
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 20,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 9477;

-- Desertwalker Cane
UPDATE mangos . item_template
SET spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 12471;

-- Maraudon

-- Charstone Dirk
UPDATE mangos . item_template
SET spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1,
    spellid_3 = 15464, -- +1% Physical Hit
    spelltrigger_3 = 1
WHERE entry = 17710;

-- Cloud Stone
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 17737;

-- Fist of Stone
UPDATE mangos . item_template
SET spellid_2 = 9406, -- +18 Healing
    spelltrigger_2 = 1
WHERE entry = 17943;

-- Satyrmane Sash
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 5,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 17755;

-- Heart of Noxxion
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 7
WHERE entry = 17744;

-- Gemshard Heart
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 6,
    stat_type3 = 7,
    stat_value3 = 5,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 17707;

-- Eye of Theradras
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 7,
    stat_type3 = 7,
    stat_value3 = 6,
    spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 17715;

-- Princess Theradras' Scepter
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    spellid_2 = 15714, -- +22 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 17766;

-- Vinerot Sandals
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7,
    spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 17748;

-- Rotgrip Mantle
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 6,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 17732;

-- Chloromesh Girdle
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 17750;

-- Inventor's Focal Sword
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 2
WHERE entry = 17719;

-- Sunken Temple

-- Atal'ai Girdle
UPDATE mangos . item_template
SET quality = 3,
    armor = 320,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10788;

-- Atal'ai Boots
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10786;

-- Atal'ai Leggings
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 10785;

-- Warrior's Embrace
UPDATE mangos . item_template
SET armor = 725,
    stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 7,
    stat_value2 = 24,
    spellid_1 = 21471, -- +2% Shield Block
    spelltrigger_1 = 1
WHERE entry = 10845;

-- Fist of the Damned
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 52,
    dmg_max1 = 92,
    spellppmrate_1 = 15 
WHERE entry = 10804;

-- Headspike
UPDATE mangos . item_template
SET delay = 3700,
    dmg_min1 = 151,
    dmg_max1 = 211
WHERE entry = 10799;

-- Smoldering Claw
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 20,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12243;

-- Crest of Supremacy
UPDATE mangos . item_template
SET spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1 
WHERE entry = 10835;

-- Bloodshot Greaves
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 12,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10846;

-- Horns of Eranikus
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10833;

-- Firebreather
UPDATE mangos . item_template
SET delay = 2200,
    dmg_min1 = 60,
    dmg_max1 = 110
WHERE entry = 10797;

-- Vestments of the Atal'ai Prophet
UPDATE mangos . item_template
SET  spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10806;

-- Kilt of the Atal'ai Prophet
UPDATE mangos . item_template
SET  spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10807;

-- Gloves of the Atal'ai Prophet
UPDATE mangos . item_template
SET  spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 10808;

-- Dawnspire Cord
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 12466;

-- Nightfall Drape
UPDATE mangos . item_template
SET  spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 12465;

-- Dragon's Eye
UPDATE mangos . item_template
SET spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 10829;

-- Horns of Eranikus
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10833;

-- BRD

-- Verek's Collar
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 13,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 11755;

-- Imperial Jewel
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 17,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 11933;

-- Spritecaster Cape
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 17
WHERE entry = 11623;

-- Blackveil Cape
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 14,
    stat_type2 = 4,
    stat_value2 = 14
WHERE entry = 11626;

-- Graverot Cape
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 11677;

-- Cape of the Fire Salamander
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 17,
    spellid_1 = 21508, -- +14 Holy Damage
    spelltrigger_1 = 1
WHERE entry = 11812;

-- The Emperor's New Cape
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 11930;

-- Stoneshield Cloak
UPDATE mangos . item_template
SET quality = 4,
    armor = 250,
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 13669, -- +1% Dodge
    spelltrigger_1 = 1,
    spellid_2 = 13383, -- +5 Defense
    spelltrigger_2 = 1
WHERE entry = 12551;

-- Blisterbane Wrap
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9314, -- +24 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 12552;

-- Robes of the Royal Crown
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 14047, -- +23 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 18382, -- +2% Spell Crit
    spelltrigger_2 = 1
WHERE entry = 11924;

-- Flamestrider Robes
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 15,
    spellid_1 = 14047, -- +23 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11747;

-- Mixologist's Tunic
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 5,
    stat_value4 = 11,
    stat_type5 = 6,
    stat_value5 = 11,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 12793;

-- Royal Decorated Armor
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 15,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 14052, -- +60 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 9345, -- +16 Spell damage
    spelltrigger_2 = 1,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_3 = 1
WHERE entry = 11820;

-- Deathdealer Breastplate
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 25,
    stat_type2 = 5,
    stat_value2 = 17,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 11926;

-- Spiderfang Carapace
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 3,
    stat_value4 = 11,
    spellid_1 = 14047, -- +23 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 11633;

-- Carapace of Anub'shiah
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7598 -- +2% Physical Crit
WHERE entry = 11678;

-- Omnicast Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12
WHERE entry = 11822;

-- High Priestess Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 12556;

-- Soot Encrusted Footwear
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 15,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 22245;

-- Shadefiend Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 5,
    stat_value4 = 8,
    stat_type5 = 6,
    stat_value5 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 11675;

-- Swiftwalker Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 26,
    stat_type2 = 7,
    stat_value2 = 18,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 12553;

-- Coal Miner Boots
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    stat_type1 = 4,
    stat_value1 = 18,
    stat_type2 = 7,
    stat_value2 = 26
WHERE entry = 18043;

-- Firemoss Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 22275;

-- Fleetfoot Greaves
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 28,
    stat_type2 = 7,
    stat_value2 = 14,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 11627;

-- Savage Gladiator Greaves
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 5,
    stat_value4 = 8,
    stat_type5 = 6,
    stat_value5 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 11731;

-- Greaves of Withering Despair
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12,
    spellid_1 = 14799, -- +20 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22240;

-- Shalehusk Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 26
WHERE entry = 11787;

-- Battlechaser's Greaves
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 20,
    stat_type2 = 4,
    stat_value2 = 18,
    stat_type3 = 5,
    stat_value3 = 14
WHERE entry = 12555;

-- Entrenching Boots
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 14,
    stat_type2 = 4,
    stat_value2 = 18,
    stat_type3 = 5,
    stat_value3 = 15,
    stat_type4 = 7,
    stat_value4 = 18,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 22270;

-- Naglering
UPDATE mangos . item_template
SET quality = 4,
    armor = 100,
    stat_type1 = 7,
    stat_value1 = 20
WHERE entry = 11669;

-- Cyclopean Band
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 12,
    stat_type3 = 0,
    stat_value3 = 0,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 11824;

-- Emperor's Seal
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18049, -- +26 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11934;

-- Magma Forged Band
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 22255;

-- Bloodclot Band
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18033, -- +46 Healing
    spelltrigger_1 = 1
WHERE entry = 22257;

-- Silkweb Gloves
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 11634;

-- Hands of the Exalted Herald
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10
WHERE entry = 12554;

-- Mana Shaping Handwraps
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22256;

-- Ogreseer Fists
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11665;

-- Mar Alom's Grip
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 12547;

-- Savage Gladiator Grips
UPDATE mangos . item_template
SET quality = 4,
    stat_type5 = 6,
    stat_value5 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 11730;

-- Molten Fists
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 11814;

-- Fists of Phalanx
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 27,
    stat_type2 = 7,
    stat_value2 = 13,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 11745;

-- Circle of Flame
UPDATE mangos . item_template
SET spellid_1 = 18053, -- +36 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11808;

-- Chief Architect's Monocle
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 14798, -- +30 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11839;

-- Ragefury Eyepatch
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    stat_type1 = 4,
    stat_value1 = 27,
    stat_type2 = 7,
    stat_value2 = 20,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 11735;

-- Ghostshroud
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 11925;

-- Savage Gladiator Helm
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 12,
    stat_type2 = 4,
    stat_value2 = 18,
    stat_type3 = 5,
    stat_value3 = 12,
    stat_type4 = 6,
    stat_value4 = 12,
    stat_type5 = 7,
    stat_value5 = 12,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 11729;

-- Braincage
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 12549;

-- Golem Skull Helm
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 35
WHERE entry = 11746;

-- Foreman's Head Protector
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 3,
    stat_value4 = 11,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 22223;

-- Enthralled Sphere
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1,
    spellid_2 = 18384, -- +1% Spell Crit
    spelltrigger_2 = 1
WHERE entry = 11625;

-- Thaurissan's Royal Scepter
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10
WHERE entry = 11928;

-- Magmus Stone
UPDATE mangos . item_template
SET quality = 4,
    armor = 100,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9,
    stat_type3 = 5,
    stat_value3 = 9,
    stat_type3 = 6,
    stat_value3 = 9,
    stat_type3 = 7,
    stat_value3 = 9,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 11935;

-- Senior Designer's Pantaloons
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 20,
    stat_type2 = 6,
    stat_value2 = 22,
    stat_type3 = 7,
    stat_value3 = 15
WHERE entry = 11841;

-- Haunting Specter Legging
UPDATE mangos . item_template
SET quality = 4,
    stat_type3 = 7,
    stat_value3 = 15,
    spellid_1 = 14798, -- +30 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11929;

-- Warstrife Leggings
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 25,
    stat_type2 = 7,
    stat_value2 = 35,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 11821;

-- Luminary Kilt
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 20,
    stat_type2 = 6,
    stat_value2 = 25,
    stat_type3 = 7,
    stat_value3 = 15,
    spellid_1 = 14798, -- +30 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11823;

-- Leggings of Frenzied Magic
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 25,
    stat_type2 = 7,
    stat_value2 = 20
WHERE entry = 22271;

-- Savage Gladiator Leggings
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 5,
    stat_value4 = 12,
    stat_type5 = 6,
    stat_value5 = 12,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 11728;

-- Searingscale Leggings
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 25,
    stat_type2 = 7,
    stat_value2 = 18,
    stat_type3 = 0,
    stat_value3 = 0,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 15810, -- +44 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 11749;

-- Lavacrest Leggings
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 20,
    stat_type2 = 5,
    stat_value2 = 20,
    stat_type3 = 7,
    stat_value3 = 20,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 11802;

-- Legplates of the Eternal Guardian
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 19,
    stat_type2 = 7,
    stat_value2 = 27
WHERE entry = 11927;

-- Barman Shanker
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 70,
    dmg_max1 = 130
WHERE entry = 12791;

-- Grizzle's Skinner
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 90,
    dmg_max1 = 150
WHERE entry = 11702;

-- Wraith Scythe
UPDATE mangos . item_template
SET quality = 4,
    delay = 1500,
    dmg_min1 = 45,
    dmg_max1 = 105,
    spellppmrate_1 = 15 
WHERE entry = 11920;

-- Ribsplitter
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 91,
    dmg_max1 = 151
WHERE entry = 12527;

-- Ironfoe
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 102,
    dmg_max1 = 162
WHERE entry = 11684;

-- Rubidium Hammer
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 70,
    dmg_max1 = 130,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21365, -- 9 MP/5
    spelltrigger_2 = 1,
    spellid_3 = 10373, -- Chance on hit: AOE fire damage
    spelltrigger_3 = 2
WHERE entry = 11805;

-- The Hammer of Grace
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 79,
    dmg_max1 = 162,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10
WHERE entry = 11923;

-- Hurley's Tankard
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 79,
    dmg_max1 = 162,
    spellid_1 = 15810, -- +44 Attack Power
    spelltrigger_1 = 1
WHERE entry = 18044;

-- Arbiter's Blade
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 64,
    dmg_max1 = 140,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 7,
    spellid_1 = 18050, -- +33 Spell Damage
    spelltrigger_1 = 1   
WHERE entry = 11784;

-- Lord General's Sword
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 100,
    dmg_max1 = 160,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9
WHERE entry = 11817;

-- Hookfang Shanker
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 45,
    dmg_max1 = 95,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9,
    spellppmrate_1 = 15,
    spellid_2 = 9331, -- +20 Attack Power
    spelltrigger_2 = 1
WHERE entry = 11635;

-- Blood-etched Blade
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 50,
    dmg_max1 = 100,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 7,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21365, -- 9 MP/5
    spelltrigger_2 = 1
WHERE entry = 11922;

-- Flarethorn
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 50,
    dmg_max1 = 100,
    stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 15715, -- +25 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 22266;

-- Bloodfist
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 50,
    dmg_max1 = 100,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9,
    spellid_1 = 21170, -- Chance on hit: Steals 100 to 180 life from target enemy.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 11744;

-- Rockfist
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    dmg_min1 = 45,
    dmg_max1 = 95,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 17500, -- Chance on hit: Knocks target silly for 2 sec and increases Strength by 50 for 30 sec.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 11743;

-- Lefty's Brass Knuckle
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 50,
    dmg_max1 = 100,
    stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9,
    spellid_1 = 13533, -- Chance on hit: Increases your attack speed by 30% for 10 sec.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 22317;

-- Houndmaster's Bow
UPDATE mangos . item_template
SET quality = 4,
    delay = 2900,
    dmg_min1 = 91,
    dmg_max1 = 141,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 11628;

-- Malgen's Long Bow
UPDATE mangos . item_template
SET quality = 4,
    delay = 2900,
    dmg_min1 = 91,
    dmg_max1 = 141,
    spellid_1 = 21440, -- +36 Ranged Attack Power
    spelltrigger_1 = 1
WHERE entry = 22318;

-- Houndmaster's Rifle
UPDATE mangos . item_template
SET quality = 4,
    delay = 2900,
    dmg_min1 = 91,
    dmg_max1 = 141,
    spellid_1 = 21440, -- +36 Ranged Attack Power
    spelltrigger_1 = 1
WHERE entry = 11629;

-- Pyric Caduceus
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 106,
    dmg_max1 = 156,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11748;

-- Wand of Eternal Light
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 84,
    dmg_max1 = 134,
    spellid_2 = 9318, -- +33 Healing
    spelltrigger_1 = 2
WHERE entry = 22254;

-- Stoneshell Guard
UPDATE mangos . item_template
SET quality = 4,
    armor = 2539,
    block = 46,
    stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 22852, -- Block Value +23
    spelltrigger_1 = 1,
    spellid_2 = 21471, -- +2% Shield Block
    spelltrigger_2 = 1
WHERE entry = 11631;

-- Rock Golem Bulwark
UPDATE mangos . item_template
SET quality = 4,
    armor = 2539,
    block = 46,
    stat_type1 = 5,
    stat_value1 = 15,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 11785;

-- Kentic Amice
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 23,
    stat_type2 = 6,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11624;

-- Boreal Mantle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 21,
    stat_type2 = 6,
    stat_value2 = 5,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 11782;

-- Mantle of Lost Hope
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 25
WHERE entry = 22234;

-- Ironweave Set

-- Ironweave Mantle
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_1 = 26283, -- +20 Spell Penetration
    spelltrigger_1 = 1
WHERE entry = 22305;

-- Splinthide Shoulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 3,
    stat_value4 = 10,
    stat_type5 = 6,
    stat_value5 = 11
WHERE entry = 11685;

-- Dark Warder's Pauldrons
UPDATE mangos . item_template
SET quality = 4,
    armor = 175,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 22,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 22241;

-- Dregmetal Spaulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 10,
    stat_type2 = 4,
    stat_value2 = 11,
    stat_type3 = 5,
    stat_value3 = 10,
    stat_type4 = 6,
    stat_value4 = 10,
    stat_type5 = 7,
    stat_value5 = 10,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 11722;

-- Lead Surveyor's Mantle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 23,
    stat_type2 = 6,
    stat_value2 = 13,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11842;

-- Golem Fitted Pauldrons
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 27,
    stat_type2 = 7,
    stat_value2 = 14,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 22212;

-- Earthslag Shoulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 3,
    stat_value4 = 8,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11632;

-- Ebonsteel Spaulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 22,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 12557;

-- Force of Will
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    stat_type1 = 7,
    stat_value1 = 15
WHERE entry = 11810;

-- Hand of Justice
UPDATE mangos . item_template
SET quality = 4
WHERE entry = 11815;

-- Second Wind
UPDATE mangos . item_template
SET quality = 4,
    spellid_3 = 21363, -- 5 MP/5
    spelltrigger_2 = 3
WHERE entry = 11819;

-- Burst of Knowledge
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 11832;

-- Flame Wrath
UPDATE mangos . item_template
SET quality = 4,
    delay = 2200,
    dmg_min1 = 118,
    dmg_max1 = 168,
    spellid_2 = 15817, -- +64 Attack Power
    spelltrigger_2 = 1,
    spellid_3 = 7598, -- +2% Physical Crit
    spelltrigger_3 = 1
WHERE entry = 11809;

-- Kindling Stave
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 37,
    stat_type2 = 6,
    stat_value2 = 14,
    stat_type3 = 7,
    stat_value3 = 16,
    spellid_1 = 18056, -- +40 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11750;

-- Angerforge's Battle Axe
UPDATE mangos . item_template
SET quality = 4,
    delay = 2200,
    dmg_min1 = 118,
    dmg_max1 = 168,
    spellid_1 = 16871, -- Chance on hit: Enemy is inflicted with the Bleakwood Curse that reduces their magic resistances by 25.  Can be applied up to 3 times.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 11816;

-- Dreadforge Retaliator
UPDATE mangos . item_template
SET quality = 4,
    delay = 2200,
    dmg_min1 = 275,
    dmg_max1 = 205
WHERE entry = 11931;

-- Guiding Stave of Wisdom
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 14,
    stat_type2 = 6,
    stat_value2 = 37,
    stat_type3 = 7,
    stat_value3 = 16,
    spellid_1 = 23264, -- +106 Healing
    spelltrigger_1 = 1
WHERE entry = 11932;

-- Force of Magma
UPDATE mangos . item_template
SET quality = 4,
    delay = 3400,
    dmg_min1 = 191,
    dmg_max1 = 251,
    spellid_1 = 15095, -- Molten Blast
    spelltrigger_1 = 2,
    spellppmrate_1 = 10, 
    spellid_2 = 7598, -- +2% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 11803;

-- Impervious Giant
UPDATE mangos . item_template
SET quality = 4,
    armor = 300,
    dmg_min1 = 145,
    dmg_max1 = 205,
    stat_type1 = 7,
    stat_value1 = 30,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 21410, -- +14 Defense
    spelltrigger_2 = 1
WHERE entry = 11921;

-- Lavastone Hammer
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 191,
    dmg_max1 = 251,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 25,
    stat_type3 = 7,
    stat_value3 = 15,
    spellid_1 = 26158, -- +60 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21365, -- 9 MP/5
    spelltrigger_2 = 1
WHERE entry = 22208;

-- Stone of the Earth
UPDATE mangos . item_template
SET quality = 4,
    armor = 0,
    dmg_min1 = 178,
    dmg_max1 = 238,
    spellid_1 = 10934, -- Smite an enemy for 384 to 429 Holy damage.
    spelltrigger_1 = 2,
    spellppmrate_1 = 5, 
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 11786;

-- Ban'thok Sash
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 16,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 11662;

-- Sash of the Burning Heart
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 16,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 11807;

-- Girdle of Beastial Fury
UPDATE mangos . item_template
SET quality = 4,
    armor = 150,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 20,
    spellid_2 = 13383, -- +5 Defense
    spelltrigger_2 = 1
WHERE entry = 11686;

-- Chillsteel Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 20,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 11783;

-- Sash of the Grand Hunt
UPDATE mangos . item_template
SET quality = 4,
    spellid_4 = 7597, -- +1% Physical Crit
    spelltrigger_4 = 1
WHERE entry = 22207;

-- Verek's Leash
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 22242;

-- Stonewall Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 21,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 11703;

-- Flameweave Cuffs
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 11766;

-- Incendic Bracers
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 9,
    stat_type2 = 7,
    stat_value2 = 9,
    spellid_2 = 14248, -- +21 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 11768;

-- Cinderhide Armsplints
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 11764;

-- Wristguards of Renown
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 22204;

-- Rubicund Armguards
UPDATE mangos . item_template
SET quality = 4,
    stat_type3 = 5,
    stat_value3 = 9,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 11679;

-- Pyremail Wristguards
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 11765;

-- Emberplate Armguards
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 11767;

-- Runed Golem Shackles
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 11,
    stat_type2 = 7,
    stat_value2 = 23
WHERE entry = 12550;

-- Black Steel Bindings
UPDATE mangos . item_template
SET quality = 4,
    stat_type4 = 5,
    stat_value4 = 10,
    stat_type5 = 6,
    stat_value5 = 7,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22205;


-- LBRS

-- Funeral Cuffs
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 14248, -- +21 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 12626;

-- Battleborn Armbraces
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 10
WHERE entry = 12936;

-- Blackmist Armguard
UPDATE mangos . item_template
SET spellid_2 = 9331, -- +20 Attack Power
    spelltrigger_2 = 1
WHERE entry = 12966;

-- Bleak Howler Armguards
UPDATE mangos . item_template
SET spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 13208;

-- Brazecore Armguards
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 13179;

-- Slashclaw Bracers
UPDATE mangos . item_template
SET spellid_2 = 9331, -- +20 Attack Power
    spelltrigger_2 = 1
WHERE entry = 13211;

-- Dustfeather Sash
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12589;

-- Crystallized Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 16,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12606;

-- Belt of the Trickster
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 22325;

-- Cloudrunner Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 21,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 13252;

-- Feralsurge Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 11,
    stat_type2 = 4,
    stat_value2 = 14,
    stat_type3 = 5,
    stat_value3 = 11,
    stat_type4 = 6,
    stat_value4 = 11,
    stat_type5 = 7,
    stat_value5 = 11,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 18104;

-- Brigam Girdle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 24,
    stat_type2 = 7,
    stat_value2 = 11,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 13142;

-- Handcrafted Mastersmith Girdle
UPDATE mangos . item_template
SET quality = 4,
    armor = 400,
    stat_type1 = 3,
    stat_value1 = 19,
    stat_type2 = 5,
    stat_value2 = 19,
    stat_type3 = 7,
    stat_value3 = 11,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 13502;

-- Marksman's Girdle
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 22232;

-- Chiselbrand Girdle
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 12634;

-- Blackhand Doomsaw
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 199,
    dmg_max1 = 269
WHERE entry = 12583;

-- Seeping Willow
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 199,
    dmg_max1 = 269,
    spellid_2 = 26158, -- +60 Spell Damage
    spelltrigger_2 = 1,
    spellid_3 = 21365, -- 9 MP/5
    spelltrigger_3 = 1
WHERE entry = 12969;

-- Chillpike
UPDATE mangos . item_template
SET quality = 4,
    delay = 2200,
    dmg_min1 = 108,
    dmg_max1 = 178,
    spellppmrate_1 = 20,
    spellid_2 = 15817, -- +64 Attack Power
    spelltrigger_2 = 1,
    spellid_3 = 7597, -- +1% Physical Crit
    spelltrigger_3 = 1
WHERE entry = 13148;

-- Relentless Scythe
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 179,
    dmg_max1 = 249,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 13163;

-- Fist of Omokk
UPDATE mangos . item_template
SET quality = 4,
    armor = 300,
    dmg_min1 = 179,
    dmg_max1 = 249,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 22,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 21410, -- +14 Defense
    spelltrigger_2 = 1
WHERE entry = 13167;

-- The Blackrock Slicer
UPDATE mangos . item_template
SET quality = 4,
    delay = 3800,
    dmg_min1 = 212,
    dmg_max1 = 282,
    spellid_1 = 13445, -- Chance on hit: Rend
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 13285;

-- Lord Valthalak's Staff of Command
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 26158, -- +60 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 22335;

-- Trindlehaven Staff
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 23264, -- +106 Healing
    spelltrigger_1 = 1,
    spellid_3 = 21365, -- 9 MP/5
    spelltrigger_3 = 1
WHERE entry = 13161;

-- Blackblade of Shahram
UPDATE mangos . item_template
SET dmg_min1 = 212,
    dmg_max1 = 312
WHERE entry = 12592;

-- Flightblade Throwing Axe
UPDATE mangos . item_template
SET spellid_1 = 15807, -- +32 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 13173;

-- Bonespike Shoulder
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 10,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 15807, -- +32 Attack Power
    spelltrigger_3 = 1
WHERE entry = 12588;

-- Truestrike Shoulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 10,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1,
    spellid_3 = 15807, -- +32 Attack Power
    spelltrigger_3 = 1
WHERE entry = 12927;

-- Slamshot Shoulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 27,
    stat_type2 = 7,
    stat_value2 = 14,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 13166;

-- Sunderseer Mantle
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 23,
    stat_type2 = 6,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 10,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1,
    spellid_2 = 18384, -- +1% Spell Crit
    spelltrigger_2 = 1
WHERE entry = 13185;

-- Demonic Runed Spaulders
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 14,
    stat_type2 = 5,
    stat_value2 = 14,
    stat_type3 = 7,
    stat_value3 = 19,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 13257;

-- Draconian Deflector
UPDATE mangos . item_template
SET quality = 4,
    armor = 2539,
    block = 46
WHERE entry = 12602;

-- Rhombeard Protector
UPDATE mangos . item_template
SET quality = 4,
    armor = 2539,
    block = 46,
    stat_type1 = 5,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21626, -- 6 MP/5
    spelltrigger_2 = 1
WHERE entry = 13205;

-- Draconian Aegis of the Legion
UPDATE mangos . item_template
SET quality = 4,
    armor = 2539,
    block = 46,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 22336;

-- Blackcrow
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 103,
    dmg_max1 = 153,
    spellid_2 = 21440, -- +36 Ranged Attack Power
    spelltrigger_2 = 1
WHERE entry = 12651;

-- Riphook
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 63,
    dmg_max1 = 113,
    spellid_2 = 7597, -- +1% Physical Crit
    spelltrigger_2 = 1
WHERE entry = 12653;

-- Voone's Twitchbow
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 44,
    dmg_max1 = 84,
    spellid_1 = 6685, -- Chance on hit: Shoots at an enemy, inflicting normal damage and reducing the enemy's armor by for 15 sec.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10, 
    spellid_2 = 21440, -- +36 Ranged Attack Power
    spelltrigger_2 = 1
WHERE entry = 13175;

-- Keris of Zul'Serak
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 70,
    dmg_max1 = 110,
    spellppmrate_1 = 15, 
    spellid_2 = 15717, -- Increased Daggers +6
    spelltrigger_2 = 1
WHERE entry = 12582;

-- Phase Blade
UPDATE mangos . item_template
SET quality = 4,
    delay = 1500,
    dmg_min1 = 45,
    dmg_max1 = 105,
    spellid_1 = 21919, -- Thrash (Grants an extra attack on your next swing)
    spelltrigger_1 = 2,
    spellid_2 = 15896, -- Increased 1H Sword +5
    spelltrigger_2 = 1
WHERE entry = 13182;

-- Venomspitter
UPDATE mangos . item_template
SET quality = 4,
    delay = 2700,
    dmg_min1 = 105,
    dmg_max1 = 165,
    spellid_1 = 25991, -- Chance on hit: Shoots poison at an enemy, inflicting Nature damage, then additional damage every 2 sec. for 10 sec.
    spelltrigger_1 = 2,
    spellppmrate_1 = 5
WHERE entry = 13183;

-- Fang of the Crystal Spider
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 55,
    dmg_max1 = 105,
    spellid_1 = 5337, -- Chance on hit: Increases the time between an enemy's attacks by 50% for 8 sec.
    spelltrigger_1 = 2,
    spellppmrate_1 = 15
WHERE entry = 13218;

-- Hurd Smasher
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 54,
    dmg_max1 = 104,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_1 = 18056, -- +40 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 13198;

-- Bashguuder
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 65,
    dmg_max1 = 115
WHERE entry = 13204;

-- Rivenspike
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 105,
    dmg_max1 = 185
WHERE entry = 13286;

-- The Jaw Breaker
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 55,
    dmg_max1 = 105,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_2 = 13387, -- +8 Defense
    spelltrigger_2 = 1
WHERE entry = 22322;

-- Dal'Rend's Sacred Charge
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 115,
    dmg_max1 = 165
WHERE entry = 12940;

-- Dal'Rend's Tribal Guardian
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 65,
    dmg_max1 = 115
WHERE entry = 12940;

-- Demonfork
UPDATE mangos . item_template
SET quality = 4,
    delay = 1800,
    armor = 250,
    dmg_min1 = 65,
    dmg_max1 = 115,
    stat_type1 = 7,
    stat_value1 = 20,
    spellid_1 = 14110, -- Chance on hit: Blasts nearby enemies with thunder increasing the time between their attacks by 11% for 10 sec and doing 7 Nature damage to them.  Will affect up to 4 targets.
    spelltrigger_1 = 2,
    spellppmrate_1 = 15,
    spellid_2 = 15873, -- Increased Axes +5
    spelltrigger_2 = 1
WHERE entry = 12621;

-- Pip's Skinner
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 40,
    dmg_max1 = 90,
    spellid_3 = 15810, -- +44 Attack Power
    spelltrigger_3 = 1
WHERE entry = 12709;

-- Mastersmith's Hammer
UPDATE mangos . item_template
SET quality = 4,
    delay = 1800,
    dmg_min1 = 65,
    dmg_max1 = 115,
    stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 7,
    stat_value2 = 15,
    spellid_1 = 14110, -- Chance on hit: Poisons an enemy for 30 sec. and drains its mana every 3 sec., transferring it to the caster.
    spelltrigger_1 = 2,
    spellppmrate_1 = 15,
    spellid_2 = 21626, -- 6 MP/5
    spelltrigger_2 = 1,
    spellid_3 = 15714, -- +22 Spell Damage
    spelltrigger_3 = 1
WHERE entry = 18048;

-- Emberfury Talisman
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 15808, -- +38 Attack Power
    spelltrigger_2 = 1
WHERE entry = 12929;

-- Tooth of Gnarr
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 9318, -- +33 Healing
    spelltrigger_2 = 1
WHERE entry = 13141;

-- Talisman of Evasion
UPDATE mangos . item_template
SET quality = 4,
    armor = 250,
    stat_type1 = 7,
    stat_value1 = 15,
    spellid_2 = 13387, -- +8 Defense
    spelltrigger_2 = 1
WHERE entry = 13177;

-- Halycon's Spiked Collar
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 15808, -- +38 Attack Power
    spelltrigger_2 = 1,
    spellid_3 = 15464, -- +1% Physical Hit
    spelltrigger_3 = 1
WHERE entry = 13212;

-- Pendant of Celerity
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 20,
    stat_type1 = 7,
    stat_value1 = 10
WHERE entry = 22340;

-- Warmaster Legguards

-- Smolderweb's Eye
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 15
WHERE entry = 13213;

-- Heart of the Scale
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 22852, -- Block Value +23
    spelltrigger_2 = 1
WHERE entry = 13164;

-- Heart of Wyrmthalak
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 15807, -- +32 Attack Power
    spelltrigger_2 = 1
WHERE entry = 22321;

-- Mark of the Dragon Lord
UPDATE mangos . item_template
SET quality = 4,
    spellid_2 = 18041, -- +66 Healing
    spelltrigger_2 = 1
WHERE entry = 13143;

-- Scholomance

-- Barovian Family Sword
UPDATE mangos . item_template
SET spellid_1 = 24672, -- Unholy Frenzy (Increases an ally's attack speed by 50% for 20 sec., but also inflicts 200 Nature damage to that ally every 2 sec)
    spelltrigger_1 = 2
WHERE entry = 14541;

-- Headmaster's Charge

-- Alanna's Embrace

-- Stratholme

-- Demonshear
UPDATE mangos . item_template
SET spellid_1 = 16104, -- Crystallize (Stuns enemies in a cone in front of the caster, rendering them unable to move or attack for 6 sec)
    spelltrigger_1 = 2
WHERE entry = 13348;

-- Runeblade of Baron Rivendare
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 196,
    dmg_max1 = 246,
    spellid_1 = 17467, -- Unholy Aura (150 dmg/tick while in combat)
    spelltrigger_1 = 1
WHERE entry = 13505;

-- Dire Maul

-- Lethtendris's Wand
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 18301;

-- Fiendish Machete
UPDATE mangos . item_template
SET delay = 2800,
    dmg_min1 = 81,
    dmg_max1 = 151
WHERE entry = 18310;

-- Fluctuating Cloak
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 15
WHERE entry = 18382;

-- Band of Vigor
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 18302;

-- Quel'dorai Channeling Rod
UPDATE mangos . item_template
SET spellid_1 = 14127, -- +28 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 18311;

-- Waveslicer
UPDATE mangos . item_template
SET delay = 3500,
    dmg_min1 = 151,
    dmg_max1 = 227,
    spellid_1 = 7219, -- Immune to disarm
    spelltrigger_1 = 1
WHERE entry = 18324;

-- Waterspout Boots
UPDATE mangos . item_template
SET stat_type3 = 7,
    stat_value3 = 10
WHERE entry = 18322;

-- Clever Hat
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 15715, -- +25 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18308;

-- Gloves of Shadowy Mist
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 11743, -- Detect Greater Invisiability
    spelltrigger_2 = 1
WHERE entry = 18306;

-- Razor Gauntlets
UPDATE mangos . item_template
SET spellid_1 = 14127, -- +28 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 18326;

-- Ring of Demonic Guile
UPDATE mangos . item_template
SET spellid_2 = 13387, -- +8 Defense
    spelltrigger_2 = 1
WHERE entry = 18314;

-- Ring of Demonic Potency
UPDATE mangos . item_template
SET spellid_2 = 22417, -- Shadow Shield (Surrounds the caster with a shield woven of Shadow magic. The shield lasts 30 sec., absorbs up to 400 Physical or magical damage, and inflicts 20 damage to melee attackers)
    spelltrigger_2 = 0
WHERE entry = 18315;

-- Well Balanced Axe
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 51,
    dmg_max1 = 101,
    spellid_1 = 21919, -- Thrash (Grants an extra attack on your next swing)
    spelltrigger_1 = 2
WHERE entry = 18347;

-- Gauntlets of Accuracy
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 23729, -- +2% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 18349;

-- Petrified Bark Shield
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 18030, -- +37 Healing
    spelltrigger_2 = 1
WHERE entry = 18352;

-- Stoneflower Staff
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 17997, -- +40 Nature Damage
    spelltrigger_1 = 2
WHERE entry = 18353;

-- Barbed Thorn Necklace
UPDATE mangos . item_template
SET spellid_1 = 17990, -- +27 Nature Damage
    spelltrigger_1 = 1
WHERE entry = 18289;

-- Unbridled Leggings
UPDATE mangos . item_template
SET armor = 220,
    spellid_2 = 13669, -- +1% Dodge
    spelltrigger_2 = 1
WHERE entry = 18298;

-- Phasing Boots
UPDATE mangos . item_template
SET armor = 220,
    spellid_2 = 13670, -- 2% Dodge
    spelltrigger_2 = 1
WHERE entry = 18298;

-- Breakwater Legguards
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 31,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 18305;

-- Energized Chestplate
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 18312;

-- Shadewood Cloak
UPDATE mangos . item_template
SET spellid_1 = 22356, -- Slow (Increases the time between nearby enemies' attacks by 54% and slows their movement by 60% for 10 sec)
    spelltrigger_1 = 2
WHERE entry = 18328;

-- Gallant's Wristguards
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 18459;

-- Quickdraw Gloves 
UPDATE mangos . item_template
SET armor = 200,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 18377;

-- Felhide Cap
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 31,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 18325;

-- Boots of Ferocity
UPDATE mangos . item_template
SET spellid_1 = 5915, -- Crazed (Increases the caster's attack speed by 20% for 1 min)
    spelltrigger_1 = 0,
    spellcooldown_1 = 300000
WHERE entry = 22472;

-- Hammer of Revitalization
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1,
    spellid_3 = 13387, -- +8 Defense
    spelltrigger_3 = 1
WHERE entry = 22315;

-- Huntsman's Harpoon
UPDATE mangos . item_template
SET delay = 3500,
    dmg_min1 = 151,
    dmg_max1 = 227,
    spellid_1 = 6533, -- Net (10s)
    spelltrigger_1 = 0,
    spellcooldown_1 = 300000
WHERE entry = 22314;

-- Monstrous Glaive
UPDATE mangos . item_template
SET delay = 3500,
    dmg_min1 = 151,
    dmg_max1 = 227,
    spellid_1 = 23990, -- Minor Run Speed
    spelltrigger_1 = 1
WHERE entry = 18502;

-- Cyclone Spaulders
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 31,
    spellid_1 = 9332, -- +22 Attack Power
    spelltrigger_1 = 1
WHERE entry = 18528;

-- Crown of the Ogre King
UPDATE mangos . item_template
SET spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 2
WHERE entry = 18526;

-- Grimy Metal Boots
UPDATE mangos . item_template
SET spellid_2 = 20886, -- +3 Arcane Reflect
    spelltrigger_2 = 1
WHERE entry = 18521;

-- Tanglemoss Leggings
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 18390;

-- Brightspark Gloves
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 18387;

-- Bile-etched Spaulders
UPDATE mangos . item_template
SET spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 18384;

-- Timeworn Mace
UPDATE mangos . item_template
SET spellid_1 = 11879, -- 5s Disarm
    spelltrigger_1 = 2
WHERE entry = 18376;

-- Chestplate of Tranquility
UPDATE mangos . item_template
SET spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 18373;

-- Silvermoon Leggings
UPDATE mangos . item_template
SET spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 18378;

-- Diabolic Mantle
UPDATE mangos . item_template
SET spellid_2 = 14794, -- +24 Shadow Damage
    spelltrigger_2 = 1
WHERE entry = 18757;

-- Treant's Bane
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 196,
    dmg_max1 = 246,
    spellid_2 = 7554, -- +7 2H Axe
    spelltrigger_2 = 1
WHERE entry = 18538;

-- Quest Rewards

-- Steelsmith Greaves (Return to Tymor)
UPDATE mangos . item_template
SET quality = 3,
    armor = 400,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 15,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 10707;

-- Skullspell Orb (Return to Tymor)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 10708;

-- Zorbin's Mega-Slicer
UPDATE mangos . item_template
SET quality = 3,
    delay = 2700,
    dmg_type2 = 4,
    dmg_min1 = 61,
    dmg_max1 = 111,
    spellid_1 = 20869, -- Blasts a target for 65 Frost damage.
    spelltrigger_1 = 2,
    spellppmrate_1 = 20 
WHERE entry = 19040;

-- Beaststalker Blade (Shy-Rotam)
UPDATE mangos . item_template
SET quality = 3,
    delay = 2500,
    dmg_min1 = 70,
    dmg_max1 = 130,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 3427, -- Chance on hit: Increases the Physical damage taken by an enemy by 15 for 5 min
    spelltrigger_2 = 2,
    spellppmrate_2 = 5 
WHERE entry = 15782;

-- Beasthunter Dagger (Shy-Rotam)
UPDATE mangos . item_template
SET quality = 3,
    delay = 1800,
    dmg_min1 = 52,
    dmg_max1 = 92,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 3427, -- Chance on hit: Increases the Physical damage taken by an enemy by 15 for 5 min
    spelltrigger_2 = 2,
    spellppmrate_2 = 5 
WHERE entry = 15783;

-- Hunter's Insignia Medal (Shy-Rotam)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 8,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15704;

-- Manacle Cuffs (The Love Potion)
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1,
    spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 11962;

-- Nagmara's Whipping Belt (Nagmara's Whipping Belt)
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 3,
    stat_value1 = 10,
    stat_type2 = 4,
    stat_value2 = 12,
    stat_type3 = 5,
    stat_value3 = 10,
    stat_type4 = 6,
    stat_value4 = 10,
    stat_type5 = 7,
    stat_value5 = 10,
    spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 11866;

-- Magni's Will (The Princess's Surprise)
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 15
WHERE entry = 12548;

-- Songstone of Ironforge (The Princess's Surprise)
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15
WHERE entry = 12543;

-- Zorbin's Water Resistant Hat
UPDATE mangos . item_template
SET quality = 3,
    armor = 200,
    frost_res = 25,
    stat_type4 = 3,
    stat_value4 = 9,
    stat_type5 = 4,
    stat_value5 = 9
WHERE entry = 19039;

-- Surveyor's Tunic
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 7,
    stat_value3 = 8,
    stat_type4 = 6,
    stat_value4 = 8
WHERE entry = 10827;

-- Staff of Lore
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 21364, -- +7 MP/5
    spelltrigger_1 = 1
WHERE entry = 10826;

-- Ceremonial Elven Blade
UPDATE mangos . item_template
SET quality = 3,
    delay = 1300,
    dmg_min1 = 32,
    dmg_max1 = 52,
    spellid_1 = 20883, -- Blasts a target for 70 Arcane damage.
    spelltrigger_1 = 2,
    spellppmrate_1 = 10 
WHERE entry = 11856;

-- Sanctimonial Rod
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 11857;

-- Spirit Hunter Headdress
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5,
    spellid_1 = 9357, -- +16 Nature Damage
    spelltrigger_1 = 1
WHERE entry = 6720;

-- Mantis Boots
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 3764;

-- Brigand's Pauldrons
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 3765;

-- Lunar Buckler
UPDATE mangos . item_template
SET quality = 3,
    armor = 1350,
    block = 19,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 3763;

-- Ryedol's Hammer
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 57,
    dmg_max1 = 87,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 4978;

-- Duskwing Gloves
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 16994;

-- Duskwing Mantle
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 13,
    stat_type2 = 6,
    stat_value2 = 13,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 16995;

-- Ichor Spitter
UPDATE mangos . item_template
SET quality = 3,
    delay = 1500,
    dmg_min1 = 48,
    dmg_max1 = 78,
    stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 17196, -- Lowers all stats by 20 and deals 20 Nature damage every 3 sec to all enemies within an 8 yard radius of the caster for 30 sec.
    spellid_2 = 15873, -- Increased Axes +5
    spelltrigger_2 = 1
WHERE entry = 17002;

-- Skullstone Hammer
UPDATE mangos . item_template
SET quality = 3,
    armor = 150,
    dmg_min1 = 98,
    dmg_max1 = 128,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1,
    spellid_2 = 23203, -- Block Value +15
    spelltrigger_2 = 1
WHERE entry = 17003;

-- Sarah's Guide
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 18049, -- +26 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 17004;

-- Helm of Exile
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 18,
    stat_type2 = 7,
    stat_value2 = 18,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1
WHERE entry = 11124;

-- Avenguard Helm (The God Hakkar)
UPDATE mangos . item_template
SET armor = 600,
    stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 25,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10749;

-- Prismscale Hauberk (Tremors of the Earth)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 4,
    stat_value2 = 15,
    stat_type3 = 5,
    stat_value3 = 7,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1
WHERE entry = 11194;

-- Warforged Chestplate (Tremors of the Earth)
UPDATE mangos . item_template
SET quality = 3,
    armor = 700,
    stat_type1 = 4,
    stat_value1 = 24,
    stat_type2 = 7,
    stat_value2 = 24
WHERE entry = 11195;

-- Bricksteel Gauntlets (Runecloth)
UPDATE mangos . item_template
SET quality = 3,
    armor = 300,
    stat_type1 = 4,
    stat_value1 = 18,
    stat_type2 = 5,
    stat_value2 = 18,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 15823;

-- Chelonian Cuffs (Tooga's Quest)
UPDATE mangos . item_template
SET quality = 3,
    armor = 200,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 9638;

-- Staff of Westfall (The Defias Brotherhood)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 2042;

-- Headbasher (The Fury Runs Deep)
UPDATE mangos . item_template
SET delay = 2000,
    dmg_min1 = 35,
    dmg_max1 = 65,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 1264;

-- Lucine Longsword (What Comes Around...)
UPDATE mangos . item_template
SET quality = 3,
    armor = 0,
    stat_type1 = 0,
    stat_value1 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 3400;

-- Hardened Root Staff (What Comes Around...)
UPDATE mangos . item_template
SET quality = 3,
    armor = 50,
    stat_type1 = 4,
    stat_value1 = 11
WHERE entry = 1317;

-- Sustaining Ring (Knowledge in the Deeps)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 20555, -- Health regeneration rate increased by 10%.  10% of total Health regeneration may continue during combat.
    spelltrigger_1 = 1
WHERE entry = 6743;

-- Prelacy Cape (Researching the Corruption)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17106, -- Allows 5% of your Mana regeneration to continue while casting.
    spelltrigger_1 = 1
WHERE entry = 7004;

-- Arctic Buckler (Blackfathom Villainy)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7677, -- +7 Healing
    spelltrigger_1 = 1
WHERE entry = 7002;

-- Enchanted Gold Bloodrobe (The Completed Robe)
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 18049, -- +26 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6900;

-- Mechanic's Pipehammer (Data Recsue)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9604;

-- Repairman's Cape (Data Recsue)
UPDATE mangos . item_template
SET armor = 50
WHERE entry = 9605;

-- Shoni's Disarming Tool (Gyrodrillmatic Excavationators)
UPDATE mangos . item_template
SET armor = 50,
    dmg_min1 = 28,
    dmg_max1 = 48
WHERE entry = 9608;

-- Talvash's Gold Ring (Gnome Improvement)
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9538;

-- Ancient War Sword
UPDATE mangos . item_template
SET quality = 3,
    delay = 3600,
    dmg_min1 = 79,
    dmg_max1 = 129
WHERE entry = 3209;

-- Silver Spade
UPDATE mangos . item_template
SET quality = 3,
    delay = 2000,
    dmg_min1 = 55,
    dmg_max1 = 85,
  spellid_1 = 14127, -- +28 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4128;

-- Barreling Reaper
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 28,
    dmg_max1 = 48
WHERE entry = 6194;

-- Crescent of Forlorn Spirits
UPDATE mangos . item_template
SET quality = 3,
    delay = 1500,
    dmg_min1 = 20,
    dmg_max1 = 40
WHERE entry = 2044;

-- Belt of Corruption (Zanzil's Secret)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = -5,
    stat_type2 = 7,
    stat_value2 = -5,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4131;

-- Haggard's Axe
UPDATE mangos . item_template
SET inventory_type = 17,
    subclass = 1,
    sheath = 1, -- On back
    quality = 3,
    delay = 3800,
    dmg_min1 = 35,
    dmg_max1 = 48
WHERE entry = 6979;

-- Haggard's Hammer
UPDATE mangos . item_template
SET inventory_type = 17,
    subclass = 5,
    sheath = 1, -- On back
    quality = 3,
    delay = 3800,
    dmg_min1 = 35,
    dmg_max1 = 48
WHERE entry = 6983;

-- Haggard's Dagger
UPDATE mangos . item_template
SET name = 'Hagard\s Shortsword',
    display_id = 20163,
    inventory_type = 21,
    subclass = 7,
    quality = 3,
    dmg_min1 = 12,
    dmg_max1 = 22
WHERE entry = 6980;

-- Haggard's Sword
UPDATE mangos . item_template
SET inventory_type = 17,
    display_id = 22095,
    subclass = 8,
    sheath = 1,
    quality = 3,
    delay = 3800,
    dmg_min1 = 35,
    dmg_max1 = 48
WHERE entry = 6985;

-- Furen's Favor
UPDATE mangos . item_template
SET quality = 3,
    armor = 650,
    block = 15,
    stat_type2 = 7,
    stat_value2 = 7
WHERE entry = 6970;

-- Fire Hardened Coif
UPDATE mangos . item_template
SET quality = 3,
    armor = 300,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 6971;

-- Fire Hardened Hauberk
UPDATE mangos . item_template
SET quality = 4,
    armor = 450,
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 20,
    spellid_1 = 9174, -- Increase Rage by 30
    spelltrigger_1 = 0,
    spellcooldown_1 = 300000,
    spellid_2 = 9140, -- +10 Attack Power
    spelltrigger_2 = 1
WHERE entry = 6972;

-- Fire Hardened Leggings
UPDATE mangos . item_template
SET quality = 3,
    armor = 375,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 6973;

-- Fire Hardened Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    armor = 250,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 6974;

-- Whirlwind Sword
UPDATE mangos . item_template
SET quality = 4,
    delay = 3600,
    dmg_min1 = 144,
    dmg_max1 = 194
WHERE entry = 6977;

-- Whirlwind Axe
UPDATE mangos . item_template
SET quality = 4,
    delay = 3600,
    dmg_min1 = 144,
    dmg_max1 = 194
WHERE entry = 6975;

-- Whirlwind Warhammer
UPDATE mangos . item_template
SET quality = 4,
    delay = 3600,
    dmg_min1 = 144,
    dmg_max1 = 194
WHERE entry = 6976;

-- Archeus
UPDATE mangos . item_template
SET quality = 3,
    delay = 3600,
    dmg_min1 = 79,
    dmg_max1 = 129,
    stat_type1 = 4,
    stat_value1 = 15
WHERE entry = 2000;

-- Linken's Sword of Mastery
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    dmg_min1 = 66,
    dmg_max1 = 96,
    spellid_2 = 21471, -- 2% Shield Block
    spelltrigger_2 = 1,
    spellid_3 = 23203, -- Block Value +15
    spelltrigger_3 = 1
WHERE entry = 11902;

-- Orb of Dar'Orahil
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 14794, -- +24 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 15108;

-- Staff of Dar'Orahil
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 18011, -- +30 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 15106;

-- Orb of Noh'Orahil
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17866, -- +24 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 15107;

-- Staff of Noh'Orahil
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17869, -- +30 Fire Damage
    spelltrigger_1 = 1
WHERE entry = 15105;

-- Baroque Apron (... and Bugs)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 6,
    stat_value2 = 7,
    stat_type3 = 7,
    stat_value3 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 6801;

-- Everlast Boots (Power Stones)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 5,
    spellid_1 = 21347, -- +4 HP/5
    spelltrigger_1 = 1,
    spellid_2 = 21361, -- 3 MP/5
    spelltrigger_2 = 1
WHERE entry = 10359;

-- Explorer's League Lodestar (The Hidden Chamber)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 7,
    stat_type2 = 4,
    stat_value2 = 7,
    stat_type3 = 7,
    stat_value3 = 7
WHERE entry = 9627;

-- Dwarven Charge (The Hidden Chamber)
UPDATE mangos . item_template
SET quality = 3,
    delay = 3700,
    dmg_min1 = 123,
    dmg_max1 = 173
WHERE entry = 9626;

-- Lucky Trousers (In Defense of the King's Lands)
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    stat_type3 = 7,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 1832;

-- Spark of the People's Militia (The People's Militia)
UPDATE mangos . item_template
SET dmg_min1 = 26,
    dmg_max1 = 46,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 12296;

-- Moonstone Wand (The Blackwood Corrupted)
UPDATE mangos . item_template
SET dmg_min1 = 20,
    dmg_max1 = 40,
    stat_type1 = 6,
    stat_value1 = 5
WHERE entry = 15204;

-- Timberland Armguards (WANTED: Murkdeep!)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 0,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5315;

-- Relic Hunter Belt (The Absent Minded Prospector)
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    stat_type3 = 7,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11936;

-- Skullchipper (The Absent Minded Prospector - Final)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 55,
    dmg_max1 = 83
WHERE entry = 5626;

-- Relic Blade (The Absent Minded Prospector - Final)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 19,
    dmg_max1 = 37,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 5627;

-- Hardwood Cudgel (Mathystra Relics)
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    stat_type3 = 7,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5757;

-- Woodsman Sword (Mathystra Relics)
UPDATE mangos . item_template
SET dmg_min1 = 37,
    dmg_max1 = 67
WHERE entry = 5615;

-- Minor Channeling Ring (WANTED: Chok'sul)
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 1449;

-- Kimbra Boots (WANTED: Chok'sul)
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 6191;

-- Everglow Lantern (Supplies to Auberdine)
UPDATE mangos . item_template
SET spellcooldown_1 = 60000
WHERE entry = 5323;

-- Clergy Ring (The Tower of Althalaxx)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 0,
    spellid_1 = 9252, -- Restores 80 to 240 mana.
    spelltrigger_1 = 0,
    spellcooldown_1 = 300000
WHERE entry = 5622;

-- Staff of the Purifier (The Tower of Althalaxx)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 0,
    spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1,
    spellcooldown_1 = 30000,
    spellcharges_1 = 0
WHERE entry = 5613;

-- Pious Legwraps (The Tower of Althalaxx - Final)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 5,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 21347, -- +4 HP/5
    spelltrigger_1 = 1,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 10043;

-- Seraph's Strike (The Tower of Althalaxx - Final)
UPDATE mangos . item_template
SET quality = 3,
    delay = 3600,
    dmg_min1 = 79,
    dmg_max1 = 129,
    stat_type1 = 3,
    stat_value1 = 20
WHERE entry = 5614;

-- Robes of Antiquity (Ruuzel)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5812;

-- Fish Gutter (Stormwind Ho!) 3755
UPDATE mangos . item_template
SET delay = 2700,
    dmg_min1 = 44,
    dmg_max1 = 74,
    stat_type1 = 5,
    stat_value1 = 8
WHERE entry = 3755;

-- Ring of Iron Will (Howling in the Hills)
UPDATE mangos . item_template
SET armor = 30,
    stat_type1 = 7,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 0
WHERE entry = 1319;

-- Fen Keeper Robe (Blisters on The Land)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 15
WHERE entry = 3558;

-- Rose Mantle (Morganth)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5274;

-- Excavation Rod (Ormer's Revenge)
UPDATE mangos . item_template
SET spellid_1 = 21624, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 5246;

-- Moonbeam Wand (Answered Questions)
UPDATE mangos . item_template
SET arcane_res = 8,
    fire_res = 8,
    nature_res = 8,
    frost_res = 8,
    shadow_res = 8
WHERE entry = 5818;

-- Dwarven Flamestick (Gathering Idols)
UPDATE mangos . item_template
SET dmg_min1 = 20,
    dmg_max1 = 40,
    stat_type1 = 7,
    stat_value1 = 5
WHERE entry = 5241;

-- Zodiac Gloves (Look To The Stars)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 12
WHERE entry = 7106;

-- Luminescent Amice(Fallen Sky Lake) 
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    stat_type3 = 7,
    stat_value3 = 0,
    spellid_1 = 17106, -- Allows 5% of your Mana regeneration to continue while casting.
    spelltrigger_1 = 1
WHERE entry = 17047;

-- Ring of Pure Silver (Raene's Cleansing)
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 0, 
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 1116;

-- Mantle of Honor (Bride of the Embalmer)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 3560;

-- Crest of Darkshire (Bride of the Embalmer)
UPDATE mangos . item_template
SET spellid_1 = 17350, -- Has a 1% chance when struck in combat of increasing chance to block by 50% for 10 sec.
    spelltrigger_1 = 1
WHERE entry = 6223;

-- Night Watch Pantaloons (Morbent Fel)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 23688, -- 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
    spelltrigger_1 = 1
WHERE entry = 2954;

-- Swampland Trousers (The Thandol Span)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4505;

-- Cloak of the Faith (Worgen in the Woods)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 0,
    stat_type2 = 7,
    stat_value2 = 0,
    spellid_1 = 21347, -- +4 HP/s
    spelltrigger_1 = 1,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 2902;

-- Shield of the Faith (Worgen in the Woods)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 6,
    stat_value2 = 5,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 1547;

-- Consecrated Wand (Worgen in the Woods)
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 5244;

-- Tranquil Ring (A Grim Task)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 0,
    spellid_1 = 28862, -- Reduces the threat you generate by 35% for 20 sec.
    spelltrigger_1 = 0,
    spellcooldown_1 = 600000
WHERE entry = 2917;

-- Robe of Crystal Waters (The Curse of the Tides)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 4120;

-- Robe of Solomon (Missing In Action)
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    spellid_1 = 23688, -- 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
    spelltrigger_1 = 1
WHERE entry = 3555;

-- Bookmaker's Scepter (The Hidden Key)
UPDATE mangos . item_template
SET spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 4122;

-- Ring of Forlorn Spirits (The Legend of Stalvan)
UPDATE mangos . item_template
SET stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 2043;

-- Hellion Boots (The Karnitol Shipwreck)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6791;

-- Wingborne Boots (The Karnitol Shipwreck)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15104;

-- Burning Sliver (Crushridge Warmongers)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 42,
    dmg_max1 = 62,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 5249;

-- Rod of Sorrow (Wanted! Otto and Falconcrest)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 66,
    dmg_max1 = 86,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5247;

-- War Rider Bracers (Wanted! Otto and Falconcrest)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4745;

-- Vigilant Buckler (Malin's Request)
UPDATE mangos . item_template
SET quality = 3,
    armor = 1350,
    block = 19,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4975;

-- Wingborne Boots (Malin's Request)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15104;

-- Arcane Runed Bracers (Wanted! Marez Cowl)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 4744;

-- Blood-tinged Armor (Wanted! Marez Cowl)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 5,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4508;

-- Stromgarde Cavalry Leggings (Stromgarde Badges)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4741;

-- Reedknot Ring (Jarl Needs a Blade
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9622;

-- Artisan's Trousers (Jarl Needs a Blade)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 0,
    stat_type2 = 6,
    stat_value2 = 3,
    spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1
WHERE entry = 5016;

-- Dwarf Captain's Sword (An Ambassador of Evil)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4987;

-- Gemmed Gloves (Hostile Takeover)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 7,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4121;

-- Captain Rackmore's Tiller (Claim Rackmore's Treasure!)
UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 16789;

-- Silkstream Cuffs (Book of the Ancients)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 7,
    stat_value2 = 3,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 16791;

-- Kodo Brander (Gizelton Caravan)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 6
WHERE entry = 15692;

-- Fizzle's Zippy Lighter (News for Fizzle)
UPDATE mangos . item_template
SET spellid_1 = 25975, -- +10 Spell Penetration
    spelltrigger_1 = 1
WHERE entry = 6729;

-- Cap of the Scarlet Savant
UPDATE mangos . item_template
SET spellid_2 = 17367, -- +32 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 12752;

-- Condor Bracers (Ghost-o-plasm Round Up)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 3,
    stat_type2 = 7,
    stat_value2 = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15864;

-- Anchorhold Buckle(Ghost-o-plasm Round Up)
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 15865;

-- Gnomish Zapper (Sunken Treasure)
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4547;

-- Orb of Lorica (In the Name of the Light)
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 11262;

-- Teacher's Sash (Mazen's Behest)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9416, -- +11 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10747;

-- Wanderlust Boots (Mazen's Behest)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 10748;

-- Goblin Igniter (Venture Company Mining)
UPDATE mangos . item_template
SET arcane_res = 12,
    fire_res = 12,
    nature_res = 12,
    frost_res = 12,
    shadow_res = 12
WHERE entry = 5253;

-- Black Water Hammer (Deep Sea Salvage)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 66,
    dmg_max1 = 96
WHERE entry = 4511;

-- Silent Hunter (Call to Arms)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 37,
    dmg_max1 = 67
WHERE entry = 9520;

-- Skullsplitter (Call to Arms)
UPDATE mangos . item_template
SET quality = 3,
    delay = 3600,
    dmg_min1 = 111,
    dmg_max1 = 141
WHERE entry = 9521;

-- Royal Highmark Vestments
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9649;

-- Jademoon Orb
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 11859;

-- Stargazer Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 5,
    spellid_1 = 17106, -- Allows 5% of your Mana regeneration to continue while casting.
    spelltrigger_1 = 1
WHERE entry = 9660;

-- Boots of the Maharishi
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 5,
    spellid_1 = 15604, -- Restores 30 mana every 1 sec for 10 sec. (300 mana total)
    spelltrigger_1 = 0,
    spellcooldown_1 = 900000 -- 15 minutes
WHERE entry = 9658;

-- Wingcrest Gloves
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9417, -- +12 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9665;

-- Stronghorn Girdle
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 9666;

-- Firewalker Boots
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6482;

-- Insulated Sage Gloves (Syndicate Assassins)
UPDATE mangos . item_template
SET stat_type1 = 0,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 3759;

-- Coldwater Ring (Death From Below)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 4550;

-- Tok'kar's Murloc Basher
UPDATE mangos . item_template
SET quality = 3,
    delay = 2000,
    dmg_min1 = 75,
    dmg_max1 = 105,
    spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9678;

-- Tok'kar's Murloc Chopper
UPDATE mangos . item_template
SET quality = 3,
    delay = 3800,
    dmg_min1 = 146,
    dmg_max1 = 196
WHERE entry = 9679;

-- Tok'kar's Murloc Shanker
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 41,
    dmg_max1 = 71
WHERE entry = 9680;

-- White Bone Band
UPDATE mangos . item_template
SET quality = 3
WHERE entry = 11862;

-- White Bone Shredder
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 34,
    dmg_max1 = 64
WHERE entry = 11863;

-- White Bone Spear
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 101,
    dmg_max1 = 141,
    stat_type1 = 3,
    stat_value1 = 21,
    stat_type2 = 7,
    stat_value2 = 3
WHERE entry = 11864;

-- Force of the Hippogryph
UPDATE mangos . item_template
SET quality = 3,
    inventory_type = 13, -- One-handed (MH or OH)
    dmg_min1 = 64,
    dmg_max1 = 104,
    stat_type1 = 0,
    stat_value1 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 9684;

-- Spirit of the Faerie Dragon
UPDATE mangos . item_template
SET quality = 3,
    delay = 1500,
    dmg_min1 = 37,
    dmg_max1 = 67,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9686;

-- Strength of the Treant
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 9683;

-- Will of the Mountain Giant
UPDATE mangos . item_template
SET quality = 3,
    delay = 2200,
    dmg_min1 = 74,
    dmg_max1 = 124,
    spellid_1 = 10373, -- Chance on hit: Delivers a fatal wound for 250 to 350 damage.
    spelltrigger_1 = 2
WHERE entry = 10652;

-- Lagrave's Seal
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 12038;

-- Ring of Subtlety
UPDATE mangos . item_template
SET name = 'Battlehealer\'s Ring',
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5   
WHERE entry = 19038;

-- Lavaplate Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    fire_res = 15,
    spellid_1 = 7721, -- +4 Fire damage to weapon attacks
    spelltrigger_1 = 1
WHERE entry = 12111;

-- Royal Seal of Alexis
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 18022;

-- Elemental Circle
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 17001;

-- Medicine Blanket (Stranglethorn Fever)
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 4,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4113;

-- Chainlink Towel
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 3,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 9648;

-- Tranquil Orb
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 4125;

-- Enchanted Stonecloth Bracers
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 4,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 4979;

-- Doomsayer's Robe (Solution to Doom)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 11903, -- Restores 700 to 900 mana
    spelltrigger_1 = 0,
    spellcooldown_1 = 300000 -- 5 minutes
WHERE entry = 4746;

-- Medal of Courage (The Lost Tablets of Will)
UPDATE mangos . item_template
SET armor = 50
WHERE entry = 6723;

-- Thermotastic Egg Timer (Rescue OOX-17/TN!)
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 9,
    stat_type2 = 4,
    stat_value2 = 9
WHERE entry = 9644;

-- Cairnstone Sliver (The Morrow Stone)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 9654;

-- Seedtime Hoop (The Morrow Stone)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 4,
    stat_value2 = 12
WHERE entry = 9655;

-- Runesteel Vambraces (Prayer to Elune)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 6,
    stat_type2 = 4,
    stat_value2 = 12
WHERE entry = 10746;

-- Gryphon Rider's Stormhammer (Saving Sharpbeak)
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 72,
    dmg_max1 = 122,
    spellid_2 = 9346, -- +18 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 9651;

-- Band of the Great Tortoise
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 12,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 9642;

-- Raptor Hunter Tunic (Raptor Mastery)
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 16,
    stat_type2 = 4,
    stat_value2 = 4,
    stat_type3 = 7,
    stat_value3 = 3
WHERE entry = 4119;

-- Mindburst Medallion (Tremors of the Earth)
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 9417, -- +12 spell damage
    spelltrigger_2 = 1
WHERE entry = 11196;

-- Pulsating Crystalline Shard (Summoning the Princess)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 4743;

-- Smotts' Compass (Facing Negolash)
UPDATE mangos . item_template
SET quality = 3,
    armor = 150,
    stat_type1 = 7,
    stat_value1 = 12
WHERE entry = 4130;

-- Guardian Talisman (Into The Temple of Atal'Hakkar)
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 21466, -- 1% Shield Block
    spelltrigger_2 = 1,
    spellid_3 = 23172, -- Block Value +10
    spelltrigger_3 = 1
WHERE entry = 1490;

-- Ring of Fortitude (Rise, Obsidion!)
UPDATE mangos . item_template
SET name = 'Spellslingers Ring',
    quality = 3,
    stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 10739;

-- Dragonflight Leggings (Set Them Ablaze!)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 6,
    stat_value1 = 12,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10742;

-- Drakefire Headguard (Set Them Ablaze!)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type3 = 6,
    stat_value3 = 9,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 10743;

-- Auric Bracers (Reagents for Reclaimers Inc - Final)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6793;

-- Stormfire Gauntlets (Reagents for Reclaimers Inc - Final)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 6794;

-- Axe of the Ebon Drake (Set Them Ablaze!)
UPDATE mangos . item_template
SET quality = 3,
    delay = 1500,
    dmg_min1 = 40,
    dmg_max1 = 70
WHERE entry = 10744;

-- Ring of the Aristocrat (The Smoldering Ruins of Thaurissan)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 6,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9314, -- +24 Healing
    spelltrigger_1 = 1
WHERE entry = 12102;

-- Hazecover Boots (A Little Slime Goes a Long Way)
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 6,
    stat_type2 = 7,
    stat_value2 = 6, 
    spellid_1 = 7681, -- +15 Healing
    spelltrigger_1 = 1
WHERE entry = 12050;

-- Ethereal Mist Cape (Ancient Spirit)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11873;

-- Shard of the Splithooves (Heroes of Old)
UPDATE mangos . item_template
SET spellid_3 = 9408, -- +22 Healing
    spelltrigger_3 = 1
WHERE entry = 10659;

-- Fairywing Mantle (A Fine Mess)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 5,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 9536;

-- Berylline Pads (The Crone of the Kraul)
UPDATE mangos . item_template
SET spellid_1 = 25975, -- +10 Spell Penetration
    spelltrigger_1 = 1
WHERE entry = 4197;

-- Snake Hoop (Willix the Importer)
UPDATE mangos . item_template
SET spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 6750;

-- Mourning Shawl (Mortality Wanes)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = -7,
    stat_type2 = 6,
    stat_value2 = -7,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 6751;

-- Dragonclaw Ring (Extinguishing the Idol)
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 21347, -- +4 HP/5
    spelltrigger_1 = 1,
    spellid_2 = 21360, -- 2 MP/5
    spelltrigger_2 = 1
WHERE entry = 10710;

-- Brantwood Sash (A Final Blow)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15707;

-- Spellshifter Rod (Tiara of the Deep)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9527;

-- Engineer's Guild Headpiece (Divino-matic Rod)
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 9534;

-- Resurgence Rod (Corruption of Earth and Seed)
UPDATE mangos . item_template
SET spellid_2 = 14248, -- +21 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 17743;

-- Woodseed Hoop (Vyletongue Corruption)
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 7,
    stat_value2 = 4,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 17768;

-- Branchclaw Gauntlets (Vyletongue Corruption)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 17770;

-- Prodigious Shadowshard Pendant (Shadowshard Fragments)
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 17773;

-- Mark of the Chosen (The Pariah's Instructions)
UPDATE mangos . item_template
SET spellid_2 = 23172, -- Block Value +10
    spelltrigger_2 = 1
WHERE entry = 17774;

-- Acumen Robes (Twisted Evils)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 17775;

-- Argent Crusader (The Argent Hold)
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 13249;

-- Archlight Talisman (Hidden Treasures)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15856;

-- Magebane Scion (Hidden Treasures) TODO
-- UPDATE mangos . item_template
-- SET spellid_1 = 9415, -- +9 Spell Damage
    -- spelltrigger_1 = 1
-- WHERE entry = 15857;

-- Crown of the Penitent (Houses of the Holy)
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 13216;

-- Penelope's Rose (Kirtonos the Herald)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15805;

-- Mark of Resolution (Alas, Andorhal)
UPDATE mangos . item_template
SET quality = 3,
    armor = 50,
    stat_type1 = 7,
    stat_value1 = 15
WHERE entry = 17759;

-- Shroud of the Exile (In Dreams)
UPDATE mangos . item_template
SET spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15421;

-- Shimmering Platinum Warhammer (In Dreams)
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 26153, -- +140 Feral attack Power
    spelltrigger_2 = 1
WHERE entry = 15418;

-- Crown of Caer Darrow (The Lich, Ras Frostwhisper)
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 13986;

-- Crystal Breeze Mantle (High Chief Winterfall)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15784;

-- Wyrmthalak's Shackles (Maxwell's Mission)
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 13958;

-- Halycon's Muzzle (Maxwell's Mission)
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13961;

-- Astoria Robes (Put Her Down)
UPDATE mangos . item_template
SET spellid_1 = 9345, -- +16 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15824;

-- Jadescale Breastplate (Put Her Down)
UPDATE mangos . item_template
SET spellid_1 = 9345, -- +16 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 15827;

-- Lorespinner (Lethtendris's Web)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18491;

-- Milli's Lexicon (Shards of the Felvine)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18536;

-- Milli's Shield (Shards of the Felvine)
UPDATE mangos . item_template
SET spellid_2 = 9408, -- +22 Healing
    spelltrigger_2 = 1
WHERE entry = 18535;

-- Gordok's Gauntlets (Unfinished Gordok Business)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18367;

-- Gordok's Gloves (Unfinished Gordok Business)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18368;

-- Gordok's Handwraps (Unfinished Gordok Business)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 18369;

-- Sedge Boots (The Treasure of the Shen'dralar)
UPDATE mangos . item_template
SET stat_type3 = 4,
    stat_value3 = 16
WHERE entry = 18424;

-- Bonecrusher (The Treasure of the Shen'dralar)
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 30,
    spellid_2 = 15465, -- +2% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 18420;

-- Necklace of Sanctuary (You Are Rakh'likh, Demon)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9298, -- +21 Fire Damage
    spelltrigger_1 = 1,
    spellid_2 = 14794, -- +24 Shadow Damage
    spelltrigger_2 = 1
WHERE entry = 10778;

-- Demon's Blood (You Are Rakh'likh, Demon)
UPDATE mangos . item_template
SET quality = 3,
    spellid_2 = 28773, -- Glyph of Deflection (Increases the block value of your shield by 235 for 20 sec.)
    spelltrigger_2 = 0,
    spellcooldown_2 = 180000
WHERE entry = 10779;

-- Demon Hide Sack (You Are Rakh'likh, Demon)
UPDATE mangos . item_template
SET quality = 3,
    container_slots = 18
WHERE entry = 10959;

-- Faded Hakkari Cloak (Confront Yeh'kinya)
UPDATE mangos . item_template
SET spellid_2 = 9415, -- +9 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 20218;

-- Tattered Hakkari Cape (Confront Yeh'kinya)
UPDATE mangos . item_template
SET armor = 120,
    spellid_2 = 13383, -- +5 Defense
    spelltrigger_2 = 1
WHERE entry = 20219;

-- Plow Wood Spaulders (The Crystal of Zin-Malor)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 17990, -- +27 Nature Damage
    spelltrigger_1 = 1
WHERE entry = 15792;

-- Turquoise Sash (The Crystal of Zin-Malor)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 12051, -- Evocation
    spelltrigger_1 = 0
WHERE entry = 15791;

-- Emerald Mist Gauntlets (The Crystal of Zin-Malor)
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21142, -- +5 Immolation (Deals 5 Fire damage to anyone who strikes you with a melee attack)
    spelltrigger_1 = 1
WHERE entry = 15795;

-- Prismcharm (Urok Doomhowl)
UPDATE mangos . item_template
SET arcane_res = 15,
    fire_res = 15,
    nature_res = 15,
    frost_res = 15,
    shadow_res = 15
WHERE entry = 15867;

-- (The Perfect Poison)

-- Ravenholdt Slicer
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 100,
    dmg_max1 = 190
WHERE entry = 22378;

-- Shivsprocket's Shiv
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18053, -- +36 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22379;

-- The Thunderwood Poke
UPDATE mangos . item_template
SET quality = 4,
    delay = 1900,
    dmg_min1 = 64,
    dmg_max1 = 119
WHERE entry = 22377;

-- Doomulus Prime
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 165,
    dmg_max1 = 285,
    spellid_2 = 26158, -- +60 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 22348;

-- Fahrad's Reloading Repeater
UPDATE mangos . item_template
SET quality = 4,
    dmg_min1 = 90,
    dmg_max1 = 140
WHERE entry = 22347;

-- Simone's Cultivating Hammer
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 18035, -- +51 Healing
    spelltrigger_1 = 1
WHERE entry = 22380;


-- (Epic Armaments of Battle)

-- Amulet of the Dawn
UPDATE mangos . item_template
SET spellid_1 = 15714, -- +22 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 22657;

-- Bracers of Hope
UPDATE mangos . item_template
SET spellid_1 = 18033, -- +46 Healing
    spelltrigger_1 = 1
WHERE entry = 22667;

-- Bracers of Subterfuge
UPDATE mangos . item_template
SET spellid_1 = 15807, -- +32 Attack Power
    spelltrigger_1 = 1
WHERE entry = 22668;

-- Medallion of the Dawn
UPDATE mangos . item_template
SET spellid_1 = 15807, -- +32 Attack Power
    spelltrigger_1 = 1
WHERE entry = 22659;

-- Talisman of Ascendance
UPDATE mangos . item_template
SET spellid_2 = 17367, -- +32 Spell Damage
    spelltrigger_2 = 1
WHERE entry = 22678;

-- The Purifier
UPDATE mangos . item_template
SET dmg_min1 = 95,
    dmg_max1 = 175,
    spellid_2 = 9140, -- +10 Attack Power
    spelltrigger_2 = 1
WHERE entry = 22656;

-- Vendors

-- Daring Dirk
UPDATE mangos . item_template
SET quality = 3,
    dmg_min1 = 31,
    dmg_max1 = 61,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 12248;

-- Brilliant Red Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 6,
    stat_type2 = 5,
    stat_value2 = 6,
    stat_type2 = 7,
    stat_value2 = 6
WHERE entry = 12253;

-- Well Oiled Cloak
UPDATE mangos . item_template
SET quality = 3,
    armor = 75,
    fire_res = -15,
    stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 8
WHERE entry = 12254;

-- Legionnaire's Leggings
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 3,
    stat_value3 = 5
WHERE entry = 4816;

-- Mighty Chain Pants
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 4800;

-- Glorious Shoulders
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 4833;

-- Elite Shoulders
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 3,
    stat_value3 = 5
WHERE entry = 4835;

-- Fiery Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 4,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 4797;

-- Heavy Runed Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 4,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 4798;

-- Orb of Power
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4838;

-- Heavy Notched Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 10
WHERE entry = 12257;

-- TODO
-- -- Whispering Vest
-- UPDATE mangos . item_template
-- SET quality = 3,
--     spellid_1 = 9395, -- +5 Spell Damage
--     spelltrigger_1 = 1
-- WHERE entry = 4781;

-- -- Solstice Robe
-- UPDATE mangos . item_template
-- SET quality = 3,
--     spellid_1 = 21360, -- 2 MP/5
--     spelltrigger_1 = 1
-- WHERE entry = 4782;

-- -- Wise Man's Belt
-- UPDATE mangos . item_template
-- SET quality = 3,
--     spellid_1 = 21360, -- 2 MP/5
--     spelltrigger_1 = 1
-- WHERE entry = 4786;

-- Antiquated Cloak
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 3,
    stat_value1 = 4,
    stat_type2 = 4,
    stat_value2 = 4,
    stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 4799;

-- Stable Boots
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 4,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 4789;

-- Agile Boots
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 4,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 4788;

-- Wolf Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 4794;

-- Bear Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 4,
    stat_value2 = 4,
    stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 4795;

-- Owl Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 3,
    stat_value2 = 4,
    stat_type3 = 4,
    stat_value3 = 4
WHERE entry = 4796;

-- Saber Leggings
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 4830;

-- Mystic Sarong
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 7
WHERE entry = 4832;

-- Stalking Pants
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 4831;

-- Wizard's Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 4827;

-- Nightwind Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 4828;

-- Dreamer's Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 4829;

-- Rare mob drops

-- Tromping Miner's Boots (Digmaster Shovelphlange)
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 7,
    stat_value3 = 7
WHERE entry = 9382;

-- Shovelphlange's Mining Axe (Digmaster Shovelphlange)
UPDATE mangos . item_template
SET dmg_min1 = 69,
    dmg_max1 = 99
WHERE entry = 9378;

-- Cloak of Rot (Lord Malathrom)
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = -10,
    stat_type2 = 7,
    stat_value2 = -10, 
    spellid_1 = 9324, -- +16 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 4462;

-- Random Drops

-- Greens

-- TODO:
-- Lodestone Necklace
-- Protector Set
-- Lofty Set
-- Revengant Set
-- Pridelord Set
-- Elunarian Set
-- Highborne / Highborn(?) Set
-- Warstrike Set
-- Protector Set
-- Heavy Lamellar Set
-- Indomitable Set
-- Ghostwalker Set
-- Ravager's Set
-- Valorous Set
-- Vanguard Set
-- Warden's Set
-- Windchaser Set
-- Geomancer's Set
-- Imperial Leather Set
-- Jazeraint Set
-- Sorcerer Drape(?) Set
-- Gothic Set
-- Trickster's Set
-- Imperial Leather Set
-- Embossed Plate Set
-- Ancient Set
-- Crusader's Set
-- Bloodwoven Set (-stam and high spell damage?)
-- Rageclaw Set
-- Formidable Set
-- Jadefire Set
-- Brutish Set
-- Chieftain's Set
-- Serpentskin Set
-- Righteous Set
-- Lord's Set
-- Merciless Set
-- Ironhide Set
-- Wolf Rider's Set
-- Stardust Band
-- Venomshroud Boots
-- Green shields
-- Green / Blue offhands
-- Blue necks / rings / trinkets
-- Green / Blue Staves and Wands

-- Hibernal Armor
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 8106;

-- Enduring Boots
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 7,
    stat_value3 = 7
WHERE entry = 14762;

-- Warleader's Set
-- Warleader's Breastplate
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1,
    spellid_2 = 23203, -- Block Value +15
    spelltrigger_2 = 1
WHERE entry = 14862;

-- Warleader's Crown
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1,
    spellid_2 = 23203, -- Block Value +15
    spelltrigger_2 = 1
WHERE entry = 14866;

-- Warleader's Shoulders
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1
WHERE entry = 14868;

-- Warleader's Bracers
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 20886, -- +3 Arcane Reflect
    spelltrigger_1 = 1
WHERE entry = 14869;

-- Warleader's Bracers
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13669, -- +1% Dodge
    spelltrigger_1 = 1
WHERE entry = 14869;

-- Warleader's Leggings
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1,
    spellid_2 = 23203, -- Block Value +15
    spelltrigger_2 = 1
WHERE entry = 14867;

-- Warleader's Belt
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13669, -- +1% Dodge
    spelltrigger_1 = 1
WHERE entry = 14864;

-- Warleader's Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1
WHERE entry = 14863;

-- Warleader's Greaves
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21466, -- 1% Shield Block
    spelltrigger_1 = 1
WHERE entry = 14865;

-- Warleader's Shield
UPDATE mangos . item_template
SET quality = 3,
    armor = 2000,
    block = 36,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 15991;

-- Bloodlust Set
-- Bloodlust Breastplate
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 10,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14798;

-- Bloodlust Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14802;

-- Bloodlust Boots
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14799;

-- Bloodlust Helm
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type3 = 6,
    stat_value3 = 8,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 14804;

-- Bloodlust Britches
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 6,
    stat_value3 = 10,
    spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 14805;

-- Bloodlust Epaulets
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14806;

-- Bloodlust Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14803;

-- Bloodlust Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 4,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14807;

-- Bloodlust Cape
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 3,
    stat_type2 = 5,
    stat_value2 = 3,
    stat_type3 = 6,
    stat_value3 = 3,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14801;

-- Bloodlust Buckler
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 6,
    stat_value3 = 7,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 14800;

-- Dragonscale Band
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9336, -- +30 Attack Power
    spelltrigger_1 = 1,
    spellid_2 = 9345, -- +16 Spell damage
    spelltrigger_2 = 1,
    spellid_3 = 21361, -- 3 MP/5
    spelltrigger_3 = 1
WHERE entry = 12057;

-- Ravager's Woolies
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 10,
    stat_type3 = 7,
    stat_value3 = 9
WHERE entry = 14775;

-- Glyphed Helm
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    stat_type3 = 7,
    stat_value3 = 8
WHERE entry = 6422;

-- Nightsky Robe
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 4,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 23727, -- +1% Spell Hit
    spelltrigger_2 = 1
WHERE entry = 4038;

-- Aurora Armor
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 18,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 7112;

-- Pressed Felt Robe
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 1997;

-- Stonecloth Gloves
UPDATE mangos . item_template
SET armor = 50,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 21347, -- +4 HP/5
    spelltrigger_1 = 1
WHERE entry = 14411;

-- Tellurium Necklace
UPDATE mangos . item_template
SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 12023;

-- Tellurium Necklace
UPDATE mangos . item_template
SET armor = 100
WHERE entry = 7548;

-- Tellurium Necklace
UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 12043;

-- Onyx Choker
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 12032;

-- Onyx Choker
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 12024;

-- Arctic Pendant
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 12044;

-- Fire Opal Necklace
UPDATE mangos . item_template
SET spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 11946;

-- Marble Necklace
UPDATE mangos . item_template
SET spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 12034;

-- Selenium Chain
UPDATE mangos . item_template
SET spellid_1 = 9345, -- +16 Spell damage
    spelltrigger_1 = 1
WHERE entry = 12025;

-- Swamp Pendant
UPDATE mangos . item_template
SET spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 12045;

-- Obsidian Pendant
UPDATE mangos . item_template
SET spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1
WHERE entry = 12035;

-- Quicksilver Pendant 
UPDATE mangos . item_template
SET spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 12026;

-- Jungle Necklace
UPDATE mangos . item_template
SET spellid_1 = 23727, -- +1% Spell Hit
    spelltrigger_1 = 1,
    spellid_2 = 9345, -- +16 Spell damage
    spelltrigger_2 = 1
WHERE entry = 12046;

-- Granite Necklace
UPDATE mangos . item_template
SET spellid_1 = 9315, -- +26 Healing
    spelltrigger_1 = 1,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 12036;

-- Tundra Ring
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 7
WHERE entry = 12009;

-- Mindbender Loop
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 5009;

-- Spinel Ring
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 10 
WHERE entry = 11970;

-- Basalt Ring
UPDATE mangos . item_template
SET armor = 100
WHERE entry = 11996;

-- Cerulean Ring
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11985;

-- Fen Ring
UPDATE mangos . item_template
SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 12010;

-- Amethyst Band
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 12 
WHERE entry = 11971;

-- Greenstone Circle
UPDATE mangos . item_template
SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 11997;

-- Thallium Hoop
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 11986;

-- Carnelian Loop
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 13 
WHERE entry = 11972;

-- Forest Hoop
UPDATE mangos . item_template
SET armor = 100
WHERE entry = 12011;

-- Jet Loop
UPDATE mangos . item_template
SET spellid_1 = 23172, -- Block Value +10
    spelltrigger_1 = 1
WHERE entry = 11998;

-- Iridium Circle
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7 
WHERE entry = 11987;

-- Hematite Link
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 14 
WHERE entry = 11973;

-- Marsh Ring
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 12012;

-- Onyx Ring
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 12001;

-- Aquamarine Ring
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 15 
WHERE entry = 11974;

-- Lodestone Hoop
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 11999;

-- Tellurium Band
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 11988;

-- Desert Ring
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 12013;

-- Topaz Ring
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 15 
WHERE entry = 11975;

-- Vanadium Loop
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 11989;

-- Sardonyx Knuckle
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 17 
WHERE entry = 11976;

-- Arctic Ring
UPDATE mangos . item_template
SET spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 12014;

-- Dark Iron Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 11945;

-- Marble Circle
UPDATE mangos . item_template
SET spellid_1 = 23203, -- Block Value +15
    spelltrigger_1 = 1
WHERE entry = 12002;

-- Serpentine Loop
UPDATE mangos . item_template
SET quality = 3,
    armor = 150,
    stat_type1 = 7,
    stat_value1 = 18 
WHERE entry = 11977;

-- Selenium Loop
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 11990;

-- Swamp Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 12015;

-- Jasper Link
UPDATE mangos . item_template
SET quality = 3,
    armor = 175,
    stat_type1 = 7,
    stat_value1 = 20 
WHERE entry = 11978;

-- Quicksilver Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 18384, -- +1% Spell Crit
    spelltrigger_1 = 1
WHERE entry = 11991;

-- Peridot Circle
UPDATE mangos . item_template
SET quality = 3,
    armor = 175,
    stat_type1 = 7,
    stat_value1 = 21,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 11979;

-- Jungle Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 12016;

-- Granite Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 12005;

-- Vermilion Band
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9318, -- +33 Healing
    spelltrigger_1 = 1
WHERE entry = 11992;

-- Opal Ring
UPDATE mangos . item_template
SET quality = 3,
    armor = 175,
    stat_type1 = 7,
    stat_value1 = 22,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 11980;

-- Prismatic Band
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1,
    spellid_2 = 9318, -- +33 Healing
    spelltrigger_2 = 1,
    spellid_3 = 9336, -- +30 Attack Power
    spelltrigger_3 = 1
WHERE entry = 12017;

-- Slayer's Set

-- Slayer's Pants
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 11,
    stat_type2 = 3,
    stat_value2 = 11   
WHERE entry = 14757;

-- Slayer's Slippers
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 3,
    stat_value2 = 7  
WHERE entry = 14756;

-- Slayer's Cuffs
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 5,
    stat_type2 = 3,
    stat_value2 = 5  
WHERE entry = 14750;

-- Slayer's Gloves
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 3,
    stat_value2 = 7 
WHERE entry = 14754;

-- Slayer's Sash
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 3,
    stat_value2 = 7 
WHERE entry = 14755;

-- Slayer's Cape
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 6,
    stat_type2 = 3,
    stat_value2 = 6 
WHERE entry = 14752;

-- Slayer's Surcoat
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 11,
    stat_type2 = 3,
    stat_value2 = 11,   
    stat_type3 = 0,
    stat_value3 = 0   
WHERE entry = 14751;

-- Slayer's Shield
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 3,
    stat_value2 = 7 
WHERE entry = 15892;

-- Jousters Set
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 7
WHERE entry = 8157;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 8160;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 8162;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 8163;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 8159;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 7
WHERE entry = 8161;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 8158;

UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 3
WHERE entry = 8156;

-- Salstone Set
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14895;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14901;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14899;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14897;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14900;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14896;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14903;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14898;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 14902;

-- Tyrant's Set
UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14835;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14841;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14842;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14843;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14839;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14840;

UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value2 = 9,
    stat_type2 = 7,
    stat_value2 = 9,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14838;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14834;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value2 = 12,
    stat_type2 = 3,
    stat_value2 = 4,
    spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 14833;

-- Symbolic Set
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14821;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14825;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14831;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14827;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14829;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14828;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14832;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14830;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 14826;

-- Chromite Set

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8142;

UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8144;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 7,
    stat_value2 = 13,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8143;

UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8138;

UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8140;

UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8135;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 4,
    stat_type2 = 7,
    stat_value2 = 8,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8137;

UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8141;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 4,
    stat_type2 = 7,
    stat_value2 = 12,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 8139;

-- Sunscale Set
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14849;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14851;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14853;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14852;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14850;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14847;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14844;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14848;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14846;

-- Overlords Set

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 9974;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10209;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10205;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10203;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10207;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10201;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10202;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 13665, -- +1% Parry
    spelltrigger_1 = 1
WHERE entry = 10206;

-- Jade Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14915;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14913;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14920;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14914;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14919;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14917;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14921;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14918;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 14916;

-- High Chief's Armor
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14958;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14961;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14960;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14963;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14964;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14962;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14959;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14957;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21363, -- 5 MP/5
    spelltrigger_1 = 1
WHERE entry = 14965;

-- Alabaster Set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8312;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8319;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8318;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8317;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8316;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8314;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8315;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 8311;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21991, -- When struck in combat inflicts 4 Nature damage to the attacker.
    spelltrigger_1 = 1
WHERE entry = 8320;

-- Blackforge Set
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4083;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type3 = 6,
    stat_value3 = 9
WHERE entry = 4082;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 6,
    stat_type2 = 5,
    stat_value2 = 6,
    stat_type3 = 6,
    stat_value3 = 6
WHERE entry = 6424;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4084;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4733;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4069;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    stat_type3 = 6,
    stat_value3 = 7
WHERE entry = 4080;

UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 6426;

-- Brigade Set
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9926;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9933;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9928;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9930;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9927;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9929;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9934;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9932;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9918;

UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9931;

-- Khan's Set
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14780;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14779;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14785;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14787;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14786;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14783;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14784;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14782;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14778;

UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 14781;

-- Bonelink Set
UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15615;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15610;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15617;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15614;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15612;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15613;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15609;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15616;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15618;

UPDATE mangos . item_template
SET spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 15611;

-- Gryphon Mail set
UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15621;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15622;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15626;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15625;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15620;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15627;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15619;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15623;

UPDATE mangos . item_template
SET spellid_1 = 9142, -- +14 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15628;

-- Warmongers set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9963;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9958;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9957;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9959;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9956;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9961;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9960;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9962;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9964;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 9965;

-- Champions set
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7544;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 18325;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7541;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7542;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7546;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7540;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7543;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7538;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7536;

UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 7539;

-- Myrmidon Set
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8125;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8130;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 9,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8133;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8131;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8129;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 9,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8128;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8127;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 7,
    stat_type2 = 5,
    stat_value2 = 7,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8134;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 14,
    stat_type2 = 5,
    stat_value2 = 14,
    spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 8132;

UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 4,
    stat_value1 = 17,
    stat_type2 = 5,
    stat_value2 = 15,
    spellid_1 = 21361, -- 3 MP/5
    spelltrigger_1 = 1
WHERE entry = 8126;

-- Necklace of Harmony
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 5180;

-- Mark of the Kirin Tor NYI
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9395, -- +5 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 5004;

-- Emberspark Pendant NYI
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 5005;

-- Kodobone Necklace
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 15690;

-- Fairy's Embrace NYI
UPDATE mangos . item_template
SET spellid_1 = 9397, -- +7 Spell damage
    spelltrigger_1 = 1
WHERE entry = 7549;

-- Entwined Opaline Talisman
UPDATE mangos . item_template
SET spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 7551;

-- Warrior's Honor NYI
UPDATE mangos . item_template
SET armor = 100
WHERE entry = 7550;

-- Heroic Commendation Medal
UPDATE mangos . item_template
SET spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 15799;

-- Opaline Medallion
UPDATE mangos . item_template
SET spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 16623;


-- Blues

-- Evocator's Blade
UPDATE mangos . item_template
SET spellid_1 = 9415, -- +9 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 2567;

-- Claw of the Shadowmancer
UPDATE mangos . item_template
SET spellid_1 = 9324, -- +16 Shadow Damage
    spelltrigger_1 = 1
WHERE entry = 2912;

-- Zealot Blade
UPDATE mangos . item_template
SET spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 13033;

-- Gar

-- Gazlowe's Charm
UPDATE mangos . item_template
SET stat_type1 = 0,
    stat_value1 = 0,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1
WHERE entry = 13088;

-- Necklace of Calisea
UPDATE mangos . item_template
SET spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 1714;

-- Talisman of the Naga Lord
UPDATE mangos . item_template
SET quality = 3,
    stat_type1 = 7,
    stat_value1 = 10,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 9330, -- +18 Attack Power
    spelltrigger_1 = 1
WHERE entry = 5029;

-- Horizon Choker
UPDATE mangos . item_template
SET spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 13085;

-- Lady Alizabeth's Pendant
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0,
    spellid_1 = 15464, -- +1% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 13002;

-- Mountainside Buckler
UPDATE mangos . item_template
SET spellid_1 = 9406, -- +18 Healing
    spelltrigger_1 = 1
WHERE entry = 13082;

-- Starsight Tunic
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 8,
    stat_type2 = 6,
    stat_value2 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 12988;

-- Gloomshroud Armor
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 12,
    stat_type2 = 4,
    stat_value2 = 8
WHERE entry = 1489;

-- Drakewing Bands
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 12999;

-- Silver-lined Belt
UPDATE mangos . item_template
SET stat_type1 = 6,
    stat_value1 = 15,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 13011;

-- Brawler Gloves
UPDATE mangos . item_template
SET armor = 150,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 9
WHERE entry = 720;

-- Troll's Bane Leggings
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13114;

-- Petrolspill Leggings
UPDATE mangos . item_template
SET armor = 200,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15
WHERE entry = 9509;

-- Harbinger Boots
UPDATE mangos . item_template
SET armor = 150,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type2 = 6,
    stat_value2 = 12
WHERE entry = 7754;

-- Watchman Pauldrons
UPDATE mangos . item_template
SET armor = 150,
    stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 6,
    stat_value3 = 12
WHERE entry = 7727;

-- Enduring Cap
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 15,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 3020;

-- Ebon Vise
UPDATE mangos . item_template
SET armor = 200,
    stat_type1 = 4,
    stat_value1 = 9,
    stat_type2 = 5,
    stat_value2 = 9,
    stat_type2 = 6,
    stat_value2 = 9
WHERE entry = 7690;

-- Briar Tredders
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10582;

-- Expert Goldminer's Helmet
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type2 = 6,
    stat_value2 = 12
WHERE entry = 9375;

-- Enchanted Kodo Bracers
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 4,
    stat_type2 = 6,
    stat_value2 = 4,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13119;

-- Warchief Kilt
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 12,
    stat_type2 = 6,
    stat_value2 = 12,
    spellid_1 = 9417, -- +12 spell damage
    spelltrigger_1 = 1
WHERE entry = 7760;

-- Sheepshear Mantle
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 9,
    stat_type2 = 6,
    stat_value2 = 9,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13115;

-- Martyr's Chain
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 3416;

-- Dreamsinger Legguards
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 8,
    stat_type2 = 5,
    stat_value2 = 8,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 13010;

-- Sunblaze Coif
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 5819;

-- Grubbis Paws
UPDATE mangos . item_template
SET armor = 300,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 9445;

-- Archon Chestpiece
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 7759;

-- Firemane Leggings
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 10,
    stat_type2 = 5,
    stat_value2 = 10,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13129;

-- Ironaya's Bracers
UPDATE mangos . item_template
SET spellid_1 = 21360, -- 2 MP/5
    spelltrigger_1 = 1
WHERE entry = 9409;

-- Ravasaur Scale Boots
UPDATE mangos . item_template
SET armor = 250,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 13124;

-- Spaulders of a Lost Age
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 9430;

-- Murkwater Gauntlets
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 10631;

-- High Bergg Helm
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 7,
    stat_value2 = 15,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 13128;

-- Belt of the Gladiator
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 10,
    stat_type2 = 7,
    stat_value2 = 10,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9331, -- +20 Attack Power
    spelltrigger_1 = 1
WHERE entry = 13134;

-- Slimescale Bracers
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 10632;

-- Battlecaller Gauntlets
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 13126;

-- Lordly Armguards
UPDATE mangos . item_template
SET spellid_2 = 9417, -- +12 spell damage
    spelltrigger_2 = 1 
WHERE entry = 13135;

-- Enormous Ogre Belt
UPDATE mangos . item_template
SET armor = 250,
    stat_type1 = 7,
    stat_value1 = 15,
    stat_type2 = 0,
    stat_value2 = 0,
    stat_type3 = 0,
    stat_value3 = 0
WHERE entry = 13145;

-- Skullplate Bracers
UPDATE mangos . item_template
SET stat_type1 = 5,
    stat_value1 = 6,
    stat_type2 = 6,
    stat_value2 = 6,
    stat_type3 = 0,
    stat_value3 = 0,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 9432;

-- Golem Shard Leggings
UPDATE mangos . item_template
SET armor = 550,
    stat_type1 = 7,
    stat_value1 = 22
WHERE entry = 13074;

-- Silvershell Leggings
UPDATE mangos . item_template
SET stat_type1 = 4,
    stat_value1 = 15,
    stat_type2 = 5,
    stat_value2 = 15,
    spellid_1 = 9408, -- +22 Healing
    spelltrigger_1 = 1
WHERE entry = 10633;

-- Mugthol's Helm
UPDATE mangos . item_template
SET stat_type1 = 3,
    stat_value1 = 10,
    stat_type2 = 4,
    stat_value2 = 17,
    stat_type3 = 7,
    stat_value3 = 17
WHERE entry = 13073;

-- Girdle of Uther
UPDATE mangos . item_template
SET spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 13077;

-- Zone Drops

-- Specific mob drops 

-- Ogremind Ring
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 7680, -- +13 Healing
    spelltrigger_1 = 1
WHERE entry = 1993;

-- Dargol's Hauberk
UPDATE mangos . item_template
SET stat_type3 = 3,
    stat_value3 = 1
WHERE entry = 3330;

-- Blackrock Boots
UPDATE mangos . item_template
SET stat_type3 = 3,
    stat_value3 = 3
WHERE entry = 1446;

-- Slarkskin
UPDATE mangos . item_template
SET stat_type3 = 4,
    stat_value3 = 2
WHERE entry = 6180;

-- Wax-polished Armor
UPDATE mangos . item_template
SET stat_type3 = 3,
    stat_value3 = 2
WHERE entry = 6195;

-- Foreman's Leggings
UPDATE mangos . item_template
SET quality = 3,
    stat_type4 = 4,
    stat_value4 = 3
WHERE entry = 2166;

-- Dragonmaw Chain Boots
UPDATE mangos . item_template
SET stat_type3 = 4,
    stat_value3 = 3
WHERE entry = 1955;

-- Husk of Naraxis
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 3,
    stat_value3 = 5
WHERE entry = 4448;

-- Rift Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type2 = 5,
    stat_value2 = 5,
    stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 5943;

-- Garneg's War Belt
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 6200;

-- Large Ogre Chain Armor
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 914;

-- Trouncing Boots
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 4464;

-- Bonefist Gauntlets
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 9140, -- +10 Attack Power
    spelltrigger_1 = 1
WHERE entry = 4465;

-- Hard Crawler Carapace
UPDATE mangos . item_template
SET stat_type3 = 6,
    stat_value3 = 2
WHERE entry = 2087;

-- Riverpaw Leather Vest
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 3
WHERE entry = 821;

-- Wendigo Collar
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 3
WHERE entry = 2899;

-- Metalworking Gloves
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 3
WHERE entry = 1944;

-- Woodworking Gloves
UPDATE mangos . item_template
SET stat_type3 = 3,
    stat_value3 = 3
WHERE entry = 1945;

-- Ghoul Fingers
UPDATE mangos . item_template
SET quality = 3,
    spellid_1 = 21359, -- 1 MP/5
    spelltrigger_1 = 1
WHERE entry = 1314;

-- Stonemason Trousers
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 1934;

-- Stonemason Trousers
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 1934;

-- Smelting Pants
UPDATE mangos . item_template
SET stat_type3 = 4,
    stat_value3 = 4
WHERE entry = 5199;

-- Foreman's Gloves
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 5
WHERE entry = 2167;

-- Loch Croc Hide Vest
UPDATE mangos . item_template
SET stat_type2 = 5,
    stat_value2 = 7
WHERE entry = 6197;

-- Support Girdle
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 1215;

-- Ruffian Belt
UPDATE mangos . item_template
SET stat_type2 = 5,
    stat_value2 = 6
WHERE entry = 5975;

-- Bluegill Breeches
UPDATE mangos . item_template
SET stat_type2 = 6,
    stat_value2 = 8
WHERE entry = 3022;

-- Deepwood Bracers
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 4
WHERE entry = 3204;

-- Shadow Weaver Leggings
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 6
WHERE entry = 2233;

-- Glowing Leather Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 4,
    stat_value3 = 4
WHERE entry = 2017;

-- Madwolf Bracers
UPDATE mangos . item_template
SET quality = 3,
    stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 897;

-- Ringed Helm
UPDATE mangos . item_template
SET stat_type3 = 5,
    stat_value3 = 5
WHERE entry = 3392;

-- Ruffled Chaplet
UPDATE mangos . item_template
SET stat_type3 = 6,
    stat_value3 = 5
WHERE entry = 5753;

-- Iridescent Scale Leggings
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 4,
    stat_value1 = 12,
    stat_type2 = 5,
    stat_value2 = 12,
    stat_type2 = 6,
    stat_value2 = 12
WHERE entry = 4478;

-- Epic BOE's 

-- 50-60

-- Helm of Narv
UPDATE mangos . item_template
SET spellid_1 = 7598, -- +2% Physical Crit
    spelltrigger_1 = 1
WHERE entry = 2245;

-- Jeweled Amulet of Cainwyn
UPDATE mangos . item_template
SET spellid_1 = 14127, -- +28 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 1443;

-- Lady Maye's Pendant
UPDATE mangos . item_template
SET spellid_1 = 18031, -- +40 Healing
    spelltrigger_1 = 1
WHERE entry = 14558;

-- Axe of the Deep Woods
UPDATE mangos . item_template
SET delay = 2700,
    dmg_min1 = 90,
    dmg_max1 = 185
WHERE entry = 811;

-- Brain Hacker
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 196,
    dmg_max1 = 246
WHERE entry = 1263;

-- Destiny
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 180,
    dmg_max1 = 230
WHERE entry = 647;

-- Hand of Edward the Odd
UPDATE mangos . item_template
SET dmg_min1 = 55,
    dmg_max1 = 105
WHERE entry = 2243;

-- Teebu's Blazing Longsword
UPDATE mangos . item_template
SET dmg_min1 = 90,
    dmg_max1 = 185
WHERE entry = 1728;

-- Alcor's Sunrazor
UPDATE mangos . item_template
SET delay = 1800,
    dmg_min1 = 55,
    dmg_max1 = 105
WHERE entry = 14555;

-- Krol Blade
UPDATE mangos . item_template
SET dmg_min1 = 85,
    dmg_max1 = 180
WHERE entry = 2244;

-- Blade of Hanna
UPDATE mangos . item_template
SET delay = 3400,
    dmg_min1 = 196,
    dmg_max1 = 246
WHERE entry = 2801;

-- Dwarven Hand Cannon
UPDATE mangos . item_template
SET delay = 3200,
    dmg_min1 = 100,
    dmg_max1 = 150
WHERE entry = 2099;

-- Elemental Mage Staff
UPDATE mangos . item_template
SET spellid_1 = 17873, -- +36 Fire Damage
    spelltrigger_1 = 1,
    spellid_2 = 17897, -- +36 Frost Damage
    spelltrigger_2 = 1   
WHERE entry = 944;

-- The Lion Horn of Stormwind
UPDATE mangos . item_template
SET stat_type1 = 7,
    stat_value1 = 30
WHERE entry = 14557;

UPDATE mangos . spell_template
SET effectBasePoints1 = 1999
WHERE entry = 18946;

-- Lifestone
UPDATE mangos . item_template
SET spellid_3 = 14127, -- +28 Spell Damage
    spelltrigger_3 = 1
WHERE entry = 833;

-- Tier 0 Sets

-- Battlegear of Valor

-- Belt of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 500,
    frost_res = 7,
    stat_type1 = 3,
    stat_value1 = 15,
    stat_type2 = 4,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 15,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 16736;

-- Boots of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 635,
    frost_res = 7,
    stat_type1 = 3,
    stat_value1 = 15,
    stat_type2 = 4,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 15,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 16734;

-- Bracers of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 400,
    stat_type1 = 3,
    stat_value1 = 13,
    stat_type2 = 4,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 13,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 16735;

-- Helm of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 675,
    shadow_res = 10,
    stat_type1 = 3,
    stat_value1 = 20,
    stat_type2 = 4,
    stat_value2 = 18,
    stat_type3 = 7,
    stat_value3 = 20,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 16731;

-- Breastplate of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 825,
    shadow_res = 10,
    stat_type1 = 3,
    stat_value1 = 22,
    stat_type2 = 4,
    stat_value2 = 20,
    stat_type3 = 7,
    stat_value3 = 22,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 16730;

-- Spaulders of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 700,
    arcane_res = 7,
    stat_type1 = 3,
    stat_value1 = 16,
    stat_type2 = 4,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 16,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 16733;

-- Legplates of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 730,
    nature_res = 10,
    stat_type1 = 3,
    stat_value1 = 21,
    stat_type2 = 4,
    stat_value2 = 19,
    stat_type3 = 7,
    stat_value3 = 21,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13387, -- +8 Defense
    spelltrigger_1 = 1
WHERE entry = 16732;

-- Gauntlets of Valor
UPDATE mangos . item_template
SET allowable_class = 1, -- Warrior
    quality = 4,
    armor = 515,
    arcane_res = 7,
    stat_type1 = 3,
    stat_value1 = 15,
    stat_type2 = 4,
    stat_value2 = 13,
    stat_type3 = 7,
    stat_value3 = 15,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 13383, -- +5 Defense
    spelltrigger_1 = 1
WHERE entry = 16737;

-- The Elements

-- Cord of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    shadow_res = 7,
    stat_type1 = 5,
    stat_value1 = 17,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 10,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 16673;

-- Boots of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    arcane_res = 7,
    stat_type1 = 5,
    stat_value1 = 17,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 16670;

-- Bindings of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    stat_type1 = 5,
    stat_value1 = 15,
    stat_type2 = 6,
    stat_value2 = 12,
    stat_type3 = 7,
    stat_value3 = 8,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9343, -- +14 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 16671;

-- Coif of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    nature_res = 10,
    stat_type1 = 5,
    stat_value1 = 20,
    stat_type2 = 6,
    stat_value2 = 17,
    stat_type3 = 7,
    stat_value3 = 14,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 14798, -- +30 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21626, -- 6 MP/5
    spelltrigger_2 = 1
WHERE entry = 16667;

-- Gauntlets of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    shadow_res = 7,
    stat_type1 = 5,
    stat_value1 = 17,
    stat_type2 = 6,
    stat_value2 = 15,
    stat_type3 = 7,
    stat_value3 = 12,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21618, -- +4 MP/5
    spelltrigger_2 = 1
WHERE entry = 16672;

-- Kilt of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    nature_res = 10,
    stat_type1 = 5,
    stat_value1 = 22,
    stat_type2 = 6,
    stat_value2 = 18,
    stat_type3 = 7,
    stat_value3 = 15,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 14798, -- +30 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 18384, -- +1% Spell Crit
    spelltrigger_2 = 1
WHERE entry = 16668;

-- Pauldrons of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    shadow_res = 7,
    stat_type1 = 5,
    stat_value1 = 19,
    stat_type2 = 6,
    stat_value2 = 16,
    stat_type3 = 7,
    stat_value3 = 11,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 9346, -- +18 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 16669;

-- Vest of Elements
UPDATE mangos . item_template
SET allowable_class = 64, -- Shaman
    quality = 4,
    frost_res = 10,
    stat_type1 = 5,
    stat_value1 = 24,
    stat_type2 = 6,
    stat_value2 = 20,
    stat_type3 = 7,
    stat_value3 = 16,
    stat_type4 = 0,
    stat_value4 = 0,
    spellid_1 = 14047, -- +23 Spell Damage
    spelltrigger_1 = 1, 
    spellid_2 = 18384, -- +1% Spell Crit
    spelltrigger_2 = 1
WHERE entry = 16666;

-- Conjured Items

-- Soulshard
UPDATE mangos . item_template
SET stackable = 5
WHERE entry = 6265;

-- Lesser Firestone
UPDATE mangos . item_template
SET name = 'Lesser Demons Heart',
    stat_type1 = 7,
    stat_value1 = 25,
    spellid_1 = 20555, -- Health regeneration rate increased by 10%.  10% of total Health regeneration may continue during combat.
    spelltrigger_1 = 1,
    spellid_2 = 23210, -- 16 HP/5
    spelltrigger_2 = 1
WHERE entry = 1254;

-- Demons Heart
UPDATE mangos . item_template
SET name = 'Demons Heart',
    stat_type1 = 7,
    stat_value1 = 35,
    spellid_1 = 20555, -- Health regeneration rate increased by 10%.  10% of total Health regeneration may continue during combat.
    spelltrigger_1 = 1,
    spellid_2 = 23210, -- 16 HP/5
    spelltrigger_2 = 1
WHERE entry = 13699;

-- Greater Demons Heart
UPDATE mangos . item_template
SET name = 'Greater Demons Heart',
    stat_type1 = 7,
    stat_value1 = 45,
    spellid_1 = 20555, -- Health regeneration rate increased by 10%.  10% of total Health regeneration may continue during combat.
    spelltrigger_1 = 1,
    spellid_2 = 23210, -- 16 HP/5
    spelltrigger_2 = 1
WHERE entry = 13700;

-- Major Demons Heart
UPDATE mangos . item_template
SET name = 'Major Demons Heart',
    stat_type1 = 7,
    stat_value1 = 55,
    spellid_1 = 20555, -- Health regeneration rate increased by 10%.  10% of total Health regeneration may continue during combat.
    spelltrigger_1 = 1,
    spellid_2 = 23210, -- 16 HP/5
    spelltrigger_2 = 1
WHERE entry = 13701;

-- Spellstone
UPDATE mangos . item_template
SET spellid_3 = 23727, -- +1% Spell Hit
    spelltrigger_3 = 1
WHERE entry = 5522;

-- Greater Spellstone
UPDATE mangos . item_template
SET spellid_3 = 23727, -- +1% Spell Hit
    spelltrigger_3 = 1,
    spellid_4 = 9345, -- +16 Spell damage
    spelltrigger_4 = 1
WHERE entry = 13602;

-- Major Spellstone
UPDATE mangos . item_template
SET spellid_2 = 18382, -- +2% Spell Crit
    spelltrigger_2 = 1,
    spellid_3 = 23729, -- +2% Spell Hit
    spelltrigger_3 = 1,
    spellid_4 = 15714, -- +22 Spell Damage
    spelltrigger_4 = 1
WHERE entry = 13603;

-- New custom items
-- Cape of the Legion
UPDATE mangos. item_template 
SET spellid_2 = 9417, -- +12 spell damage
    spelltrigger_2 = 1 
WHERE entry = 30010;

-- Bag of the Legion
UPDATE mangos. item_template 
SET flags = 32768,
    quality = 5,
    max_count = 1,
    container_slots = 36
WHERE entry = 30013;

-- Fel Saber
UPDATE mangos. item_template 
SET dmg_min1 = 95,
    dmg_max1 = 155,
    dmg_type2 = 2,
    dmg_min2 = 1,
    dmg_max2 = 25
WHERE entry = 30011;

-- Corrupted Mace
UPDATE mangos. item_template 
SET dmg_min1 = 63.4,
    dmg_max1 = 119.4,
    dmg_type2 = 5,
    dmg_min2 = 1,
    dmg_max2 = 15
WHERE entry = 30012;

-- Pauldrons of the Scourge
UPDATE mangos. item_template 
SET quality = 3,
    random_property = 0,
    stat_type1 = 7,
    stat_value1 = -25,
    spellid_1 = 15465, -- +2% Physical Hit
    spelltrigger_1 = 1
WHERE entry = 30080;


-- Custom quest item stack sizes
UPDATE mangos . item_template
SET stackable = 250
WHERE entry IN(30007, 30016, 30017, 30018);

-- TODO: Formula: Enchant Gloves - Superior Agility (20731)
-- TODO: Formula: Enchant Cloak - Subtlety (20735)
-- TODO: Formula: Enchant Cloak - Dodge (20736)
-- TODO: Formula: Enchant Weapon - Healing Power (18260)
-- TODO: Formula: Enchant Chest - Greater Stats (16253)

UPDATE mangos. item_template 
SET required_reputation_faction = 476, -- Timbermaw Rep
    required_reputation_rank = 7 -- Exalted
WHERE entry = 18260;

-- Formula: Enchant Gloves - Healing Power
UPDATE mangos. item_template 
SET required_reputation_faction = 471, -- Wildhammer Rep
    required_reputation_rank = 7 -- Exalted
WHERE entry = 20730;

UPDATE mangos. item_template 
SET required_reputation_faction = 476, -- Nethergarde Defenders
    required_reputation_rank = 5 -- Honored
WHERE entry IN(30008, 30009, 30010);

UPDATE mangos. item_template 
SET required_reputation_faction = 476, -- Nethergarde Defenders
    required_reputation_rank = 6, -- Revered
    bonding = 1
WHERE entry IN(30014, 30015);

UPDATE mangos. item_template 
SET required_reputation_faction = 476, -- Nethergarde Defenders
    required_reputation_rank = 7, -- Exalted
    bonding = 1
WHERE entry IN(30011, 30012, 30013, 18259);

UPDATE mangos. item_template 
SET required_reputation_faction = 477, -- Caretakers of Karazhan
    required_reputation_rank = 5, -- Honored
    bonding = 1
WHERE entry IN(30023, 30025, 30026, 30019);

UPDATE mangos. item_template 
SET required_reputation_faction = 477, -- Caretakers of Karazhan
    required_reputation_rank = 6, -- Revered
    bonding = 1
WHERE entry IN(30021);

UPDATE mangos. item_template 
SET required_reputation_faction = 477, -- Caretakers of Karazhan
    required_reputation_rank = 7, -- Exalted
    bonding = 1
WHERE entry IN(30020, 30022, 30027, 30024, 20727);

UPDATE mangos. item_template 
SET required_reputation_faction = 589, -- Wintersaber Trainers
    required_reputation_rank = 5, -- Honored
    bonding = 1
WHERE entry IN(30033, 30035, 30036);

UPDATE mangos. item_template 
SET required_reputation_faction = 589, -- Wintersaber Trainers
    required_reputation_rank = 6, -- Revered
    bonding = 1
WHERE entry IN(30029, 30030, 30031);

UPDATE mangos. item_template 
SET required_reputation_faction = 589, -- Wintersaber Trainers
    required_reputation_rank = 7, -- Exalted
    bonding = 1
WHERE entry IN(30028, 30032, 30034, 20728);

-- Sentinel's Ring
UPDATE mangos . item_template
SET quality = 4,
    spellid_1 = 7597, -- +1% Physical Crit
    spelltrigger_1 = 1,
    spellid_2 = 15464, -- +1% Physical Hit
    spelltrigger_2 = 1
WHERE entry = 30000;

-- Battlemage's Ring
UPDATE mangos . item_template
SET quality = 4,
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 5,
    stat_value2 = 5,
    spellid_1 = 18054, -- 37 Spell Damage
    spelltrigger_1 = 1
WHERE entry = 30001;

-- Cleric's Cape
UPDATE mangos . item_template
SET quality = 4,
    armor = 200,
    stat_type1 = 7,
    stat_value1 = 20,
    spellid_2 = 21363, -- 5 MP/5
    spelltrigger_2 = 1
WHERE entry = 30002;

-- Tome of Battle
UPDATE mangos . item_template
SET quality = 4,
    buy_price = 222362,
    sell_price = 28472,
    required_reputation_faction = 509, -- The League of Arathor (AB)
    required_reputation_rank = 7, -- Exalted
    stat_type1 = 7,
    stat_value1 = 5,
    spellid_1 = 27901, -- -4% Spell damage taken
    spelltrigger_1 = 1
WHERE entry = 30003;

-- Idol of Battle
UPDATE mangos . item_template
SET quality = 4,
    required_reputation_faction = 509, -- The League of Arathor (AB)
    required_reputation_rank = 7, -- Exalted
    spellid_1 = 14803, -- +200 Armor
    spelltrigger_1 = 1
WHERE entry = 30004;

-- Wand of Arathor
UPDATE mangos . item_template
SET quality = 4,
    buy_price = 442362,
    sell_price = 88472,
    required_reputation_faction = 509, -- The League of Arathor (AB)
    required_reputation_rank = 7, -- Exalted
    stat_type1 = 7,
    stat_value1 = 20,
    stat_type2 = 0,
    stat_value2 = 0
WHERE entry = 30005;

-- Star of Arathor
UPDATE mangos . item_template
SET quality = 4,
    required_reputation_faction = 509, -- The League of Arathor (AB)
    required_reputation_rank = 7, -- Exalted
    delay = 1600,
    dmg_min1 = 77,
    dmg_max1 = 102,
    stat_type1 = 7,
    stat_value1 = 20
WHERE entry = 30006;

-- Shaman Gear The League of Arathor Rep (AB)
UPDATE mangos . item_template 
SET allowable_class = 68
WHERE entry IN(20123, 20120, 20122, 20119, 20118, 20121, 20044, 20051, 20056, 20043, 20050, 20055);

-- Custom changes

-- Make items BOP
UPDATE mangos . item_template 
SET bonding = 1 -- BOP
WHERE entry IN(12717, 18418, 22388, 14512, 14513, 14514, 12834, 12825, 18260, 20730, 20727, 20728, 18259, 20731, 20735, 20736, 18260, 12720, 12725, 12726, 12727, 12696, 
15763, 15751, 15726, 15733, 15730);

-- Display IDs
-- Cute Mail: Fortified chain (display: 1019) Infantry Tunic (display: 3057)
-- Cute Mail Legs: Infantry Leggings (Display: 3058)
-- Skimpy plate armor: Vanguard Breastplate (display: 26846), Lord's Breastplate
-- Skimpy Leather: Pridelord Pants(display: 27651)

-- Fire Hardened Hauberk (Was 22480)
UPDATE mangos . item_template 
SET display_id = 25798
WHERE entry = 6972;

-- Fire Hardened Leggings (Was 22481)
UPDATE mangos . item_template 
SET display_id = 22481
WHERE entry = 6973;

-- Ravasaur Scale Boots (Was 28441)
UPDATE mangos . item_template 
SET display_id = 25793
WHERE entry = 13124;

-- Heavy Mithril Breastplate (Was 16109)
UPDATE mangos . item_template 
SET display_id = 26846
WHERE entry = 7930;

-- Heavy Mithril Pants (Was 16092)
UPDATE mangos . item_template 
SET display_id = 3058
WHERE entry = 7921;


-- Misc

-- Disable new pvp gear and use old PvP gear
-- Do patch - 10 to revert, and -10 for the NPC(12777) to also revert
UPDATE item_template
SET patch = patch + 10
WHERE required_honor_rank >= 7 AND patch BETWEEN 3 AND 9;
UPDATE creature_template
SET patch = patch + 10
WHERE entry = 12777 AND patch = 9;

-- Do SET forbidden_items.patch = forbidden_items.patch - 10 to revert
-- UPDATE forbidden_items
-- JOIN item_template ON forbidden_items.entry = item_template.entry
-- SET forbidden_items.patch = forbidden_items.patch + 10
-- WHERE forbidden_items.patch <= 10
-- 	AND item_template.required_honor_rank > 10 AND item_template.required_honor_rank < 15

-- TO REVERT ABOVE RUN THIS >>ONCE<<
-- UPDATE forbidden_items
-- JOIN item_template ON forbidden_items.entry = item_template.entry
-- SET forbidden_items.patch = forbidden_items.patch - 10
-- WHERE forbidden_items.patch > 10
--   AND forbidden_items.patch <= 25
--   AND item_template.required_honor_rank > 10 
--   AND item_template.required_honor_rank < 15;

-- Delete honor gear from forbidden items table
-- DELETE forbidden_items
-- FROM forbidden_items
-- JOIN item_template ON forbidden_items.entry = item_template.entry
-- WHERE forbidden_items.patch <= 10
--   AND item_template.required_honor_rank > 10 
--   AND item_template.required_honor_rank < 15;

