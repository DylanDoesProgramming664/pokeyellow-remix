	db DEX_MAGNETON ; pokedex id

	db  60,  60,  95,  70, 120 ; 405/ 525
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,   0,   0,   0,   0 = +10/ +60
	; MAGNEZONE =  80,  70, 115,  70, 130, 130 -> 595
	;              hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   RAGE,         \
	     THUNDERBOLT,  THUNDER,      TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        REST,         THUNDER_WAVE, \
	     TRI_ATTACK,   SUBSTITUTE,   SHOCK_WAVE,   FLASH
	; end

	db 0 ; padding
