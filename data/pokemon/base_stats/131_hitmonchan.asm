	db DEX_HITMONCHAN ; pokedex id

	db  55, 105,  79,  76,  75 ; 425 / 500
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,   0,   0,   0, +40 = +40 / +45

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1 ; sprite dimensions
	dw HitmonchanPicFront, HitmonchanPicBack

	db COMET_PUNCH, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   STRENGTH, ROCK_SLIDE
	; end

	db 0 ; padding
