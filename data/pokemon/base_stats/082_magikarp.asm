	db DEX_MAGIKARP ; pokedex id

	db  20,  10,  55,  80,  20 ; 185 / 205
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,   0,   0,   0,   0 =   0 /  +5

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp

	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1 ; sprite dimensions
	dw MagikarpPicFront, MagikarpPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, COUNTER, MIMIC,        DOUBLE_TEAM, \
         REFLECT,      BIDE,  REST,    THUNDER_WAVE, SUBSTITUTE,  \
         SURF,         FLASH
	; end

	db 0 ; padding
