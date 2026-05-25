# Physical Special Split With Bit Masking

This is a tutorial on adding move categories to moves via bit masking, as well as printing said move categories in place of the "TYPE/" text in the move menu in battle.

This tutorial is entirely based on the Physical/Special split tutorial from [pret/pokecrystal](https://github.com/pret/pokecrystal/wiki/Physical-Special-Split), but adjusts the instructions, edits and additions based on the pokered and pokeyellow codebase. There will be additional notes if adding and accounting for additional categories.

## Contents
1. [Define new constants](#1-define-new-constants)
2. [Update moves with their categories](#2-update-moves-with-their-categories)
3. [Mask out the category in PrintMoveType](#3-mask-out-the-category-in-printmovetype)
4. [Mask out the category or type in the battle engine](#4-mask-out-the-category-in-the-battle-engine)
5. [Update AI to understand categories](#5-update-ai-to-understand-categories)
6. [Support printing category names](#6-support-printing-categories)
7. [Display Categories in battle](#7-display-categories-in-battle)

## 1. Define new constants
Edit [constants/type_constants.asm](https://github.com/pret/pokered/blob/master/constants/type_constants.asm):
```diff
 ; TypeNames indexes (see data/types/names.asm)
 	const_def
 
-DEF PHYSICAL EQU const_value
 	const NORMAL       ; $00
 	const FIGHTING     ; $01
 	const FLYING       ; $02
 	const POISON       ; $03
 	const GROUND       ; $04
 	const ROCK         ; $05
 	const BIRD         ; $06
 	const BUG          ; $07
 	const GHOST        ; $08
 
 DEF UNUSED_TYPES EQU const_value
 	const_next 20
 DEF UNUSED_TYPES_END EQU const_value
 
-DEF SPECIAL EQU const_value
 	const FIRE         ; $14
 	const WATER        ; $15
 	const GRASS        ; $16
 	const ELECTRIC     ; $17
 	const PSYCHIC_TYPE ; $18
 	const ICE          ; $19
 	const DRAGON       ; $1A
 
 DEF NUM_TYPES EQU const_value
+
+DEF TYPE_MASK EQU %00111111 ; 6 bits for type, leaving 2 bits for categories
+DEF PHYSICAL  EQU %01000000
+DEF SPECIAL   EQU %10000000
+DEF STATUS    EQU %11000000
```

We are storing categories inside of the MoveType byte in order to avoid taking WRAM space for moves, which would otherwise require shortening other data stores or the stack itself. This allows for 3 categories in exchange for having 64 types, as `%00000000 = NORMAL`

If you desire additional categories, do the following:
```diff
+DEF TYPE_MASK EQU %00011111 ; 5 bits for type, leaving 3 bits for categories
+DEF PHYSICAL  EQU %00100000
+DEF SPECIAL   EQU %01000000
+DEF STATUS    EQU %01100000
```
This allows for 7 categories in exchange for 32 types.

## 2. Update moves with their categories
Update [data/moves/moves.asm](https://github.com/pret/pokered/blob/master/data/moves/moves.asm) to include the category field
```diff
 MACRO move
 	db \1 ; animation (interchangeable with move id)
 	db \2 ; effect
 	db \3 ; power
-	db \4 ; type
+	db \4 | \5 ; type | category
 	db \6 percent ; accuracy
 	db \7 ; pp
 	assert \7 <= 40, "PP must be 40 or less"
 ENDM
 
 Moves:
 ; Characteristics of each move.
 	table_width MOVE_LENGTH, Moves
-	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
+	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       PHYSICAL,    100, 35
```
Do that for every move.

## 3. Mask out the category in PrintMoveType
Edit [engine/battle/print_type.asm](https://github.com/pret/pokered/blob/master/engine/battle/print_type.asm):
```diff
 PrintMoveType:
 	call GetPredefRegisters
 	push hl
 	ld a, [wPlayerMoveType]
+	and TYPE_MASK
 ; fall through
```

## 4. Mask out the category or type in the battle engine
Edit [engine/battle/core.asm](https://github.com/pret/pokered/blob/master/engine/battle/core.asm):
```diff
 AdjustDamageForMoveType:
 ; values for player turn
 	ld hl, wBattleMonType
 	ld a, [hli]
 	ld b, a    ; b = type 1 of attacker
 	ld c, [hl] ; c = type 2 of attacker
 	ld hl, wEnemyMonType
 	ld a, [hli]
 	ld d, a    ; d = type 1 of defender
 	ld e, [hl] ; e = type 2 of defender
 	ld a, [wPlayerMoveType]
+	and TYPE_MASK
 	ld [wMoveType], a
 	ldh a, [hWhoseTurn]
 	and a
 	jr z, .next
 ; values for enemy turn
 	ld hl, wEnemyMonType
 	ld a, [hli]
 	ld b, a    ; b = type 1 of attacker
 	ld c, [hl] ; c = type 2 of attacker
 	ld hl, wBattleMonType
 	ld a, [hli]
 	ld d, a    ; d = type 1 of defender
 	ld e, [hl] ; e = type 2 of defender
 	ld a, [wEnemyMoveType]
+	and TYPE_MASK
 	ld [wMoveType], a
 .next
 	ld a, [wMoveType]
+	and TYPE_MASK
 	cp b ; does the move type match type 1 of the attacker?
 	jr z, .sameTypeAttackBonus
 	cp c ; does the move type match type 2 of the attacker?
 	jr z, .sameTypeAttackBonus
 	jr .skipSameTypeAttackBonus

...

 ; function to tell how effective the type of an enemy attack is on the player's current pokemon
 ; this doesn't take into account the effects that dual types can have
 ; (e.g. 4x weakness / resistance, weaknesses and resistances canceling)
 ; the result is stored in [wTypeEffectiveness]
 ; as far is can tell, this is only used once in some AI code to help decide which move to use
 AIGetTypeEffectiveness:
 	ld a, [wEnemyMoveType]
 	and TYPE_MASK
```

This allows for proper scoring for `AITypeEffectiveness`, and for types to be matched in `AdjustDamageForMoveType`. Next, we'll have to account for parts of the battle engine where the category matters for calculations

```diff
 AIGetTypeEffectiveness:
 	ld a, [wEnemyMoveType]
+	and ~TYPE_MASK
+	cp STATUS
+	jr z, .isNeutral
+	ld a, [wEnemyMoveType]
+	and TYPE_MASK
 	ld d, a                    ; d = type of enemy move
 	ld hl, wBattleMonType
 	ld b, [hl]                 ; b = type 1 of player's pokemon
 	inc hl
 	ld c, [hl]                 ; c = type 2 of player's pokemon
 	; initialize to neutral effectiveness
 	ld a, $10 ; bug: should be EFFECTIVE (10, not $10, which is 16)
 	ld [wTypeEffectiveness], a
 	ld hl, TypeEffects
 .loop
 	ld a, [hli]
 	cp $ff
 	ret z
 	cp d                      ; match the type of the move
 	jr nz, .nextTypePair1
 	ld a, [hli]
 	cp b                      ; match with type 1 of pokemon
 	jr z, .done
 	cp c                      ; or match with type 2 of pokemon
 	jr z, .done
 	jr .nextTypePair2
 .nextTypePair1
 	inc hl
 .nextTypePair2
 	inc hl
 	jr .loop
 .done
 	; 40% chance for Lorelei's Dewgong to ignore type effectiveness?
 	ld a, [wTrainerClass]
 	cp LORELEI
 	jr nz, .ok
 	ld a, [wEnemyMonSpecies]
 	cp DEWGONG
 	jr nz, .ok
 	call BattleRandom
 	cp $66 ; 40 percent
 	ret c
 .ok
 	ld a, [hl]
 	ld [wTypeEffectiveness], a ; store damage multiplier
 	ret
+.isNeutral
+	ld a, EFFECTIVE
+	ld [wTypeEffectiveness], a
+	ret
```

Finally, we have to mask out the category in [engine/battle/effects.asm](https://github.com/pret/pokered/blob/master/engine/battle/effects.asm):
```diff
 FreezeBurnParalyzeEffect:
 	xor a
 	ld [wAnimationType], a
 	call CheckTargetSubstitute ; test bit 4 of d063/d068 flags [target has substitute flag]
 	ret nz ; return if they have a substitute, can't effect them
 	ldh a, [hWhoseTurn]
 	and a
 	jp nz, .opponentAttacker
 	ld a, [wEnemyMonStatus]
 	and a
 	jp nz, CheckDefrost ; can't inflict status if opponent is already statused
 	ld a, [wPlayerMoveType]
+	and TYPE_MASK
 	ld b, a
 	ld a, [wEnemyMonType1]
 	cp b ; do target type 1 and move type match?
 	ret z  ; return if they match (an ice move can't freeze an ice-type, body slam can't paralyze a normal-type, etc.)
 ...
 	ld a, [wBattleMonStatus] ; mostly same as above with addresses swapped for opponent
 	and a
 	jp nz, CheckDefrost
 	ld a, [wEnemyMoveType]
+	and TYPE_MASK
 	ld b, a
 	ld a, [wBattleMonType1]
 	cp b
 	ret z
 ...

 
 CheckDefrost:
 ; any fire-type move that has a chance inflict burn (all but Fire Spin) will defrost a frozen target
 	and 1 << FRZ ; are they frozen?
 	ret z ; return if so
 	ldh a, [hWhoseTurn]
 	and a
 	jr nz, .opponent
 	;player [attacker]
 	ld a, [wPlayerMoveType]
+	and TYPE_MASK
 	sub FIRE
 	ret nz ; return if type of move used isn't fire
 	ld [wEnemyMonStatus], a ; set opponent status to 00 ["defrost" a frozen monster]
 	ld hl, wEnemyMon1Status
 	ld a, [wEnemyMonPartyPos]
 	ld bc, wEnemyMon2 - wEnemyMon1
 	call AddNTimes
 	xor a
 	ld [hl], a ; clear status in roster
 	ld hl, FireDefrostedText
 	jr .common
 .opponent
 	ld a, [wEnemyMoveType] ; same as above with addresses swapped
+	and TYPE_MASK
 	sub FIRE
 	ret nz
 	ld [wBattleMonStatus], a
 	ld hl, wPartyMon1Status
 	ld a, [wPlayerMonNumber]
 	ld bc, wPartyMon2 - wPartyMon1
 	call AddNTimes
 	xor a
 	ld [hl], a
 	ld hl, FireDefrostedText
 .common
 	jp PrintText
```

## 5. Update AI to understand categories
Edit [engine/battle/trainer_ai.asm], adding an `and TYPE_MASK` instruction underneath every instance of `ld a, [wEnemyMoveType]`
