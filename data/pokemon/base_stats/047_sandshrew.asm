	db DEX_SANDSHREW ; pokedex id

	db  60,  75,  85,  50,  30 ; 300/ 330
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,   0,   0, +10,   0 = +20/ +30

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   SEISMIC_TOSS, RAGE,         EARTHQUAKE,   BULLDOZE,     \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FLASH_CANNON, \
	     SWIFT,        SKULL_BASH,   REST,         SHADOW_CLAW,  ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          STRENGTH
	; end

	db 0 ; padding
