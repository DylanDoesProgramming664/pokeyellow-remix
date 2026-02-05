	db DEX_BLASTOISE ; pokedex id

	db  81,  86, 106,  80, 101 ; 454 / 555
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +2,  +3,  +6,  +2, +16 = +29 / +25

	db WATER, STEEL ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	; STAT_EXP_EFFICIENCY = (454 * 7) / 210 = 15.0

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db 0 ; padding
