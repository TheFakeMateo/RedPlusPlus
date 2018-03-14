MountMoonSquare_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 23, 11, ROUTE_4, 2 ; TODO: Cable Car Building
	warp_event 15,  7, MOUNT_MOON_GIFT_SHOP, 1
	warp_event 24,  6, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	treebase_left_event_1 24,  5, SECRET_BASE_MT_MOON_SQUARE, EVENT_SECRET_BASE_MT_MOON_SQUARE
	treebase_left_event_2 24,  5, SECRET_BASE_MT_MOON_SQUARE, EVENT_SECRET_BASE_MT_MOON_SQUARE_ESTABLISHED
	object_event 26, 10, SPRITE_CABLE_CAR_POLE, SPRITEMOVEDATA_CABLE_SIDE, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 27, 10, SPRITE_CABLE_CAR_POLE, SPRITEMOVEDATA_CABLE_SIDE, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 28, 10, SPRITE_CABLE_CAR_POLE, SPRITEMOVEDATA_CABLE_SIDE, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 29, 10, SPRITE_CABLE_CAR_POLE, SPRITEMOVEDATA_CABLE_SIDE, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 30, 10, SPRITE_CABLE_CAR_POLE, SPRITEMOVEDATA_CABLE_SIDE, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
