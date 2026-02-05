	db DEX_KAKUNA ; pokedex id

	db  45,  25,  50,  35,  25 ; 180 / 205
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,   0,   0,   0,   0 =   0 /   0

	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp
	; STAT_EXP_EFFICIENCY = (180 * 7) / EXP = 17.7

	INCBIN "gfx/pokemon/front/kakuna.pic", 0, 1 ; sprite dimensions
	dw KakunaPicFront, KakunaPicBack

	db POISON_STING, STRING_SHOT, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding
