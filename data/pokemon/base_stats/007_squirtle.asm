	db DEX_SQUIRTLE ; pokedex id

	db  44,  48,  66,  42,  64 ; 266 / 330
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,  +1,  +1,   0, +14 = +16 / +16

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
    ; STAT_EXP_EFFICIENCY = (266 * 7) /  66 = 28.2

	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1 ; sprite dimensions
	dw SquirtlePicFront, SquirtlePicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
