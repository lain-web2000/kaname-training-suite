# SMB & SMB2J Practice ROM

A speedrun practice ROM for Super Mario Bros. and Super Mario Bros 2 - The Lost Levels.

For feature requests or bug reports, please visit the [issue tracker](https://github.com/lain-web2000/pellsson-irq/issues).

Looking to practice on PAL? [Try out threecreepio's independent PAL-conversion.](https://github.com/threecreepio/pallsson)

 **Please note this version of the Practice ROM uses the MMC5 mapper. This will not work with flashcarts such as KrzysioCart, or on cheap clone consoles.**
 
## Major Version 6 (Current 6.0)

### New Features 
- Lost Levels now uses IRQ handling rather than Sprite 0, meaning there will be less lag frames!
- Every 100th framerule is no longer broken, all framerules are now functional.
- FDS Minus World and NES Minus World added for those wanting to practice "Minus World Ending" and "Minus World NES". You can toggle between them in the settting menu.
- Input Display added.

### Bug Fixes
- 6.0 bug fixes
	- Fixed stack overflow bug in Lost Levels.
	- "100th Framerule" bug now fixed, thank you threecreepio.
   	- Alternate sound vector restored by Simplistic6502 for 8-4 and D-4 of Lost Levels, no more looping game over music.
   	- Axe metatile bug is now fixed. You will no longer fall down if you grab the axe low, thank you Simplistic6502.
- 5.6 bug fixes
	- Fixed bug where loading state would cause a subsequent save if select was still held.
	- Fixed sprite & WRAM corruption.
	- Sanity check settings.
- 5.5 bug fixes
	- Fixed bug where early input to pause menu would overflow ppubuffer.
	- Fixed bugs relating to running it on physical carts.
	- Fixed bugs relating to save states.
	- Updated faces to reflect new leader board.
- 5.4 bug fixes
	- When starting on a specific rule in Lost Levels the frame counter was set incorrectly, which could cause rule-deviations vs. vanilla.
	- Use the coin-sprite for sprite0 (no more glitchy garbage under the coin).
	- The Save-state is no longer invalidated as you power the machine on and off.
- 5.3 bug fixes
	- Disabled **B** in pause menu.
	- Fixed a million bugs related to save states
	- Fix rendering issue when showing RTA time @ 8-4s and D-4
- 5.2 bugs fixes
	- The 8-4s and D-4 records are tracked and shown @ Axe grab.
	- Slowmotion doesn't crash arbitrarily (I think)
	- Now possible to save while in slow motion mode.
- 5.1 bugs fixes
	- Support for physical hardware.
	- Save states won't break PBs
	- Slow motion in Original doesn't brick Top Loader.
- Remove artifact in the statusbar where the bottom portion of certain letters would jitter with scrolling.
- There is no longer a horribly ugly flicker when you save or load states (unless you load from a level with a different background color than the save state).
- Fix "Restart Level" that would glitch Lost Levels in some scenarios.
- Fix bug where only parts of the font-set was copied if using a custom one.
- Lots of other smaller things...

## Persistence

To keep settings, frame rules and stuff persistent; configure your game
system (emulator, PowerPAK, EverDrive etc.) to allow the SMB Practice ROM
battery-backed WRAM. Essentially, figure out how to make it so that you can
save in Zelda (without savestates), power off the system, and load (without using save states). Then do the same for the SMB Practice ROM.

## Feature list
- Practice both **SMB** and **SMB Lost Levels**
- **Start** the game from **any frame rule**
- **Start** on **any level**.
- Keeps **track of prefered start rule** for each level.
- **Battery backed WRAM** for persistent memory.
	- Level rules.
	- One save state.
	- Personal bests.
	- Settings.
- **Restart the level** from the **frame-rule** you entered.
- Monitor **two user-defined RAM addresses**.
- Built-in **save-states**.
- Customizable **hotkeys**.
- **In-game menu** with lots of stuff.
- **Pause** completely **freezes** the game (does not advance frame rules).
- **Advanced settings** menu in the loader.
- **Real-time** counter for each level, and persistent records.
- Start directly on the **Second Quest** in SMB1.
- And a lot more...

## Download & Installation

First download the desired version below:

- [Version 6.0 - BPS](https://github.com/lain-web2000/pellsson-irq/raw/master/pellsson-2000.bps)

Then simply apply that BPS (using for instance Floating Lunar IPS) to the an original, unmodified version of the Super Mario Bros. (US/World) ROM. *DO NOT* use The Lost Levels. The MD5 checksum for the ROM you should be using is `811b027eaf99c2def7b933c5208636de`.

Have fun!

## Credits
Sprites for peach shamelessly stolen from [Super Mario Bros.: Peach Edition](https://www.romhacking.net/hacks/1229)
