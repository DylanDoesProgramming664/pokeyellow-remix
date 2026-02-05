	db DEX_DITTO ; pokedex id

	db  60,  60,  60,  90,  60 ; 330 / 390
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;  +12, +12, +12, +42, +12 = +90 /+102

	db NORMAL, NORMAL ; type
	db 35 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/front/ditto.pic", 0, 1 ; sprite dimensions
	dw DittoPicFront, DittoPicBack

	db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding
