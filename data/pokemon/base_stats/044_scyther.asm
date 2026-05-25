	db DEX_SCYTHER ; pokedex id

	db  70, 110,  80, 105,  80 ; 445/ 525
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0, +25 = +25/ +25
	; SCIZOR =  75, 130, 100,  85,  55,  80 -> 525

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1 ; sprite dimensions
	dw ScytherPicFront, ScytherPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          RAZOR_WIND
	; end

	db 0 ; padding
