	db DEX_WEEZING ; pokedex id

	db  65,  90, 120,  60,  85 ; 420/ 505
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0,   0 =   0/ +15

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

	db TACKLE, SMOG, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   FLAMETHROWER, TOXIC,        HYPER_BEAM,   RAGE,         \
         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         \
         FIRE_BLAST,   FLASH_CANNON, REST,         SUBSTITUTE,   SHOCK_WAVE,   \
         FLY
	; end

	db 0 ; padding
