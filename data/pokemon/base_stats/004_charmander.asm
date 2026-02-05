	db DEX_CHARMANDER ; pokedex id

	db  40,  62,  43,  65,  65 ; 275 / 340
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +1, +10,   0,   0, +15 = +26 / +31

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp
	; STAT_EXP_EFFICIENCY = (275 * 7) /  65 = 29.6

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, FLAMETHROWER, MEGA_KICK, TOXIC,  BODY_SLAM,      \
	     TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         DRAGON_RAGE,  DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          STRENGTH
	; end

	db 0 ; padding
