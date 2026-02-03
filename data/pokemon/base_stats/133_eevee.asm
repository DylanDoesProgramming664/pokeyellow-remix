	db DEX_EEVEE ; pokedex id

	db  70,  65,  65,  65,  75 ; 330 / 405
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;  +10, +10, +10, +10, +10 = +50 / +80

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/eevee.pic", 0, 1 ; sprite dimensions
	dw EeveePicFront, EeveePicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DIG,          MIMIC,   DOUBLE_TEAM,  REFLECT,      BIDE,              \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
