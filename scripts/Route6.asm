Route6_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route6TrainerHeaders
	ld de, Route6_ScriptPointers
	ld a, [wRoute6CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute6CurScript], a
	ret

Route6_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE6_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE6_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE6_END_BATTLE

Route6_TextPointers:
	def_text_pointers
	dw_const Route6CooltrainerM1Text,       TEXT_ROUTE6_COOLTRAINER_M1
	dw_const Route6CooltrainerF1Text,       TEXT_ROUTE6_COOLTRAINER_F1
	dw_const Route6Youngster1Text,          TEXT_ROUTE6_YOUNGSTER1
	dw_const Route6CooltrainerM2Text,       TEXT_ROUTE6_COOLTRAINER_M2
	dw_const Route6CooltrainerF2Text,       TEXT_ROUTE6_COOLTRAINER_F2
	dw_const Route6Youngster2Text,          TEXT_ROUTE6_YOUNGSTER2
	dw_const Route6Youngster3Text,          TEXT_ROUTE6_YOUNGSTER3
	dw_const Route6CooltrainerM3Text,       TEXT_ROUTE6_COOLTRAINER_M3
	dw_const Route6CooltrainerM4Text,       TEXT_ROUTE6_COOLTRAINER_M4
	dw_const Route6CooltrainerF3Text,       TEXT_ROUTE6_COOLTRAINER_F3
	dw_const Route6UndergroundPathSignText, TEXT_ROUTE6_UNDERGROUND_PATH_SIGN

Route6TrainerHeaders:
	def_trainers ROUTE_6_TRAINER_EVENT_OFFSET ; replaced by def_trainers_sub.py
Route6TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_0, 0, Route6CooltrainerM1BattleText, Route6CooltrainerM1EndBattleText, Route6CooltrainerM1AfterBattleText
Route6TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_1, 0, Route6CooltrainerF1BattleText, Route6CooltrainerF1EndBattleText, Route6CooltrainerF1AfterBattleText
Route6TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_2, 4, Route6Youngster1BattleText, Route6Youngster1EndBattleText, Route6Youngster1AfterBattleText
Route6TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_3, 3, Route6CooltrainerM2BattleText, Route6CooltrainerM2EndBattleText, Route6CooltrainerM2AfterBattleText
Route6TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_4, 3, Route6CooltrainerF2BattleText, Route6CooltrainerF2EndBattleText, Route6CooltrainerF2AfterBattleText
Route6TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_5, 3, Route6Youngster2BattleText, Route6Youngster2EndBattleText, Route6Youngster2AfterBattleText
Route6TrainerHeader6:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_6, 3, Route6Youngster3BattleText, Route6Youngster3EndBattleText, Route6Youngster3AfterBattleText
Route6TrainerHeader7:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_7, 4, Route6CooltrainerM3BattleText, Route6CooltrainerM3EndBattleText, Route6CooltrainerM3AfterBattleText
Route6TrainerHeader8:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_8, 0, Route6CooltrainerM4BattleText, Route6CooltrainerM4EndBattleText, Route6CooltrainerM4AfterBattleText
Route6TrainerHeader9:
	trainer EVENT_BEAT_ROUTE_6_TRAINER_9, 0, Route6CooltrainerF3BattleText, Route6CooltrainerF3EndBattleText, Route6CooltrainerF3AfterBattleText
	db -1 ; end

Route6CooltrainerM1Text:
	text_asm
	ld hl, Route6TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerM1BattleText:
	text_far _Route6CooltrainerM1BattleText
	text_end

Route6CooltrainerM1EndBattleText:
	text_far _Route6CooltrainerM1EndBattleText
	text_end

Route6CooltrainerM1AfterBattleText:
	text_far _Route6CooltrainerM1AfterBattleText
	text_end

Route6CooltrainerF1Text:
	text_asm
	ld hl, Route6TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerF1BattleText:
	text_far _Route6CooltrainerF1BattleText
	text_end

Route6CooltrainerF1EndBattleText:
	text_far _Route6CooltrainerF1EndBattleText
	text_end

Route6CooltrainerF1AfterBattleText:
	text_far _Route6CooltrainerF1AfterBattleText
	text_end

Route6Youngster1Text:
	text_asm
	ld hl, Route6TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route6Youngster1BattleText:
	text_far _Route6Youngster1BattleText
	text_end

Route6Youngster1EndBattleText:
	text_far _Route6Youngster1EndBattleText
	text_end

Route6Youngster1AfterBattleText:
	text_far _Route6Youngster1AfterBattleText
	text_end

Route6CooltrainerM2Text:
	text_asm
	ld hl, Route6TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerM2BattleText:
	text_far _Route6CooltrainerM2BattleText
	text_end

Route6CooltrainerM2EndBattleText:
	text_far _Route6CooltrainerM2EndBattleText
	text_end

Route6CooltrainerM2AfterBattleText:
	text_far _Route6CooltrainerM2AfterBattleText
	text_end

Route6CooltrainerF2Text:
	text_asm
	ld hl, Route6TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerF2BattleText:
	text_far _Route6CooltrainerF2BattleText
	text_end

Route6CooltrainerF2EndBattleText:
	text_far _Route6CooltrainerF2EndBattleText
	text_end

Route6CooltrainerF2AfterBattleText:
	text_far _Route6CooltrainerF2AfterBattleText
	text_end

Route6Youngster2Text:
	text_asm
	ld hl, Route6TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route6Youngster2BattleText:
	text_far _Route6Youngster2BattleText
	text_end

Route6Youngster2EndBattleText:
	text_far _Route6Youngster2EndBattleText
	text_end

Route6Youngster2AfterBattleText:
	text_far _Route6Youngster2AfterBattleText
	text_end

Route6Youngster3Text:
	text_asm
	ld hl, Route6TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route6Youngster3BattleText:
	text_far _Route6Youngster3BattleText
	text_end

Route6Youngster3EndBattleText:
	text_far _Route6Youngster3EndBattleText
	text_end

Route6Youngster3AfterBattleText:
	text_far _Route6Youngster3AfterBattleText
	text_end

Route6CooltrainerM3Text:
	text_asm
	ld hl, Route6TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerM3BattleText:
	text_far _Route6CooltrainerM3BattleText
	text_end

Route6CooltrainerM3EndBattleText:
	text_far _Route6CooltrainerM3EndBattleText
	text_end

Route6CooltrainerM3AfterBattleText:
	text_far _Route6CooltrainerM3AfterBattleText
	text_end

Route6CooltrainerM4Text:
	text_asm
	ld hl, Route6TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerM4BattleText:
	text_far _Route6CooltrainerM4BattleText
	text_end

Route6CooltrainerM4EndBattleText:
	text_far _Route6CooltrainerM4EndBattleText
	text_end

Route6CooltrainerM4AfterBattleText:
	text_far _Route6CooltrainerM4AfterBattleText
	text_end

Route6CooltrainerF3Text:
	text_asm
	ld hl, Route6TrainerHeader9
	call TalkToTrainer
	jp TextScriptEnd

Route6CooltrainerF3BattleText:
	text_far _Route6CooltrainerF3BattleText
	text_end

Route6CooltrainerF3EndBattleText:
	text_far _Route6CooltrainerF3EndBattleText
	text_end

Route6CooltrainerF3AfterBattleText:
	text_far _Route6CooltrainerF3AfterBattleText
	text_end

Route6UndergroundPathSignText:
	text_far _Route6UndergroundPathSignText
	text_end
