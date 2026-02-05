From: dylandoesprogramming664 <dylan20xx@outlook.com>
Date: Wed, 2026/02/04
Subject: [PATCH] FAIRY Addition and Overhaul

Repo Changes:
- Fixed up some errors on [last changelog](docs/changelogs/0008-PokeStats-Rod-Mods-Encounter-Mods-New-Dex-Order.md)

GFX Changes:

SFX/Audio Changes:

Gameplay Changes:
- The FAIRY type has been added to the game, but with some changes to the type matchups compared to Gen 6+:
  - FAIRY is super effective against DRAGON and DARK
  - FAIRY is not very effective against POISON and STEEL
  - DRAGON and DARK are not very effective against FAIRY
  - POISON and STEEL are super effective against FAIRY
  - All other types have neutral interactions with FAIRY
- FAIRY will be predominately SPECIAL in Gens 2 and 3
- ROCK is not very effective against ROCK

Trainer Changes:
- Rival teams have been updated for the Silph Co. fight

Shop Changes:

Move Changes:
- DOUBLESLAP is MIXED FAIRY
- COMET_PUNCH is FIGHTING
- DIZZY_PUNCH is FIGHTING

Pokemon Changes:
- CHARIZARD is FIRE/DRAGON
- BLASTOISE is WATER/STEEL
- JIGGLYPUFF and WIGGLYTUFF are NORMAL/FAIRY
- CLEFAIRY and CLEFFABLE are NORMAL/FAIRY
- CHANSEY is NORMAL/FAIRY
- KRABBY and KINGLER are WATER/NORMAL
- MR_MIME is PSYCHIC/FAIRY
- MAGIKARP has all non-attacking TMs and HMs, along with SURF because funny

Miscellaneous Changes:
- Removed the `wLevelCap` variable added in the previous release

