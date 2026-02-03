	db DEX_CHARMELEON ; pokedex id

	db  58,  74,  58,  80,  80 ; 350 / 430
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0, +10,   0,   0, +15 = +25 / +25

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
    ; STAT_EXP_EFFICIENCY = (350 * 7) / 142 = 17.3

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, FLAMETHROWER, MEGA_KICK, TOXIC,  BODY_SLAM,  \
	     TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         DRAGON_RAGE,  DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          STRENGTH
	; end

	db 0 ; padding
