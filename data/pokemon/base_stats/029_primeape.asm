	db DEX_PRIMEAPE ; pokedex id

	db  65, 110,  60, 105,  80 ; 420 / 500
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +5,   0, +10, +20 = +35 / +45

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp
	; STAT_EXP_EFFICIENCY = (395 * 7) / 149 = 18.6

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
