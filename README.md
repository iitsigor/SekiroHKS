# SekiroHKS
HKS is a script using the lua language. It is used as a means to proc havok behavior and animations for both player and npc's.
This repo adds variables to the "env(" and "act(" values in order to provide more info to the end user as to what goes on in the script.

- any form of c0000 files from this repo need to include c0000_define.hks to work, as that is where the variables are stored.
- in order to use any of the npc .hks files (e.g: c7110.hks), you need to include c9997.hks from this repo as well, as that is where the variables are stored

Unlike other fromsoft titles, Sekiro's player hks is split into 4 files.
c0000.hks - most of the code here uses env( and act(. Stores essential commands.
c0000_define.hks - stores defined values, as well as some other niche things
c0000_transition.hks - generally used for firing hks events during a set state (can be "Style", HKB (Havok Behavior), Speffect, or other)
c0000_cmsg.hks (Custom Manual Selector Generator) - used for assigning havok behavior to fired hks events
