langlatch_destroyer = Creature:new {
	objectName = "@mob/creature_names:langlatch_destroyer",
	socialGroup = "langlatch",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 20,
	chanceHit = 0.32,
	damageMin = 210,
	damageMax = 220,
	baseXp = 1803,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {120,0,0,115,115,145,145,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 18,
	hideType = "hide_wooly",
	hideAmount = 10,
	boneType = "bone_mammal",
	boneAmount = 10,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/langlatch_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/langlatch_hue.iff",
	scale = 1.2,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"stunattack",""}, {"knockdownattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(langlatch_destroyer, "langlatch_destroyer")
