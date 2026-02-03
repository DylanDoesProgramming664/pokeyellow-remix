From: dylandoesprogramming664 <dylan20xx@outlook.com>
Date: Sat, 2026/01/17
Subject: [PATCH] Changed Gym Leaders and Level Caps

Gameplay Changes:
- Brock's LVL cap is now LVL 15
- Misty's LVL cap is now LVL 22
- Lt. Surge's LVL cap is now LVL 26
- Gym 4's LVL cap is now LVL 37 by accident, and will be reverted in a
  future commit
- Aside from the Gym 4 cap error, the above LVL caps apply to
  `scripts/Daycare.asm` and `engine/items/item_effects.asm`

Overworld Changes:
- Added stairs to Route 4 to go back to Mt. Moon and earlier locations
  freely
- Moved a cut tree tile to prevent visual glitches in a future commit
  regarding permanent cut tree removal

Trainer Changes:
- Brock's ONIX is now LVL 15
- Misty's STARMIE is now LVL 22
- Lt. Surge's RAICHU is now LVL 31

Miscellaneous Changes:
- Reordered the TypeEffects table
