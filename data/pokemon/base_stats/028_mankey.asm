	db DEX_MANKEY ; pokedex id

	db  40,  85,  35,  80,  45 ; 285 / 330
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +5,   0, +10, +10 = +25 / +25

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp
	; STAT_EXP_EFFICIENCY = (270 * 7) /  74 = 25.5

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
