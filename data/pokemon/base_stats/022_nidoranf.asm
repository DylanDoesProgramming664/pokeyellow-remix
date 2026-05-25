	db DEX_NIDORAN_F ; pokedex id

	db  65,  47,  62,  41,  50 ; 265/ 315
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,   0, +10,   0, +10 = +30/ +40

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

	db GROWL, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BLIZZARD,     \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SHADOW_CLAW,  \
	     SUBSTITUTE,   SHOCK_WAVE,   DIG,          BULLDOZE
	; end

	db 0 ; padding
