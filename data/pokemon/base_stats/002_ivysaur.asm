	db DEX_IVYSAUR ; pokedex id

	db  63,  64,  65,  63,  85 ; 340 / 425
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;   +2,  +3,  +3,  +2,  +5 = +15 / +20

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp
    ; STAT_EXP_EFFICIENCY = (340 * 7) / 141 = 16.9

	INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1 ; sprite dimensions
	dw IvysaurPicFront, IvysaurPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
