	db DEX_ODDISH ; pokedex id

	db  50,  50,  55,  30,  75 ; 260 / 335
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;   +5,   0,   0,   0,   0 =  +5 / +15

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp
    ; STAT_EXP_EFFICIENCY = (260 * 7) /  78 = 23.3

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
