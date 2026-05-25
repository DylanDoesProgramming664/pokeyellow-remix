	db DEX_SANDSLASH ; pokedex id

	db  85, 100, 110,  75,  55 ; 425/ 480
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,   0,   0, +10,   0 = +20/ +30

	db GROUND, STEEL ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1 ; sprite dimensions
	dw SandslashPicFront, SandslashPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FLASH_CANNON, SWIFT,        SKULL_BASH,   REST,         SHADOW_CLAW,  \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT,          STRENGTH,     STONE_EDGE
	; end

	db 0 ; padding
