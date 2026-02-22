PrintMoveCategory:
	call GetPredefRegisters
	push hl
	ld a, [wPlayerMoveCategory]
	add a
	ld hl, CategoryNames
	ld e, a
	ld d, $0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	jp PlaceString

INCLUDE "data/types/category_names.asm"
