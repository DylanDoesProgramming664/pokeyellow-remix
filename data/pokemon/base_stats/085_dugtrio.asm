	db DEX_DUGTRIO ; pokedex id

	db  45, 100,  50, 120,  70 ; 365/ 435
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10, +20,   0,   0,   0 = +30/ +50

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         EARTHQUAKE,   BULLDOZE,     DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         FLASH_CANNON, REST,         SHADOW_CLAW,  \
	     ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   CUT
	; end

	db 0 ; padding
