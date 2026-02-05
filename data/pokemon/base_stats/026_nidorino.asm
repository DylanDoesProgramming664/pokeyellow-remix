	db DEX_NIDORINO ; pokedex id

	db  63,  76,  58,  68,  55 ; 320 / 375
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +2,  +4,  +1,  +3,   0 = +10 / +10

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp
	; STAT_EXP_EFFICIENCY = (320 * 7) / 118 = 19.0

	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
