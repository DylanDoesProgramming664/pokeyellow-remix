	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  80 ; 450/ 530
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0, +40 = +40/ +40

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db COMET_PUNCH, RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   BULLDOZE,     MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         \
	     SHADOW_CLAW,  ROCK_SLIDE,   SUBSTITUTE,   SHOCK_WAVE,   SURF,         \
	     STRENGTH,     STONE_EDGE,   DIG
	; end

	db 0 ; padding
