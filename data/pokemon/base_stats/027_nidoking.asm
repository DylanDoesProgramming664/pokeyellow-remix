	db DEX_NIDOKING ; pokedex id

	db  81, 102,  77,  95,  85 ; 440/ 525
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,   0, +10, +10 = +30/ +30

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db TACKLE, THRASH, DIG, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, FLAMETHROWER, MEGA_KICK, TOXIC, STONE_EDGE, BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     BULLDOZE,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SKULL_BASH,   REST,         SHADOW_CLAW,  ROCK_SLIDE,   \
	     SUBSTITUTE,   SHOCK_WAVE,   SURF,         STRENGTH,     DIG
	; end

	db 0 ; padding
