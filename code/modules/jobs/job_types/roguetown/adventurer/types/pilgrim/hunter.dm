/datum/advclass/pilgrim/hunter
	name = "Hunter"
	tutorial = "Peasants that thrive on the woods, hunting creechers for pelt and hide, \
				or the boons of Dendor for their meat to sell, or consume."
	allowed_sexes = list(MALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Kitsune",
		"Tengu",
		"Oni"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/hunter

	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/hunter/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/tights/random
	shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/brown
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/quiver/arrows
	beltl = /obj/item/flashlight/flare/torch/lantern
	gloves = /obj/item/clothing/gloves/roguetown/leather
	if(H.dna?.species)
		if(H.dna.species?.id == "abyssariad")
			pants = /obj/item/clothing/under/roguetown/tobi/random
			shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/looseshirt/random
			backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/hankyu
			armor = /obj/item/clothing/suit/roguetown/armor/leather/muneate/random
			backpack_contents = list(/obj/item/flint = 1, /obj/item/bait = 1, /obj/item/rogueweapon/huntingknife/idagger/kunai = 1)
		else
			backpack_contents = list(/obj/item/flint = 1, /obj/item/bait = 1, /obj/item/rogueweapon/huntingknife = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/taming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
			H.change_stat("perception", 1)
			H.change_stat("endurance", -1)
		else
			H.change_stat("intelligence", 1)
			H.change_stat("perception", 3)
// Female variant below

/datum/advclass/pilgrim/huntress
	name = "Huntress"
	tutorial = "Women that thrive on the woods, hunting creechers for pelt and hide, \
				or the boons of Dendor for their meat to sell, or consume."
	allowed_sexes = list(FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Kitsune",
		"Tengu",
		"Oni"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/hunter // Everything is the same
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)
