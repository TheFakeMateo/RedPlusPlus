	db DRAGONITE ; 149

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM ; item 1
	db DRAGON_SCALE ; item 2
	db 127 ; gender
	db 40 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db INNER_FOCUS ; ability 1
if DEF(FAITHFUL)
	db INNER_FOCUS ; ability 2
else
	db MARVEL_SCALE ; ability 2
endc
	db MULTISCALE ; hidden ability
	db SLOW ; growth rate
	dn AMPHIBIAN, REPTILE ; egg groups

	; ev_yield
	ev_yield   0,   3,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DRAGONBREATH, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SWIFT, AERIAL_ACE, STONE_EDGE, REST, ATTRACT, STEEL_WING, ROCK_SLIDE, FURY_CUTTER, ROCK_SMASH, FOCUS_BLAST, ENDURE, DRAGON_PULSE, THUNDER_WAVE, GIGA_IMPACT, CUT, FLY, SURF, STRENGTH, WATERFALL, WHIRLPOOL, AQUA_TAIL, BODY_SLAM, DOUBLE_EDGE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, SLEEP_TALK, SUBSTITUTE, SWAGGER, THUNDERPUNCH, WATER_PULSE, ZAP_CANNON
	; end