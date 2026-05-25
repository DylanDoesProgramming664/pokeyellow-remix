	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30, 110  ; 475 /  585
	;   hp  atk  def  spd  spc   Gen1 / Gen2
	;    0,   0,   0,   0, +45  = +45 /  +45
	; MUNCHLAX = 135,  85,  40,   5,  85,  85 -> 435
	;             hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db AMNESIA, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, FLAMETHROWER, MEGA_KICK, TOXIC, BODY_SLAM,  TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     BULLDOZE,     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    FIRE_BLAST,   SKULL_BASH,   REST,         \
	     PSYWAVE,      ROCK_SLIDE,   SUBSTITUTE,   SHOCK_WAVE,   SURF,         \
	     STRENGTH,     STONE_EDGE
	; end

	db 0 ; padding
