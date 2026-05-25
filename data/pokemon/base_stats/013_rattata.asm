	db DEX_RATTATA ; pokedex id

	db  30,  57,  35,  73,  40 ; 235/ 275
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,  +1,   0,  +1, +15 = +17/ +22
	; sat/sde = 25/ 55
    ; SENTRET =  35,  46,  34,  20,  35,  45 -> 215
	;            hp  atk  def  spd  sat  sde

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/rattata.pic", 0, 1 ; sprite dimensions
	dw RattataPicFront, RattataPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    BLIZZARD,     RAGE,         THUNDERBOLT,  THUNDER,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SHOCK_WAVE
	; end

	db 0 ; padding
