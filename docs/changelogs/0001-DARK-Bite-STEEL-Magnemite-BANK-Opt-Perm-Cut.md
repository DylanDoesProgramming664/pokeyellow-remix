From: dylandoesprogramming664 <dylan20xx@outlook.com>
Date: Thu, 2026/01/15
Subject: [PATCH] DARK Bite, STEEL Magnemite, BANK Opt, Perm Cut

Repo Changes:
- Patched `Makefile` for modern RGBDS
- Updated `rgbdscheck.asm` for modern RGBDS

Gameplay Changes:
- Cut should be permanent thanks to a `wCutTrees` field in `ram/wram.asm`
- Added DARK and STEEL types to RBY Remix; Both are PHYSICAL types

Move Changes (Base/Legacy):
- KARATE_CHOP has 100 accuracy (+5/+5)
- Elemental punches have 75 base power (0/+5)
- FLY has 90 base power (+20/+20)
- HORN_ATTACK is BUG type
- TACKLE is now 50 base power like in Gen V (+15/+15)
- WRAP now has 90 accuracy (+5/+5)
- THRASH now has 120 base power (+30/+30) and 10 PP (-10/-10)
- BITE is now DARK type
- LOW_KICK is now 60 base power (+10/+10)
- PETAL_DANCE now has 120 base power (+30/+30)
- FIRE_SPIN has 35 base power (+20/+20)
- NIGHT_SHADE is now SHADOW_SNEAK, which is a priority move
- LICK is now 60 base power (+40/+20)
- SWIFT can no longer hit through DIG or FLY

Pokemon Changes:
- MAGNEMITE and MAGNETON are now ELECTRIC/STEEL type

Miscellaneous Changes:
- Turned `CalcStats` from `home/move_mon.asm` to
  `engine/battle/calc_stats.asm`
