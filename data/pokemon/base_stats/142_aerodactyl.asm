	db DEX_AERODACTYL ; pokedex id

	db 104, 117,  65, 143,  78  ; 507 /  585
	;   hp  atk  def  spd  spc   Gen1 / Gen2
	;  +24, +12,   0, +13, +18  = +67 /  +70

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db WING_ATTACK, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,  FLAMETHROWER, TOXIC,        TAKE_DOWN,   DOUBLE_EDGE,  \
	     HYPER_BEAM,  RAGE,         DRAGON_RAGE,  EARTHQUAKE,  MIMIC,        \
	     DOUBLE_TEAM, REFLECT,      BIDE,         FIRE_BLAST,  SWIFT,        \
		 SKY_ATTACK,  REST,         SUBSTITUTE,   FLY,         ROCK_SLIDE,   \
	     BULLDOZE,    STONE_EDGE
	; end

	db 0 ; padding
