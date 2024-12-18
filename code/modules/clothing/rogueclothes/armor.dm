
/obj/item/clothing/proc/step_action() //this was made to rewrite clown shoes squeaking
	SEND_SIGNAL(src, COMSIG_CLOTHING_STEP_ACTION)

/obj/item/clothing/suit/roguetown/armor
	slot_flags = ITEM_SLOT_ARMOR
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"
	bloody_icon_state = "bodyblood"
	boobed = TRUE
	edelay_type = 1
	equip_delay_self = 3 SECONDS
	unequip_delay_self = 2 SECONDS
	resistance_flags = FIRE_PROOF
	blocksound = PLATEHIT
	blade_dulling = DULLING_BASHCHOP
	nodismemsleeves = TRUE
	equip_sound = 'sound/foley/equip/equip_armor.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	pickup_sound =  'sound/blank.ogg'
	break_sound = 'sound/foley/breaksound.ogg'
	experimental_onhip = TRUE // does this do anything on armor I wonder?
//	blocking_behavior		use to block gloves when armor includes them etc
	sellprice = VALUE_COMMON_GOODS
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST

/obj/item/clothing/suit/roguetown/armor/medium	// Template, not for use
	name = "Medium armor template"
	equip_delay_self = 4 SECONDS
	unequip_delay_self = 4 SECONDS
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM
	body_parts_covered = CHEST|VITALS|GROIN|LEGS
	max_integrity = INTEGRITY_STANDARD
	clothing_flags = CANT_SLEEP_IN


//..................................................................................................................................
/*---------------\
|			 	 |
|  Light Armor	 |
|			 	 |
\---------------*/

/*-------------\
| Padded Armor |	- Cloth based
\-------------*/

//................ Gambesson ............... //
/obj/item/clothing/suit/roguetown/armor/gambeson
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "gambeson"
	desc = "Thick quilted cloth in layers, good on its own or worn below metal as padding."
	icon_state = "gambeson"
	resistance_flags = FLAMMABLE
	blocksound = SOFTUNDERHIT
	blade_dulling = DULLING_BASHCHOP
	equip_sound = 'sound/foley/equip/cloak_equip.ogg'
	pickup_sound = 'sound/foley/equip/cloak_take_off.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
//	nodismemsleeves = FALSE gambesson being ripped by hand to bandages makes no sense. OTOH it can go into shirt slot asnd its kinda fun so maybe?
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	sellprice = VALUE_GAMBESSON

	armor_class = ARMOR_CLASS_LIGHT
	armor = ARMOR_GAMBESON
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_TWIST)

/obj/item/clothing/suit/roguetown/armor/gambeson/light
	name = "light gambeson"
	desc = "Thin and the maker skimped on the padding, typically worn by the peasantry to give some protection against cold for the whole body."
	icon_state = "gambesonl"
	sellprice = VALUE_LIGHT_GAMBESSON

	armor = ARMOR_GAMBESON_BAD
	prevent_crits = null // It won't help, like, at all.

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	name = "padded gambeson"
	desc = "Thick, padded, this will help a little even against arrows. A wise man carried steel as well, but it will do in a pinch."
	icon_state = "gambesonp"
	sellprice = VALUE_HEAVY_GAMBESSON

	armor = ARMOR_GAMBESON_GOOD
	prevent_crits = ALL_EXCEPT_CHOP_AND_STAB

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/dark
	color = CLOTHING_BLACK_WARM


//................ Padded Dress ............... //
/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/dress
	name = "padded dress"
	desc = "Favored by the female nobility, to maintain both vitality and good taste while out hunting."
	icon_state = "armordress"
	allowed_sex = list(FEMALE)
	allowed_race = list("human", "tiefling", "elf", "aasimar", "abyssariad")
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sellprice = VALUE_PADDED_DRESS

	body_parts_covered = CHEST|GROIN|LEGS|ARMS|VITALS

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/dress/alt
	icon_state = "armordressalt"


//................ Arming Jacket ............... //
/obj/item/clothing/suit/roguetown/armor/gambeson/arming
	name = "arming jacket"
	desc = "Thick quilted cloth, a gambesson for the discerning knight. it is meant to be used under heavier armor."
	icon_state = "arming"
	sellprice = VALUE_GAMBESSON+BONUS_VALUE_MODEST

	body_parts_covered = CHEST|ARMS|VITALS|GROIN


//................ Stalker Robe ............... //
/obj/item/clothing/suit/roguetown/armor/gambeson/shadowrobe
	name = "stalker robe"
	desc = "A robe-like gambeson of moth-eaten cloth and cheap purple dye. No self-respecting elf would be seen wearing this."
	allowed_race = list("elf", "dark elf")
	icon_state = "shadowrobe"


//................ Striped Tunic ............... // - Light gambesson type
/obj/item/clothing/suit/roguetown/armor/gambeson/light/striped
	name = "striped tunic"
	desc = "A common tunic worn by just about anyone. Nothing special, but essential."
	icon_state = "striped"
	sleevetype = null
	sleeved = null
	nodismemsleeves = TRUE

	body_parts_covered = CHEST|VITALS

/obj/item/clothing/suit/roguetown/armor/gambeson/light/striped/Initialize()
	color = pick(CLOTHING_SALMON, CLOTHING_PALE_BLUE, CLOTHING_PALE_ORANGE, CLOTHING_PALE_GREEN, CLOTHING_PALE_YELLOW)
	..()



/*--------------\
| Leather Armor |	- Medium-poor melee defense, poor arrow defense
\--------------*/

//................ Leather Armor ............... //
/obj/item/clothing/suit/roguetown/armor/leather
	name = "leather armor"
	desc = "A light armor typically made out of boiled leather. Offers slight protection from most weapons."
	icon_state = "leather"
	resistance_flags = FLAMMABLE
	blade_dulling = DULLING_BASHCHOP
	blocksound = SOFTHIT
	equip_sound = 'sound/foley/equip/cloak_equip.ogg'
	pickup_sound = 'sound/foley/equip/cloak_take_off.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	smeltresult = /obj/item/ash
	sellprice = VALUE_LEATHER_ARMOR

	armor_class = ARMOR_CLASS_LIGHT
	armor = ARMOR_LEATHER
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = ALL_EXCEPT_CHOP_AND_STAB
	max_integrity = INTEGRITY_STANDARD

//................ Hide Armor ............... //
/obj/item/clothing/suit/roguetown/armor/leather/hide
	name = "hide armor"
	desc = "A leather armor with additional internal padding of creacher fur. Offers slightly higher integrity and comfort."
	icon_state = "hidearmor"
	sellprice = VALUE_LEATHER_ARMOR_FUR

	armor = ARMOR_LEATHER_GOOD

//................ Splint Mail ............... //
/obj/item/clothing/suit/roguetown/armor/leather/studded
	name = "splint armor"
	desc = "The smell of a leather coat, with pieces of recycled metal from old breastplates or cooking utensils riveted to the inside."
	icon_state = "splint"
	sellprice = VALUE_LEATHER_ARMOR_PLUS

	armor = ARMOR_LEATHER_BEST
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONG


//................ Leather Vest ............... //	- has no sleeves.  - can be worn in armor OR shirt slot
/obj/item/clothing/suit/roguetown/armor/leather/vest
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "leather vest"
	desc = "Obviously no sleeves, won't really protect much but it's at least padded enough to be an armor, and can be worn against the skin snugly."
	icon_state = "vest"
	color = CLOTHING_BROWN
	blade_dulling = DULLING_BASHCHOP
	blocksound = SOFTHIT
	sewrepair = TRUE
	sleevetype = null
	sleeved = null

	armor = ARMOR_GAMBESON_GOOD
	body_parts_covered = CHEST|VITALS
	prevent_crits = CUT_AND_MINOR_CRITS

/obj/item/clothing/suit/roguetown/armor/leather/vest/random/Initialize()
	color = pick(CLOTHING_BLACK, CLOTHING_BROWN, CLOTHING_GREEN, CLOTHING_PALE_ORANGE)
	..()

//................ Butchers Vest ............... //
/obj/item/clothing/suit/roguetown/armor/leather/vest/butcher
	name = "butchers vest"
	icon_state = "leathervest"
//	item_state = "leathervest"
	color = "#d69c87" // custom coloring

//................ Other Vests ............... //
/obj/item/clothing/suit/roguetown/armor/leather/vest/butler
	color = CLOTHING_RED

/obj/item/clothing/suit/roguetown/armor/leather/vest/butler/Initialize()
	..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src
/obj/item/clothing/suit/roguetown/armor/leather/vest/butler/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/armor/leather/vest/black
	color = CLOTHING_BLACK_WARM


//................ Jacket ............... //	- Has a small storage space
/obj/item/clothing/suit/roguetown/armor/leather/jacket
	name = "tanned jacket"
	icon_state = "leatherjacketo"
	desc = "A heavy leather jacket with wooden buttons, favored by workers who can afford it."

	body_parts_covered = CHEST|VITALS|ARMS

/obj/item/clothing/suit/roguetown/armor/leather/jacket/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/storage/concrete)
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		STR.max_combined_w_class = 2
		STR.max_w_class = WEIGHT_CLASS_NORMAL
		STR.max_items = 1

/obj/item/clothing/suit/roguetown/armor/leather/jacket/dropped(mob/living/carbon/human/user)
	..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		var/list/things = STR.contents()
		for(var/obj/item/I in things)
			STR.remove_from_storage(I, get_turf(src))

//................ Sea Jacket ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/sea
	slot_flags = ITEM_SLOT_ARMOR
	name = "sea jacket"
	desc = "A sturdy jacket worn by daring seafarers. The leather it's made from has been tanned by the salt of Abyssor's seas."
	icon_state = "sailorvest"
	sleevetype = "shirt"

	armor = ARMOR_LEATHER_BEST
	body_parts_covered = CHEST|VITALS

//................ Silk Coat ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/silk_coat
	name = "silk coat"
	desc = "An expertly padded coat made from the finest silks. Long may live the nobility that dons it."
	icon_state = "bliaut"
	sleevetype = "shirt"
	allowed_sex = list(FEMALE)
	sellprice = VALUE_LEATHER_ARMOR_LORD

	body_parts_covered = CHEST|LEGS|VITALS|GROIN
	prevent_crits = CUT_AND_MINOR_CRITS

/obj/item/clothing/suit/roguetown/armor/leather/jacket/silk_coat/Initialize()
	color = pick(CLOTHING_PURPLE, CLOTHING_WHITE,CLOTHING_RED)
	..()

//................ Silk Jacket ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/niteman
	name = "silk jacket"
	icon_state = "nightman"
	desc = "Displaying wealth while keeping your guts safe from blades with thick leather pads underneath."
	sellprice = VALUE_LEATHER_ARMOR_LORD

	body_parts_covered = CHEST|VITALS|LEGS

//................ Hand´s Coat ............... //
/obj/item/clothing/suit/roguetown/armor/leather/jacket/hand
	name = "noble coat"
	icon_state = "handcoat"
	desc = "A quality silken coat, discretely lined with thin metal platr on the inside to protect its affluent wearer."
	sellprice = VALUE_LEATHER_ARMOR_LORD

	body_parts_covered = CHEST|VITALS|LEGS


//................ Amazon chainkini ............... //
/obj/item/clothing/suit/roguetown/armor/amazon_chainkini
	name = "amazonian armor"
	desc = "Fur skirt and maille chest holder, typically worn by warrior women of the isle of Issa."
	icon_state = "chainkini"
	item_state = "chainkini"
	allowed_sex = list(FEMALE)
	sewrepair = TRUE
	smeltresult = /obj/item/ingot/iron
	sellprice = VALUE_IRON_ARMOR_UNUSUAL

	armor_class = ARMOR_CLASS_LIGHT
	armor = MELEE_70___ARROW_NOTHING
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = ALL_EXCEPT_BLUNT


//................ Iron Maille ............... //
/obj/item/clothing/suit/roguetown/armor/chainmail/iron
	name = "iron maille"
	desc = "A vest made of iron rings. Offers good protection against arrows, stabs and cuts."
	icon_state = "ichainmail"
	smeltresult = /obj/item/ingot/iron
	sellprice = VALUE_IRON_ARMOR

	armor = ARMOR_MAILLE_IRON
	armor_class = ARMOR_CLASS_LIGHT
	body_parts_covered = CHEST|GROIN|VITALS


//................ Copper Heart-protector ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass/copperchest
	name = "heart protector"
	desc = "Very simple and crude protection for the chest. Ancient fighters once used similar gear, with better quality..."
	icon_state = "copperchest"
	item_state = "copperchest"
	smeltresult = /obj/item/ingot/copper
	sellprice = VALUE_DIRT_CHEAP

	armor_class = ARMOR_CLASS_LIGHT
	armor = ARMOR_COPPER
	body_parts_covered = CHEST|VITALS
	prevent_crits = ONLY_VITAL_ORGANS
	max_integrity = INTEGRITY_POOR



//..................................................................................................................................
/*---------------\
|			 	 |
|  Medium Armor	 |		- Can't dodge?	- Max 95% protection
|			 	 |
\---------------*/

//................ Maille ............... //
/obj/item/clothing/suit/roguetown/armor/chainmail
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "maille"
	desc = "Made out of interlocked steel rings. Offers superior resistance against arrows, stabs and cuts. \nUsually worn as padding for proper armor, it is also called a haubergon, the little hauberk."
	icon_state = "maille"
	blocksound = CHAINHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	pickup_sound = 'sound/foley/equip/equip_armor_chain.ogg'
	equip_sound = 'sound/foley/equip/equip_armor_chain.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	sellprice = VALUE_STEEL_ARMOR

	armor_class = ARMOR_CLASS_MEDIUM
	armor = ARMOR_MAILLE
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	prevent_crits = ALL_EXCEPT_BLUNT


//................ Hauberk ............... //
/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	name = "hauberk"
	desc = "A long shirt of maille, heavy on the shoulders. Can be worn as a shirt, but some men with hairy chests consider it torture."
	icon_state = "hauberk"
	item_state = "hauberk"
	sellprice = VALUE_STEEL_ARMOR_FINE

	armor = list("melee" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS

/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/chain (1).ogg',\
												'sound/foley/footsteps/armor/chain (2).ogg',\
												'sound/foley/footsteps/armor/chain (3).ogg'), 80)


/*-----------------------\
|  Cuirass & Breastplate |
\-----------------------*/
// A cuirass is armor that covers both stomach and chest front as well as your back. A breastplate only covers your front torso.
//................ Steel Cuirass ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel cuirass"
	desc = "A cuirass of steel. Lightweight and highly durable."
	icon_state = "cuirass"
	item_state = "cuirass"
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	boobed = FALSE
	sellprice = VALUE_STEEL_ARMOR

	armor_class = ARMOR_CLASS_MEDIUM
	armor = list("melee" = 80, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|VITALS|GROIN
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONGEST

//................ Grenzelhoft Cuirass ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass/grenzelhoft
	name = "grenzelhoft cuirass"
	desc = "Simple armor, but made from Grenzelhoftian black-steel, famed afar for its strength."
	icon_state = "grenzelcuirass"
	item_state = "grenzelcuirass"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	boobed = TRUE

	armor = list("melee" = 90, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

//................ Black Oak Cuirass ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass/elven
	name = "elven guardian cuirass"
	desc = "A cuirass made of steel with a thin decorative gold plating. Lightweight and durable."
	icon_state = "halfplate"
	item_state = "cuirasse"
	color = COLOR_ASSEMBLY_GOLD
	equip_delay_self = 2 SECONDS
	unequip_delay_self = 2 SECONDS
	sellprice = VALUE_SNOWFLAKE_STEEL

//................ Iron Breastplate ............... //	- A breastplate is a cuirass without its back plate.
/obj/item/clothing/suit/roguetown/armor/cuirass/iron
	name = "iron breastplate"
	desc = "Many cooking pots ended their daes on the anvil to form this protective plate."
	icon_state = "ibreastplate"
	item_state = "ibreastplate"
	smeltresult = /obj/item/ingot/iron
	sellprice = VALUE_IRON_ARMOR

	armor = ARMOR_IRON
	body_parts_covered = CHEST|VITALS
	max_integrity = INTEGRITY_STRONG

//................ Rusted Breastplate ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass/iron/rust
	name = "rusted breastplate"
	desc = "Old but still useful to keep sharp objects from your innards."
	icon_state = "rusthalf"
	item_state = "rusthalf"
	sellprice = VALUE_IRON_ARMOR/2

	max_integrity = INTEGRITY_STANDARD

//................ Scourge Breastplate ............... //
/obj/item/clothing/suit/roguetown/armor/cuirass/iron/shadowplate
	name = "scourge breastplate"
	desc = "More form over function, this armor is fit for demonstration of might rather than open combat. The aged gilding slowly tarnishes away."
	icon_state = "shadowplate"
	item_state = "shadowplate"
	allowed_race = list("elf", "dark elf")


//................ Scalemail ............... //
/obj/item/clothing/suit/roguetown/armor/medium/scale // important is how this item covers legs too compared to halfplate
	name = "scalemail"
	desc = "Overlapping steel plates almost makes the wearer look like he has silvery fish scales."
	icon_state = "scale"
	sellprice = VALUE_STEEL_ARMOR_FINE

	armor = list("melee" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|VITALS|GROIN|LEGS
	prevent_crits = ALL_CRITICAL_HITS
	max_integrity = INTEGRITY_STRONGEST


//................ Armored Surcoat ............... //	- splint mail looking armor thats colored
/obj/item/clothing/suit/roguetown/armor/medium/surcoat
	name = "armored surcoat"
	desc = "Metal plates partly hidden by cloth, fitted for a man."
	icon_state = "surcoat"
	item_state = "surcoat"
	allowed_sex = list(MALE)	// trouble getting the sprites to work with females, sick of it, remains male only like it used to be
	detail_tag = "_metal"		// metal bits are the details so keep them uncolorer = white
	detail_color = COLOR_WHITE

/obj/item/clothing/suit/roguetown/armor/medium/surcoat/Initialize()
	. = ..()
	update_icon()

/obj/item/clothing/suit/roguetown/armor/medium/surcoat/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

//................ Armored surcoat (Heartfelt Lord) ............... //
/obj/item/clothing/suit/roguetown/armor/medium/surcoat/heartfelt
	name = "heartfelt kikko gusoku"
	desc = "A lordly protection in Heartfelt colors. Masterfully crafted coat of hexagonal plates within exotic silk, for important nobility."
	color = CLOTHING_RED
	sellprice = VALUE_SNOWFLAKE_STEEL+BONUS_VALUE_SMALL
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "heartfelt_kikko"
	item_state = "heartfelt_kikko"
	allowed_sex = list(MALE,FEMALE)

	armor = list("melee" = 95, "bullet" = 95, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS

//................ Armored surcoat (Heartfelt Hand) ............... //
/obj/item/clothing/suit/roguetown/armor/medium/surcoat/heartfelt/hand
	name = "heartfelt kikko coat"
	desc = "A coat of armor typicially worn by distinguished retainers of Heartfeltian nobles, using exotic silks adquired from Fog Island."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "heartfelt_kikkocoat"
	item_state = "heartfelt_kikkocoat"

	sellprice = VALUE_SNOWFLAKE_STEEL

	armor = list("melee" = 90, "bullet" = 95, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/roguetown/armor/medium/surcoat/heartfelt/hand/female
	name = "heartfelt kikko dress"
	desc = "A dress of armor typicially worn by distinguished retainers of Heartfeltian nobles, using exotic silks adquired from Fog Island."
	icon_state = "heartfelt_kikkodress"
	item_state = "heartfelt_kikkodress"

//..................................................................................................................................
/*---------------\
|			 	 |
|  Heavy Armor	 |
|			 	 |
\---------------*/

//................ Half-plate Armor ............... //
/obj/item/clothing/suit/roguetown/armor/plate
	name = "steel half-plate"
	desc = "Plate armor with shoulder guards. An incomplete, bulky set of excellent armor."
	icon_state = "halfplate"
	item_state = "halfplate"
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 4 SECONDS
	unequip_delay_self = 4 SECONDS
	equip_sound = 'sound/foley/equip/equip_armor_plate.ogg'
	sellprice = VALUE_STEEL_ARMOR
	clothing_flags = CANT_SLEEP_IN
	armor_class = ARMOR_CLASS_HEAVY
	armor = list("melee" = 100, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONGEST

/obj/item/clothing/suit/roguetown/armor/plate/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/plate (1).ogg',\
												'sound/foley/footsteps/armor/plate (2).ogg',\
												'sound/foley/footsteps/armor/plate (3).ogg'), 100)


//................ Full Plate Armor ............... //
/obj/item/clothing/suit/roguetown/armor/plate/full
	name = "plate armor"
	desc = "Full plate. Leg protecting tassets, groin cup, armored vambraces."
	icon_state = "plate"
	item_state = "plate"
	equip_delay_self = 8 SECONDS
	unequip_delay_self = 8 SECONDS
	sellprice = VALUE_FULL_PLATE

	armor_class = ARMOR_CLASS_HEAVY
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS


//................ Iron Plate Armor ............... //
/obj/item/clothing/suit/roguetown/armor/plate/iron
	name = "iron plate armor"
	desc = "A rough set of iron armor, complete with chainmail joints and pauldrons. A simple and cheap design to protect vital zones, but not the arms."
	icon_state = "ironplate"
	smeltresult = /obj/item/ingot/iron
	sellprice = VALUE_IRON_ARMOR*2

	armor = list("melee" = 60, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|VITALS|GROIN|LEGS
	max_integrity = INTEGRITY_STRONG


//................ Rusted Half-plate ............... //
/obj/item/clothing/suit/roguetown/armor/plate/rust
	name = "rusted half-plate"
	desc = "Old glory, old defeats, most of the rust comes from damp and not the blood of previous wearers, one would hope."
	icon_state = "rustplate"
	item_state = "rustplate"
	smeltresult = /obj/item/ingot/iron
	sellprice = VALUE_IRON_ARMOR/2

	max_integrity = INTEGRITY_STRONG


//................ Brigandine ............... //
/obj/item/clothing/suit/roguetown/armor/brigandine
	name = "brigandine"
	desc = "A coat with plates concealed inside an exterior fabric. Protects the user from melee impacts and also ranged attacks to an extent."
	icon_state = "brigandine"
	blocksound = SOFTHIT
	equip_delay_self = 4 SECONDS
	unequip_delay_self = 4 SECONDS
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	sellprice = VALUE_BRIGANDINE
	clothing_flags = CANT_SLEEP_IN
	armor_class = ARMOR_CLASS_HEAVY
	armor = list("melee" = 90, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	max_integrity = INTEGRITY_STRONGEST
	prevent_crits = ALL_EXCEPT_STAB

/obj/item/clothing/suit/roguetown/armor/brigandine/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/coatplates (1).ogg',\
												'sound/foley/footsteps/armor/coatplates (2).ogg',\
												'sound/foley/footsteps/armor/coatplates (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/brigandine/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/lordcolor(primary,secondary)
	detail_tag = "_det"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_cloak()

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/Destroy()
	GLOB.lordcolor -= src
	return ..()

//................ Coat of Plate ............... //
/obj/item/clothing/suit/roguetown/armor/brigandine/coatplates	// Scalemail with Bonus 50& integrity, minus 10% arrow armor. Brigandine for the heraldry I think.
	name = "coat of plates"
	desc = "A Zybantine leather coat with steel scales woven with miniscule threads of adamantine, \
			ensuring the wearer an optimal defence with forgiving breathability and mobility."
	icon_state = "coat_of_plates"
	blocksound = PLATEHIT
	sellprice = VALUE_SNOWFLAKE_STEEL

	armor_class = ARMOR_CLASS_MEDIUM
	armor = list("melee" = 90, "bullet" = 90, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = INTEGRITY_STRONG
	prevent_crits = ALL_EXCEPT_STAB


//................ Snowflake Plate ............... //
/obj/item/clothing/suit/roguetown/armor/rare
	name = "rare armor template"
	icon = 'icons/roguetown/clothing/Racial_Armour.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/onmob_racial.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/onmob_racial.dmi'
	sleevetype = null
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 4 SECONDS
	unequip_delay_self = 4 SECONDS
	sellprice = VALUE_SNOWFLAKE_STEEL
	clothing_flags = CANT_SLEEP_IN
	armor_class = ARMOR_CLASS_HEAVY
	armor = ARMOR_STEEL_BEST
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	prevent_crits = ALL_EXCEPT_STAB
	max_integrity = INTEGRITY_STRONGEST

/obj/item/clothing/suit/roguetown/armor/rare/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/fullplate (1).ogg',\
												'sound/foley/footsteps/armor/fullplate (2).ogg',\
												'sound/foley/footsteps/armor/fullplate (3).ogg'), 80)

/obj/item/clothing/suit/roguetown/armor/rare/elfplate
	name = "dark elf plate"
	desc = "A fine suit of sleek, moulded dark elf metal. Its interlocking nature and light weight allow for increased maneuverability."
	icon_state = "elfchest"
	item_state = "elfchest"
	allowed_race = list("elf", "half-elf", "dark elf")
	equip_delay_self = 2 SECONDS
	unequip_delay_self = 2 SECONDS

	armor_class = ARMOR_CLASS_MEDIUM // Elven craft
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/suit/roguetown/armor/rare/elfplate/welfplate
	name = "elvish plate"
	desc = "A suit of steel interwoven, through honed elven technique, with hardened bark plates."
	icon_state = "welfchest"
	item_state = "welfchest"

/obj/item/clothing/suit/roguetown/armor/rare/dwarfplate
	name = "dwarvish plate"
	desc = "Plate armor made out of the sturdiest, finest dwarvish metal armor. It's as heavy and durable as it gets."
	icon_state = "dwarfchest"
	item_state = "dwarfchest"
	allowed_race = list("dwarf")

	max_integrity = INTEGRITY_STRONGEST+100

/obj/item/clothing/suit/roguetown/armor/rare/grenzelplate
	name = "grenzelhoftian plate regalia"
	desc = "Engraved on this masterwork of humen metallurgy lies \"Thrice Slain, Thrice Risen, Thrice Pronged\" alongside the symbol of The Forgotten God in its neck guard."
	icon_state = "human_swordchest"
	item_state = "human_swordchest"
	allowed_race = list("human")
	allowed_sex = list(MALE)

	max_integrity = INTEGRITY_STRONG+100

/obj/item/clothing/suit/roguetown/armor/rare/zybanplate
	name = "kataphractoe scaleskin"
	desc = "Steel scales woven into armor with miniscule threads of adamantine, \
			ensuring the wearer optimal defence with forgiving breathability. \
			The sigil of the Zybantu Kataphractoe is embezzeled at the throat guard."
	icon_state = "human_spearchest"
	item_state = "human_spearchest"
	allowed_race = list("human")
	allowed_sex = list(MALE)

// Aasimar hoplite armor, a very rare armor indeed
/obj/item/clothing/suit/roguetown/armor/rare/hoplite
	name = "ancient plate armor"
	desc = "A battered set of bronze plate armor. Intricate runes and carvings once adorned the pieces, but most have faded with age."
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	icon_state = "aasimarplate"
	item_state = "aasimarplate"
	allowed_race = list("aasimar")
	smeltresult = null // No bronze ingots yet, unfortunately
	sellprice = VALUE_SNOWFLAKE_STEEL+BONUS_VALUE_MODEST // It has great value to historical collectors

	body_parts_covered = CHEST|GROIN|VITALS|LEGS

//..................................................................................................................................
/*-----------------\
| Antagonist Armor |
\-----------------*/

//................ Ancient Ceremonial Plate ............... //	- ANTAG GEAR Vampire Lord, do not use for other things. Their medium armor
/obj/item/clothing/suit/roguetown/armor/plate/vampire
	name = "ancient plate"
	desc = "An ornate, ceremonial plate armor worn by the masters of the nite."
	icon_state = "vplate"
	item_state = "vplate"

	armor_class = ARMOR_CLASS_MEDIUM
	armor = list("melee" = 100, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = ALL_CRITICAL_HITS_VAMP

//................ Ancient Haubergon ............... //	- ANTAG GEAR Vampire Lord, do not use for other things. They can wear their chain shirt like the other bikers. Their light armor
/obj/item/clothing/suit/roguetown/armor/chainmail/iron/vampire
	name = "ancient haubergon"
	desc = "A style of armor long out of use. Rests easy on the shoulders."
	icon_state = "vunder"
	item_state = "vunder"

	body_parts_covered = CHEST|GROIN|ARMS|VITALS


//................ Blacksteel Plate ............... //
/obj/item/clothing/suit/roguetown/armor/plate/blkknight
	name = "blacksteel plate"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	armor_class = ARMOR_CLASS_MEDIUM
	icon_state = "bkarmor"
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'



// VAMPIRE ARMORS BELOW

/obj/item/clothing/under/roguetown/platelegs/vampire
	name = "ancient plate greaves"
	desc = ""
	gender = PLURAL
	icon_state = "vpants"
	item_state = "vpants"
	sewrepair = FALSE
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BITE, BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST) // Vampire armors don't protect against lashing, Castlevania reference
	blocksound = PLATEHIT
	do_sound = FALSE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

/obj/item/clothing/suit/roguetown/shirt/vampire
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	name = "regal silks"
	desc = ""
	body_parts_covered = CHEST|GROIN|LEGS|VITALS
	prevent_crits = list(BCLASS_BITE, BCLASS_TWIST)
	icon_state = "vrobe"
	item_state = "vrobe"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/head/roguetown/vampire
	name = "crown of darkness"
	icon_state = "vcrown"
	body_parts_covered = null
	slot_flags = ITEM_SLOT_HEAD
	dynamic_hair_suffix = null
	sellprice = 1000
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/roguetown/boots/armor/vampire
	name = "ancient ceremonial boots"
	desc = "Antediluvian boots with ceremonial ornamets from ages past."
	body_parts_covered = FEET
	icon_state = "vboots"
	item_state = "vboots"
	prevent_crits = ALL_CRITICAL_HITS_VAMP
	color = null
	blocksound = PLATEHIT
	smeltresult = /obj/item/ingot/steel
	armor = list("melee" = 100, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/gloves/roguetown/chain/vampire
	name = "ancient ceremonial gloves"
	icon_state = "vgloves"
	smeltresult = /obj/item/ingot/steel

///////////////////////////////////////////////////////////////////
// Part of Kaizoku project. Usage ONLY for Stonekeep/Warmonger,  //
// If the usage is desired, ask monochrome9090 for permission.   //
// Respect the artists's will, COMMISSION them instead.          //
// This is solely for SPRITES. The code is free for the taking.	 //
///////////////////////////////////////////////////////////////////

/obj/item/clothing/suit/roguetown/armor/leather/vest/muneate //exists only for the drip.
	name = "muneate"
	desc = "A simple leather chest protector for casual archers. Barely protective- almost useless."
	icon_state = "muneate"
	item_state = "muneate"
	color = "#514339"
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	max_integrity = 100
	sewrepair = TRUE
	armor_class = ARMOR_CLASS_LIGHT
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/leather/vest/muneate/random/Initialize()
	color = pick("#6b5445", "#435436", "#704542", "#79763f")
	..()

/obj/item/clothing/suit/roguetown/armor/leather/vest/muneate/kappa
	color = "#579447"

/obj/item/clothing/suit/roguetown/armor/plate/nanbando
	name = "nanban-dou-sode"
	desc = "Abyssariad steel cuirass, refined and with additional sode for protection. Rare and prized by High-ranking zamurais, this design has been acquired from raided humen settlements."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "nanbando"
	item_state = "nanbando"

/obj/item/clothing/suit/roguetown/armor/cuirass/nanbando
	name = "nanban-dou"
	desc = "The Abyssariad steel cuirass that only protects the chest. Relatively common among the ones from the lower Zamurai caste."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "nanbandoc"
	item_state = "nanbandoc"

/obj/item/clothing/suit/roguetown/armor/plate/full/nanbando
	name = "nanban-do-gusoku"
	desc = "A complete set of abyssariad steel armor, refined and with additional auxiliary parts for protection."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "nanbandofull"

/obj/item/clothing/suit/roguetown/armor/chainmail/tatami
	name = "lamellae-tatami do"
	desc = "a foldable, lightweight armor for convenient motion and manufacturing ease. \
	It is made of rectangular steel lamellae sewn into chainmail and is a massforged armor. \
	Considered the backbone of abyssariad military armor, often used below mirror-armor and o-yoroi."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "laminartatami"

/obj/item/clothing/suit/roguetown/armor/chainmail/iron/tatami
	name = "tatami karuta-gane"
	desc = "a foldable, lightweight armor for convenient motion and manufacturing ease. \
	It is made of lacquered, card-like iron squares sewn into a padded cloth or leather backing."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "tatami"

/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/kusari
	name = "kusari katabira"
	desc = "Or simply 'single-layer chainmail robe', this armor is made of riveted steel rings  \
	patched together with slim plates protecting elbows. The armor reaches down to the legs and arms."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "kusari"
	item_state = "kusari"

/obj/item/clothing/suit/roguetown/armor/plate/mirror/iron
	name = "iron mirror armor"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	desc = "Polished iron plates defines the frame of this armor with a metal disk at its center. This is the armor design used by the Islander army together with a kusari katabira."
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "imirrorarmor"
	max_integrity = 200
	armor = list("melee" = 80, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_MEDIUM
	sellprice = 20

/obj/item/clothing/suit/roguetown/armor/plate/mirror
	name = "steel mirror armor"
	icon_state = "mirrorarmor"
	desc = "Polished steel plates defines the frame of this armor with a metal disk at its center. This is the armor design used by the Islander army together with a kusari katabira."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "mirrorarmor"

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi //I did everything I could to fix this shit. I couldn't. So the entire 'colourscheme overlay' ordeal went to hell.
	name = "o-yoroi"
	desc = "Heavy-duty lamellar armor esteemed high-ranking zamurais on horseback or on land."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "halfoyoroi"

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/royal/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/coatplates (1).ogg',\
												'sound/foley/footsteps/armor/coatplates (2).ogg',\
												'sound/foley/footsteps/armor/coatplates (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/royal/update_icon()
	cut_overlays()
	detail_tag = "_met"
	detail_color = GLOB.lordprimary
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/captain/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/captain/lordcolor(primary,secondary)
	detail_tag = "_met"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_armor()

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/captain/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/armor/brigandine/oyoroi/oyoroigusoku
	name = "o-yoroi gusoku"
	desc = "Heavy-duty, complete set of lamellar armor esteemed by high-ranking zamurais on horseback or on land."
	icon_state = "oyoroi"
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS

/obj/item/clothing/suit/roguetown/armor/cuirass/sanmaido
	name = "san mai-do"
	desc = "A cheap cuirass with three main plates riveted together with cloth. Flexible and dynamic, integral for many poor footsoldiers"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "sanmaido"

/obj/item/clothing/suit/roguetown/armor/leather/abyssal
	name = "leather lamellar armor"
	desc = "Also know as 'Tiejia', this islander leather armor features small rectangular leather plates laced together to cover vital organs."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "tiejia"

/obj/item/clothing/suit/roguetown/armor/leather/hide/dustwalker
	name = "leather cavalry armor"
	desc = "The Khatag Teghelgah designed to be used by abyssariad light cavalry and horse archers on the heart of Fog Island."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "arisan_khuyag"

/obj/item/clothing/suit/roguetown/armor/leather/studded/kikko //This one is more realistic than Studded Leather armor. A reminder that Studded leather armor is a misinterpretation of a Brigandine.
	name = "kikko jacket"
	desc = "A cheaper and lighter version of Kikko Tatami, a leather jacket with metal hexagon plates in a turtle-shell pattern."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "kikko"
	adjustable = CAN_CADJUST

/obj/item/clothing/suit/roguetown/armor/leather/studded/kikko/eidolon
	color = "#613a3f"

/obj/item/clothing/suit/roguetown/armor/leather/studded/kikko/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_open"
			flags_inv = null
			body_parts_covered = CHEST
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_armor()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_armor()

/obj/item/clothing/suit/roguetown/armor/leather/hide/shozoku
	name = "shozoku"
	desc = "The main garment used by Ninjas and Kunoichis to blend into the night. Not viable during daylight, but it is easy to store anywhere, and any time."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "shinobi"
	item_state = "shinobi"
	blocksound = SOFTHIT

/obj/item/clothing/suit/roguetown/armor/rattan //New armor; Iron-tier, chainmail-like, non-shirt wearable armor, but can be made in pairs. Looks fancier than the IRL version.
	slot_flags = ITEM_SLOT_ARMOR
	name = "rattan armor"
	desc = "A flexible and durable full body coat made from oil-boiled rattan and layered iron wires. Used by LinYou Raiders, it can be easily repaired."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	icon_state = "rattan"
	item_state = "rattan"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	armor = list("melee" = 70, "bullet" = 70, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB)
	blocksound = CHAINHIT
	var/do_sound = FALSE
	anvilrepair = /datum/skill/craft/armorsmithing
	armor_class = ARMOR_CLASS_MEDIUM
	smeltresult = /obj/item/ash
	sellprice = 30
	sewrepair = TRUE

/obj/item/clothing/suit/roguetown/armor/kaizoku/haori
	name = "haori"
	desc = "a traditional jacket meant to be worn over a kimono."
	icon_state = "haori"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	armor = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	nodismemsleeves = TRUE
	boobed = TRUE

/obj/item/clothing/suit/roguetown/armor/kaizoku/haori/random/Initialize()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")
	..()

/obj/item/clothing/suit/roguetown/armor/kaizoku/haori/dark
	color = CLOTHING_BLACK

/obj/item/clothing/suit/roguetown/armor/ceramic
	name = "tribal coverings"
	desc = "A more well-designed armor made with sturdy animal bones. Suitable for tribals whom uses little mettalurgy."
	icon_state = "nacre_covering"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	armor = list("melee" = 60, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB) // Bones are ceramic-like. These are horrible against blunt.
	armor_class = ARMOR_CLASS_MEDIUM
	max_integrity = 150
	anvilrepair = null //You can't repair 'ceramic' armor. You will need to make a new armor instead.
	smeltresult = /obj/item/ash
	sewrepair = FALSE
	slot_flags = ITEM_SLOT_ARMOR

/obj/item/clothing/suit/roguetown/armor/ceramic/reinforced
	name = "marauder trollhunter armor"
	desc = "The heavy armor used by the tribalistic Undine marauder forces under the flag of Abyssariads from the Flag Islands. Made of ceramic-like material from lava forges."
	icon_state = "marauder_chest"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB) // Bones are ceramic-like. These are horrible against blunt.
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS|ARMS|GROIN //Protects an acceptable large range of places for such relatively cost-y armor. I hope.
	armor = list("melee" = 60, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 250
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/ceramic/light
	name = "bone coverings"
	desc = "An simple, primitive armor made of chiseled bones bound with fibers and sinews. Stronger than gambesons, but requires conquering tough dendor's creatures to make."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	armor = list("melee" = 40, "bullet" = 30, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "ivory_coverings"
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|GROIN
	max_integrity = 100 //breaks quickly
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB) //Bones acts similar to ceramics, it will crack with blunt damage.
	armor_class = ARMOR_CLASS_LIGHT

//New Rare Heartfelt equipment

/obj/item/clothing/suit/roguetown/armor/medium/surcoat/heartfelt/abyssariad
	name = "abyssariad kikko gusoku"
	desc = "The Heartfelt design reforged in the ways of Fog Islands to better supply quick-moving zamurai cavalry, replacing the heavier and costier O-Yoroi lamellar."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS //does not protect the arms. Countering the Brigandine that protects the arms, but not legs.
	icon_state = "kikkoabyssal"
	item_state = "kikkoabyssal"
	sellprice = 65 //not unique.

/obj/item/clothing/suit/roguetown/armor/leather/vest/kaizoku
	name = "kaizoku's waitao"
	icon_state = "waitao_coat"
	color = null
	desc = "A silken coat of Heartfelt making used by the Abyssariad Kaizoku, those who brought the name of Fog Islands to the outsiders by accident. Or just artistic folk."
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	body_parts_covered = CHEST|VITALS|LEGS
	sellprice = 45

/obj/item/clothing/suit/roguetown/armor/shanwenkai //I dislike overused armor in unique roles. so I just made an "Officer" armor based on the chinese actual officer armor.
	slot_flags = ITEM_SLOT_ARMOR
	name = "weeper-patterned championage armor" //This is the Shan Wen Kia armor, but the downwards 'Y' is upwards now, so I can't name it <mountain patterned armor>
	desc = "The ancient godwenkai, a heavy armor made with overlapping arrangement of armor plates, assembled with the symbol of the Weeping God. This is used by Abyssariad Champions who still lingers on this world, honoring the Weeper who fed Abyssor."
	icon_state = "shanwenkai"
	blocksound = PLATEHIT
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	armor = list("melee" = 90, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 500
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	allowed_sex = list(MALE, FEMALE)
	anvilrepair = /datum/skill/craft/armorsmithing
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY
	smeltresult = /obj/item/ingot/steel
	sellprice = 95
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/gambeson/ruankai
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "padded ruankai"
	desc = "made of layered cotton or silk, it is quilted together to absorb shock from blows to protect wearer as a cushioning layer. Enough to survive a horse's kick."
	icon_state = "ruankai"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/gambeson/light/hitatare
	name = "yoroi hitatare"
	desc = "A traditional Abyssariad padded robe with wide sleeves, made to be worn beneath armor. It is comfortable and thick, but not very protective compared to a ruankai, but can be used all the time without raising suspicion."
	icon_state = "yoroihitatare"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/gambeson/light/hitatare/random/Initialize()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")
	..()

/obj/item/clothing/suit/roguetown/armor/gambeson/light/hitatare/ronin
	color = "#861e1e"

/obj/item/clothing/suit/roguetown/armor/gambeson/light/hitatare/eidolon
	color = "#613a3f"

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/deelcoat
	name = "reinforced deel coat"
	desc = "A loose-fitting abyssariad tunic usually made with horse leather, traditionally used by the Dustwalkers. The dense padding greatly protects the user against blunt trauma."
	icon_state = "deel"
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/leather/ninjakappa //same as studded leather armor
	name = "tribalistic bronze cuirass"
	desc = "A layered armor with oil-boiled leather reinforced with bronze plates sew into the fabric. Light and flexible, it is used by Undines who became part of underground shinobi operations to destroy illegal gangs, drugdealers and centers of prostitution."
	icon_state = "ninjakappa"
	item_state = "ninjakappa"
	blocksound = SOFTHIT
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_CHOP)
	armor = list("melee" = 60, "bullet" = 30, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	nodismemsleeves = TRUE
	body_parts_covered = CHEST|GROIN|VITALS
	max_integrity = 300
	sellprice = 50
	armor_class = ARMOR_CLASS_LIGHT
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'

/obj/item/clothing/suit/roguetown/armor/rare/myrmidon
	name = "myrmidon mingguang kai" // that's "明光铠", not the genshin character.
	desc = "Ocean-blessed overlapping steel plates joined by butchered demonhide threads and orichalcum infusion, \
	long purified with abyssor sigils and symbols of the Weeper. Each steel layer is engraved: \
	\"By the Heavenly Emperor's command. For the abyss against all odds.\""
	icon_state = "myrmidon"
	item_state = "myrmidon"
	allowed_race = list("abyssariad")
	sleevetype = null
	max_integrity = INTEGRITY_STRONGEST+100 //Chest + Pants - Everything is on a single armor. Breaks easier since it gets battered everywhere, so it requires more endurance.
	icon = 'icons/roguetown/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_armor.dmi'
	body_parts_covered = CHEST|GROIN|ARMS|VITALS|LEGS //Pays off with not having other limbparts.
