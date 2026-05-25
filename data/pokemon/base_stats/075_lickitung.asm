	db DEX_LICKITUNG ; pokedex id

	db  95,  70,  85,  30,  75 ; 355/ 430
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;   +5, +15, +10,   0, +15 = +45/ +45
	; LICKILICKY = 115, 100, 105,  50,  95,  95 -> 560
	;               hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db LICK, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   BULLDOZE,     \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SHOCK_WAVE,   CUT,          SURF,         \
	     STRENGTH,     STONE_EDGE,   DIG
	; end

	db 0 ; padding
