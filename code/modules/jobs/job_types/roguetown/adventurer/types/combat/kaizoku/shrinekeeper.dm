/////////////////////////////////////////////////////Abyssariad Pattern for Combat Skills/////////////////////////////////////////////////////////
//'Civilian/Low Abyssanctum' Combat Roles - 3 LEVELS MAX in Combat Skill (Normal) - Many reasons. Mostly religious and Finantial.				//
//'Zamurai/High Abyssanctum' Combat Roles - 4 lEVELS MAX in Combat Skill (Rare) - Plenty of Reasons. Leading religious and Demon-slaying.		//
//'Champion' Combat Roles - 5 LEVELS MAX in Combat SKill (Unique) - Little Reason to go to Rockhill besides Royal Expedition/Rockhill's Captain.//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/advclass/combat/abyssariad/shrinekeepers //Low-abyssanctum role, but its efficiency requires champion-tier levels entirely because of unarmed skills. They are NOT champions.
	name = "Shrinekeeper"
	allowed_sexes = list(MALE, FEMALE)
	tutorial = "The shrines needs to be cared of, and there is no one most suitable for such duty than the purifier branch. \
	Those who knows the art of folding clothes while people are still in them. The Involuntary Yoga Practicers. Bokh and Bajutsu.\
	They perform rituals to submit demonic spirits just as much they submit mortals with martial arts."
	allowed_races = list(
	"Changeling",
	"Kenku",
	"Ogrun",
	"Undine")
	outfit = /datum/outfit/job/roguetown/adventurer/abyssariad/shrinekeepers
	category_tags = list(CTAG_ADVENTURER)
	vampcompat = FALSE
	pickprob = 100

/datum/outfit/job/roguetown/adventurer/abyssariad/shrinekeepers
	allowed_patrons = list(/datum/patron/divine/abyssor)

/datum/outfit/job/roguetown/adventurer/abyssariad/shrinekeepers/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/takuhatsugasa
	neck = /obj/item/clothing/neck/roguetown/psicross/abyssanctum
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/geta
	cloak = /obj/item/clothing/cloak/raincloak/mino
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	backl = /obj/item/storage/backpack/rogue/backpack
	backr = /obj/item/rogueweapon/woodstaff/bostaff
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/monkgarb/random

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, pick(1,1,2), TRUE) // Wood staff
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE) //They lose 'Medicine' to have 'Carpetry', because Shrinekeepers... repair shrines.
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, pick(2,2,3), TRUE)

		H.change_stat("strength", 3)
		H.change_stat("constitution", 2)
		H.change_stat("endurance", 2)
		H.change_stat("perception", -1)
		H.change_stat("speed", 1)

		ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)

	if(H.patron != /datum/patron/divine/abyssor)
		H.patron = GLOB.patronlist[/datum/patron/divine/abyssor]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to The World Whale. May the tides of fate guide me to honor.")
