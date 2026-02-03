	db DEX_PARAS ; pokedex id

	db  35,  70,  55,  25,  55 ; 230 / 295
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,   0,   0,   0,   0 =   0 / +10

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

    INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
	     SUBSTITUTE,   CUT
	; end

	db 0 ; padding
