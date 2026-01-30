TypeNames:
	table_width 2, TypeNames

	dw .Normal
	dw .Fire
	dw .Water
	dw .Electric
	dw .Grass
	dw .Ice
	dw .Fighting
	dw .Poison
	dw .Ground
	dw .Flying
	dw .Psychic
	dw .Bug
	dw .Rock
	dw .Ghost
	dw .Dragon
	dw .Dark
	dw .Steel

	assert_table_length NUM_TYPES

.Normal:   db "NORMAL@"
.Fire:     db "FIRE@"
.Water:    db "WATER@"
.Electric: db "ELECTRIC@"
.Grass:    db "GRASS@"
.Ice:      db "ICE@"
.Fighting: db "FIGHTING@"
.Poison:   db "POISON@"
.Ground:   db "GROUND@"
.Flying:   db "FLYING@"
.Psychic:  db "PSYCHIC@"
.Bug:      db "BUG@"
.Rock:     db "ROCK@"
.Ghost:    db "GHOST@"
.Dragon:   db "DRAGON@"
.Dark:     db "DARK@"
.Steel:    db "STEEL@"
