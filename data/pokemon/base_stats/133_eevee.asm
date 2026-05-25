	db DEX_EEVEE ; pokedex id

	db  85,  60,  60,  60,  60 ; 325/ 385
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +30,  +5, +10,  +5,  -5 = +45/ +60
	; ESPEON  =  85,  60,  60, 110, 130, 110 -> 555
	; UMBREON = 110,  85, 110,  60,  60, 130 -> 555
	; LEAFEON =  85, 110, 130, 110,  60,  60 -> 555
	; GLACEON =  85,  60,  60, 110, 130, 110 -> 555
	; SYLVEON = 110,  85,  60,  60, 110, 130 -> 555
	;            hp  atk  def  spd  sat  sde

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/eevee.pic", 0, 1 ; sprite dimensions
	dw EeveePicFront, EeveePicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,    \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,    \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   DIG
	; end

	db 0 ; padding
