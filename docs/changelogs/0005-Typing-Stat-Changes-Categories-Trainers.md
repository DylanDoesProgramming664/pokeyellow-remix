From: dylandoesprogramming664 <dylan20xx@outlook.com>
Date: Fri, 2026/01/30
Subject: [PATCH] +Typing, +Stat Changes, +Categories, +Trainers

Repo Changes:
- Added some debugging, diff and dev artifacts to ignore in `.gitignore`

Gameplay Changes:
- Added Move categories, that being PHYSICAL, SPECIAL, MIXED and STATUS
- MIXED moves are moves that may either use the Pokemon's ATK or SPC
  stat, depending on which is higher
- Most moves will still stay to their type's original category

Overworld Changes:
- New Rocket Grunt in Mt. Moon; He will be a recurring character
  throughout the region in future commits

Trainer Changes:
- Added new trainers, and repurposed some unused trainers for use in
  various dungeons and routes in future commits
- Janine now has a stronger team if the player has 6 badges

Move Changes (Base/Legacy):
- STRUGGLE does neutral damage as a MIXED move
- SHADOW_SNEAK is now SHADOW_CLAW, which is a critical hit move
- LICK is now 40 base power (+20/0)
- FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, HYPER_BEAM, RAGE, SHADOW_CLAW,
  LICK, and SWIFT are all MIXED moves
- CUT is now 65 base power (+15/+10)

Pokemon Changes:
- Way too many changes to list; There will be a google sheet documenting
  all of it in the future

Miscellaneous Changes:
- Complete overhaul of the Pokedex order to match earliest availability,
  leaving uncatchable pokemon, SNORLAX, the DRAGONITE line and
  Legendaries at the end
- Added useless `engine/battle/level_cap.asm`; This will be removed in the
  next commit
- New STRUGGLE_EFFECT and KINESIS_EFFECT to replace EFFECT_01 and
  EFFECT_1E respectively
- BIRD type no longer exists
- All HM moves have 100 accuracy
