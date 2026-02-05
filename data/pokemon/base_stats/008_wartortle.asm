	db DEX_WARTORTLE ; pokedex id

	db  60,  64,  82,  59,  80 ; 345 / 425
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +1,  +1,  +2,  +1, +15 = +20 / +20

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp
	; STAT_EXP_EFFICIENCY = (345 * 7) / 143 = 16.9

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
