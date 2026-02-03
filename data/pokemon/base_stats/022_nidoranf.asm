	db DEX_NIDORAN_F ; pokedex id

	db  59,  49,  53,  42,  40 ; 245 / 285
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;   +4,  +2,  +3,  +1,   0 = +10 / +10

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp
    ; STAT_EXP_EFFICIENCY = (245 * 7) /  59 = 29.1

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

	db GROWL, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BLIZZARD,     \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
