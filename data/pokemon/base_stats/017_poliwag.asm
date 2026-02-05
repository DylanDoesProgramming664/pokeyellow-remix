	db DEX_POLIWAG ; pokedex id

	db  40,  50,  40,  90,  40 ; 260 / 300
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,   0,   0,   0,   0 =   0 /   0

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp
	; STAT_EXP_EFFICIENCY = (260 * 7) /  77 = 23.6

	INCBIN "gfx/pokemon/front/poliwag.pic", 0, 1 ; sprite dimensions
	dw PoliwagPicFront, PoliwagPicBack

	db DOUBLESLAP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
	     PSYWAVE,      SUBSTITUTE,   SURF,   DREAM_EATER
	; end

	db 0 ; padding
