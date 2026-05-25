	db DEX_KINGLER ; pokedex id

	db  55, 130, 115,  75,  70 ; 445/ 515
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0, +20 = +20/ +40
	; In Gen2, Sp.ATK/Sp.DEF =  50/ 90

	db WATER, BUG ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1 ; sprite dimensions
	dw KinglerPicFront, KinglerPicBack

	db BUBBLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         \
	     SUBSTITUTE,   CUT,          SURF,         STRENGTH,     DIG
	; end

	db 0 ; padding
