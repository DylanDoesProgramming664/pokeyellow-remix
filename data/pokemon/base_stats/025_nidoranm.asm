	db DEX_NIDORAN_M ; pokedex id

	db  46,  67,  42,  60,  50 ; 265/ 315
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,  +2, +10, +10 = +32/ +42

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BLIZZARD,     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
	     SHADOW_CLAW,  SUBSTITUTE,   SHOCK_WAVE,   BULLDOZE,    DIG
	; end

	db 0 ; padding
