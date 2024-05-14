// Varri Shotgun. A Semi-automatic, Magazine fed weapon with small mags, and its unique! (among station weapons)

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

// Musor Shotgun. A Bolt-action, Magazine fed weapon with tiny two round mags

/obj/item/gun/ballistic/shotgun/musor
	name = "\improper Musor bolt-action shotgun"
	desc = "A twelve gauge, magazine fed, bolt-action shotgun. Sturdy and reliable, yet cheap and mass produced."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/szot_dynamica/guns_48.dmi'
	icon_state = "musor"

	worn_icon = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_worn.dmi'
	worn_icon_state = "musor"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/szot_dynamica/guns_righthand.dmi'
	inhand_icon_state = "musor"

	accepted_magazine_type = /obj/item/ammo_box/magazine/musor

	can_bayonet = FALSE
	internal_magazine = FALSE
	mag_display = TRUE
	can_be_sawn_off = FALSE
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BELT
	bolt_wording = "bolt"
	bolt_type = BOLT_TYPE_LOCKING
	semi_auto = FALSE
	fire_sound = 'sound/weapons/gun/rifle/shot_heavy.ogg'
	rack_sound = 'sound/weapons/gun/rifle/bolt_out.ogg'
	bolt_drop_sound = 'sound/weapons/gun/rifle/bolt_in.ogg'

	SET_BASE_PIXEL(0, 0)

/obj/item/gun/ballistic/shotgun/musor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SZOT)

/obj/item/gun/ballistic/shotgun/musor/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/shotgun/musor/examine_more(mob/user)
	. = ..()

	. += "The Musor is a relic of a bygone age, where bolt action \
	was seen as the most reliable way to chamber a weapon. It made \
	sure that the weapon wouldnt fire when you opened the bolt, and \
	allowed for the easiest field stripping and maintnence. Nowadays, \
	manufacturers assume you have a whole toolkit with gun oil and \
	everything, but this weapon stays true to its roots. Hard hitting, \
	reliable, a bit ugly and often dismissed for its small capacity. \
	those who doubt its power are often the ones found dead, and remembering \
	that it takes one pellet to put you down at the end of the day."

	return .
