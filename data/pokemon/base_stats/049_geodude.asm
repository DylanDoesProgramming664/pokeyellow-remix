	db DEX_GEODUDE ; pokedex id

	db  40,  90, 100,  20,  40 ; 290/ 330
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,   0,   0, +10 = +20/ +30
	; sat/sde = 30/ 50

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp

	INCBIN "gfx/pokemon/front/geodude.pic", 0, 1 ; sprite dimensions
	dw GeodudePicFront, GeodudePicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    FIRE_BLAST,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH,     STONE_EDGE
	; end

	db 0 ; padding
