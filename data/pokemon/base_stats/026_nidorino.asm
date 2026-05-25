	db DEX_NIDORINO ; pokedex id

	db  61,  82,  57,  75,  65 ; 340/ 405
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,   0, +10, +10 = +30/ +40

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp

	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         SHADOW_CLAW,  SUBSTITUTE,   \
	     SHOCK_WAVE,   DIG,          BULLDOZE
	; end

	db 0 ; padding
