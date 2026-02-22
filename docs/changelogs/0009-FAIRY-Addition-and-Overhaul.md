From: dylandoesprogramming664 <dylan20xx@outlook.com>
Date: Wed, 2026/02/04
Subject: [PATCH] FAIRY Addition and Overhaul
---

Repo Changes:
- Fixed up some errors on [the last changelog](docs/changelogs/0008-PokeStats-Rod-Mods-Encounter-Mods-New-Dex-Order.md)
- Fixed up [README.md](README.md)

Gameplay Changes:
- The FAIRY type has been added to the game, but with some changes to the type matchups compared to Gen 6+:
  - FAIRY is super effective against DRAGON and DARK
  - FAIRY is not very effective against POISON and STEEL
  - DRAGON and DARK are not very effective against FAIRY
  - POISON and STEEL are super effective against FAIRY
  - All other types have neutral interactions with FAIRY
- FAIRY will be predominately SPECIAL in Gens 2 and 3
- ROCK is not very effective against ROCK
- TEAM ROCKET JERRY's Mt. Moon event is now a one-time scripted event
- Fossil Pokemon revive at LVL 35

Overworld Changes:
- The hidden potion in Viridian City is now visible behind the cut tree
- There is a new sketchy salesman in the Pewter City Pokemon Center. What is he selling? Is it worth it?
- New trainers all over the place. Using placeholder text for now.

Trainer Changes:
- Rival teams have been updated for the Silph Co. fight
- Smith, Craig and Weebra from `Pokemon Yellow Legacy` are absent from `Pokemon Yellow Remix`

Shop Changes:
- Swapped the Prize Corner TMs with FLAMETHROWER, ICE_BEAM and THUNDERBOLT
- Prize Corner TMs cost 1000 coins each

Move Changes:
- DOUBLESLAP is MIXED FAIRY
- COMET_PUNCH is FIGHTING
- LEACH_SEED's accuracy is at 95%
- DIZZY_PUNCH is FIGHTING
- KINESIS is a never-miss move that brings down the SPECIAL stat by 1 stage
- FLASH's effect is ACCURACY_DOWN2_EFFECT
- RAGE is back to being PHYSICAL
- STRUGGLE always does neutral damage, and has no STAB
- plenty more

Pokemon Changes:
- CHARIZARD is FIRE/DRAGON
- BLASTOISE is WATER/STEEL
- PINSIR is BUG/NORMAL
- JIGGLYPUFF and WIGGLYTUFF are NORMAL/FAIRY
- CLEFAIRY and CLEFFABLE are FAIRY
- CHANSEY is NORMAL/FAIRY
- KRABBY and KINGLER are WATER/NORMAL
- MR_MIME is PSYCHIC/FAIRY
- Moveset changes
- Stat buffs for various pokemon

Miscellaneous Changes:
- Removed the `wLevelCap` variable added in the previous release
- Added new `TRAINER_EVENT_OFFSET` constants to [constants/event_constants.asm](constants/event_constants.asm) for use in `def_trainers` in `scripts/`
- Added new credits for the `Pokemon Yellow Remix` project, which comes before the `Pokemon Yellow Legacy` credits
- Fixed some mart bugs
- Fixed some bugs with Prize Corner prizes

