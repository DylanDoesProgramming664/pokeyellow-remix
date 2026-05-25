	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50, 100 ; 435/ 535
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0, +35 = +35/ +35

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db POUND, DISABLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLAMETHROWER, TOXIC, BODY_SLAM,   HYPER_BEAM,   RAGE,   MEGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FIRE_BLAST,   REST,         SUBSTITUTE,   SHOCK_WAVE,   DIG
	; end

	db 0 ; padding
