// Semi-automatic, Magazine fed shotgun. Small mags, and unique! (among station weapons)

/obj/item/gun/ballistic/shotgun/varri
	name = "\improper Varri semi-automatic shotgun"
	desc = "A twelve gauge, magazine fed, semi-automatic shotgun designed for use in very close quarters."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/szot_dynamica/guns_48.dmi'
	icon_state = "varri"

	worn_icon = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_worn.dmi'
	worn_icon_state = "varri"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_righthand.dmi'
	inhand_icon_state = "varri"

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/shotgun_heavy.ogg'
	rack_sound = 'modular_nova/modules/modular_weapons/sounds/shotgun_rack.ogg'
	suppressed_sound = 'modular_nova/modules/modular_weapons/sounds/suppressed_heavy.ogg'
	can_suppress = TRUE

	accepted_magazine_type = /obj/item/ammo_box/magazine/varri

	semi_auto = TRUE
	internal_magazine = FALSE
	tac_reloads = TRUE
	mag_display = TRUE

	suppressor_x_offset = 9

	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BACK

/obj/item/gun/ballistic/shotgun/varri/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SZOT)

/obj/item/gun/ballistic/shotgun/varri/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/shotgun/varri/examine_more(mob/user)
	. = ..()

	. += "The Varri is, at its core, designed to clear rooms quickly, \
	efficiently, and cleanly. Its semi-automatic, and magazine fed \
	nature allow users to easily eliminate any threats in a given room, \
	reload, and move on to the next. With room for an attachable flashlight \
	and suppressor, its no suprise it was popular with paramilitary forces \
	that needed a cheap, reliable way to get the job done. Nowadays its \
	been relegated to the shadow of the 'bulldog', but it is still a prize \
	for collectors, and those unable to afford the more exotic cousin. \
	The name was originally derrived from the old-earth albanian word for 'Grave'."

	return .

/obj/item/gun/ballistic/shotgun/varri/no_mag
	spawnwithmagazine = FALSE
