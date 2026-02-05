	db DEX_HITMONLEE ; pokedex id

	db  66, 120,  71,  93,  75 ; 420 / 500
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;  +16,   0, +18,  +6, +40 = +80 / +45

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
	     SKULL_BASH,   REST,         SUBSTITUTE,   STRENGTH, ROCK_SLIDE
	; end

	db 0 ; padding
