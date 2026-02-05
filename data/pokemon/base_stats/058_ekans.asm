	db DEX_EKANS ; pokedex id

	db  38,  60,  44,  55,  54 ; 241 / 305
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +3,   0,   0,   0, +14 = +17 / +17

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

	db LEER, CONSTRICT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
