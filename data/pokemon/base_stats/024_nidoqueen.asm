	db DEX_NIDOQUEEN ; pokedex id

	db  94,  94,  90,  77,  85 ; 440 / 525
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +4, +12,  +3,  +1, +10 = +30 / +30

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp
	; STAT_EXP_EFFICIENCY = (440 * 7) / 194 = 15.9

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TACKLE, SCRATCH, DIG, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, FLAMETHROWER, MEGA_KICK, TOXIC, HORN_DRILL, BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db 0 ; padding
