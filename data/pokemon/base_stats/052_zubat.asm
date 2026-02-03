	db DEX_ZUBAT ; pokedex id

	db  40,  50,  35,  55,  45 ; 225 / 270
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,  +5,   0,   0,  +5 = +10 / +25

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db LEECH_LIFE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding
