	db DEX_GRAVELER ; pokedex id

	db  55, 105, 115,  35,  55 ; 365/ 420
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,   0,   0, +10 = +20/ +30
	; sat/sde = 45/ 65

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    FIRE_BLAST,   REST,         FLASH_CANNON, ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH,     STONE_EDGE
	; end

	db 0 ; padding
