# Kaname Training Suite 

A collection of speedrun practice ROMs for Super Mario Bros. (NTSC & PAL), Super Mario Bros. 2 (FDS), and All Night Nippon Super Mario Bros.

# Features
## All Games
- Custom status bar with additional information
    - Framerule numbers.
    - Frame counter display for key actions.
    - Framerule remainder display at the end of levels.
	- Sockfolder-style position display.
	- Sockfolder-style entrance frame/room score display.
	- Two user-defined addresses in internal RAM ($0000-$07FF).

- Practice menu with options, opened by pausing during gameplay
    - Set power-up state and player size, with selections also applying to quick restart.
	- Switch between Mario and Luigi.
	- Toggle between showing the current framerule number and a Sockfolder-style position display.
    - Set current coin count, primarily useful for practicing firework avoidance in SMB2 and ANNSMB.
    - Enable or disable practice information. 
    - Enable or disable the input display.
    - Set the two user-defined addresses to desired internal RAM values.
    - Grant invincibility to practice sections without risk of contact damage.
    - Restart the level.
    - Create a savestate.
    - Load a savestate.
    - Return to the in-game title screen.
    - Return to the practice ROM title screen.
	
- Advanced features for those who want to experiment.
    - This is accessed by holding the A button while pressing start on the practice ROM title screen.
    - Ability to select one of the 32,767 possible RNG states during normal gameplay. This is useful for messing around with frame offsets and can be calculated at this page: https://web-2000.neocities.org/practicerom/rng
    - Select where in the 21-frame cycle you would like to enter the level at, useful for practicing judges in 8-1 of SMB1 for example.

- Toggle pre-set frame offsets for specific categories by pressing the A button on the in-game title screen.
    - SMB1: Both Quests
    - SMB2: Both Endings and All Stages
    - ANNSMB: All Stages
- Infinite lives, so you never have to worry about getting a game over.
- 5 selectable save slots for framerules.
- Integrated [Inputlog by Threecreepio](https://github.com/threecreepio/nes-inputlog). This can be accessed by holding the A and B buttons while resetting. 

## Super Mario Bros.:
- Integrated Game Genie code support for select Category Extensions, which can be selected in the settings menu.
    - AISSON
    - STAGEO
    - PIGOAP

- Minus World (Disk) and Minus World (Cart) support integrated, which can also be toggled in settings.
- Toggle between first and second quest by pressing the B button on the in-game title screen.

## Super Mario Bros. 2 (FDS):
- Toggle for Warpless game-states by pressing the B button on the in-game title screen. 
 
This sets up wrong-warps for Worlds 8-1 and C-1, and allows you to enter 9-1 from 8-4. Dying in 9-1 will return you to the title screen, similarly to the original game.

## All Night Nippon Super Mario Bros.:
- Toggle between first and second quest by pressing the B button on the in-game title screen.

# Improvements over Pellsson's practice ROM (v6.0 Prototype)
- Every 100th framerule is no longer broken thanks to threecreepio's quick resume code.
- Dying in the cartridge version of World -1 will not take you to the disk version.
- User-defined addresses are hidden when "INFO" is set to "OFF".
- Completely rebuilt SMB2 FDS to NES conversion by Simplistic6502 using doppelganger's disassembly, fixing issues such as the broken ending in 8-4 and D-4.
- Added extra frame counter updates for specific instances, such as when Bowser starts moving.
- Disabled frame numbers when collecting a coin or shattering a brick.
- Remainders now display on the intermediate screen when starting from the title screen or exiting a warp zone.
- Each game has its own ROM now, and each ROM uses the MMC3 mapper to maximize compatibility.

# Required checksums for BPS patches.

- Super Mario Bros.: `EA343F4E445A9050D4B4FBAC2C77D0693B1D0922`
- Super Mario Bros. 2: `20E50128742162EE47561DB9E82B2836399C880C`
- All Night Nippon Super Mario Bros.: `F30BDD3C556604D7EAA6D0F4864D5566E519B5D4`

# Credits
- Developers: web2000, Simplistic6502
- Original Developers: Threecreepio, pellsson
- Sprites for Peach shamelessly stolen from [Super Mario Bros.: Peach Edition](https://www.romhacking.net/hacks/1229)

# Repositories Forked From
- https://github.com/pellsson/smb
- https://github.com/threecreepio/smb1-practiserom
- https://github.com/threecreepio/nes-inputlog
- https://github.com/MrWint/smb-dis
