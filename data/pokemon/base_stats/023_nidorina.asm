	db DEX_NIDORINA ; pokedex id

	db  74,  74,  70,  57,  65 ; 335 / 400
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +4, +12,  +3,  +1, +10 = +25 / +35

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp
	; STAT_EXP_EFFICIENCY = (320 * 7) / 117 = 19.1

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
