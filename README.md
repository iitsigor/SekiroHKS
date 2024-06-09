# SekiroHKS
HKS is a script using the lua language. It is used as a means to proc havok behavior and animations for both player and npc's.
This repo adds variables to the "env(" and "act(" values in order to provide more info to the end user as to what goes on in the script.

## Information
PLAYER
Unlike other fromsoft titles, Sekiro's player hks is split into 4 files.
- `c0000.hks` - most of the code here uses env( and act(. Stores essential commands which get used across other hks files as well.
- `c0000_define.hks` - stores defined values, debug print functions, as well as a couple other things.
- `c0000_transition.hks` - generally used for firing hks events during a set state or active variable (can be "Style", HKB (Havok Behavior), Speffect, or other).
- `c0000_cmsg.hks` (Custom Manual Selector Generator) - used for assigning havok behavior to fired hks events.

NPC's
- NPC's depend on `c9997.hks`.
- Hks assigned to their entity is used for entering idle after grabs, and sometimes stores dialogue related code.

## Requirements

- any form of c0000 files from this repo need to include c0000_define.hks to work, as that is where the variables are stored.
- in order to use any of the npc .hks files (e.g: `c7110.hks`), you need to include `c9997.hks` from this repo as well, as that is where the variables are stored.

## Credits:

- Vawser - Creator of Elden Ring documentation, (hks part in particular) used as reference.
- Meowmaritus - Publisher of the Commands and Variables dump, used for cross checking Vawser's list.
- Me (Igor) - Creator of the Sekiro adaptation of the list.
- LurkyDismal - Creator of the script for assigning variables from list to hks.
