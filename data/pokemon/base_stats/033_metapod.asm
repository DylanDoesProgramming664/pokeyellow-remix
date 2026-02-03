	db DEX_METAPOD ; pokedex id

	db  50,  20,  55,  30,  25 ; 180 / 205
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,   0,   0,   0,   0 =   0 /   0

	db BUG, BUG ; type
	db 120 ; catch rate
	db 72 ; base exp
    ; STAT_EXP_EFFICIENCY = (180 * 7) /  72 = 17.5

	INCBIN "gfx/pokemon/front/metapod.pic", 0, 1 ; sprite dimensions
	dw MetapodPicFront, MetapodPicBack

	db TACKLE, HARDEN, STRING_SHOT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding
