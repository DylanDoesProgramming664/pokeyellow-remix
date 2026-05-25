	db DEX_SQUIRTLE ; pokedex id

	db  44,  48,  80,  43,  65 ; 280/ 345
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0, +15,   0, +15 = +30/ +31
	; TODODILE =  50,  95,  65,  43,  44,  48 -> 345
	;             hp  atk  def  spd  sat  sde
	;              0, +30,  +1,   0,   0,   0 =  +31

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1 ; sprite  dimensions
	dw SquirtlePicFront, SquirtlePicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
