	db DEX_VOLTORB ; pokedex id

	db  40,  30,  50, 110,  65 ; 295/ 360
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0, +10, +10 = +20/ +30

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp

	INCBIN "gfx/pokemon/front/voltorb.pic", 0, 1 ; sprite dimensions
	dw VoltorbPicFront, VoltorbPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    RAGE,         THUNDERBOLT,  THUNDER,      \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        REST,         THUNDER_WAVE, SHOCK_WAVE,   SUBSTITUTE,   \
	     FLASH
	; end

	db 0 ; padding
