	db DEX_HITMONLEE ; pokedex id

	db  80, 120,  53, 127,  60 ; 440/ 500
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +30,   0,   0, +40, +25 = +95/ +45
	; sat/sde =  10/110

	; HITMONTOP =  80, 100, 100, 100,  10, 110 ; HITMONTOP = 500
	;   40,  50,  50,  50,   5,  55 ; TYROGUE   = 250

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonlee.pic", 0, 1 ; sprite dimensions
	dw HitmonleePicFront, HitmonleePicBack

	db DOUBLE_KICK, MEDITATE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   STRENGTH,     ROCK_SLIDE,   \
	     BULLDOZE,     STONE_EDGE,   EARTHQUAKE
	; end

	db 0 ; padding
