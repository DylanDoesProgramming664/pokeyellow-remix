	db DEX_NIDORAN_M ; pokedex id

	db  48,  61,  43,  53,  40 ; 245 / 285
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +2,  +4,  +1,  +3,   0 = +10 / +10

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp
	; STAT_EXP_EFFICIENCY = (245 * 7) /  60 = 28.6

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BLIZZARD,     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db 0 ; padding
