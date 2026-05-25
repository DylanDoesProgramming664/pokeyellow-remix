	db DEX_CUBONE ; pokedex id

	db  55,  60,  95,  45,  60  ; 315/ 375
	;   hp  atk  def  spd  spc   Gen1/Gen2
	;   +5, +10,   0, +10, +20  = +45/ +55

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	db GROWL, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, FLAMETHROWER, MEGA_KICK, TOXIC, BODY_SLAM,  TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FIRE_BLAST,   SKULL_BASH,   REST, SUBSTITUTE,   CUT,  STRENGTH,	   \
	     SWORDS_DANCE, SHADOW_CLAW,  STONE_EDGE
	; end

	db 0 ; padding
