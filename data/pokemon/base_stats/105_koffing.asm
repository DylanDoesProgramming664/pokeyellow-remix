	db DEX_KOFFING ; pokedex id

	db  40,  65,  95,  35,  60 ; 295/ 355
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0,   0 =   0/ +15

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/koffing.pic", 0, 1 ; sprite dimensions
	dw KoffingPicFront, KoffingPicBack

	db TACKLE, SMOG, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   FLAMETHROWER, TOXIC,        RAGE,   THUNDERBOLT, \
         THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,   FIRE_BLAST,  \
         REST,         SUBSTITUTE,   SHOCK_WAVE,   FLY
	; end

	db 0 ; padding
