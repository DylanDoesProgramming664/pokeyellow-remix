	db DEX_GLOOM ; pokedex id

	db  70,  65,  70,  40,  85 ; 330 / 415
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;  +10,   0,   0,   0,   0 = +10 / +20

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp
    ; STAT_EXP_EFFICIENCY = (330 * 7) / 132 = 17.5

	INCBIN "gfx/pokemon/front/gloom.pic", 0, 1 ; sprite dimensions
	dw GloomPicFront, GloomPicBack

	db TACKLE, STUN_SPORE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
