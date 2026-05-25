	db DEX_ONIX ; pokedex id

	db  75,  80, 160,  85,  65 ; 465/ 530
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +40, +35,   0, +15, +35 =+125/+145
	; STEELIX = 115, 120, 200,  65,  30,  65 -> 595
	;            hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     EARTHQUAKE,   BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH,     STONE_EDGE
	; end

	db 0 ; padding
