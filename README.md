# SMB, SMB2J & ANN Practice ROM

A speedrun practice ROM for Super Mario Bros., Super Mario Bros 2 - The Lost Levels. and All Night Nippon Super Mario Bros.

For feature requests or bug reports, please visit the [issue tracker](https://github.com/lain-web2000/pellsson-rev2/issues).

Looking to practice on PAL? [Try out threecreepio's independent PAL-conversion.](https://github.com/threecreepio/pallsson)

**Please note this version of the Practice ROM uses the MMC5 mapper, look at the table below to see if your flash cart is supported**


| Flash Cart  | Supported? |
| ------------- | ------------- |
| EverDrive N8  | Yes *  |
| EverDrive N8 Pro  | Yes.  |
| PowerPak  | Untested, likely to work.  |
| KrzysioCart | No.  |

***Original Everdrive N8 has graphical glitches on the status bar, this can be mitigated by enabling the input display.**
## Major Version 6 (Current 6.0 Rev 2)

### New Features 
All Night Nippon Super Mario Bros added!

Following RNG offsets are available by pressing A during the game's title screen:

	- Both Quests (Warpless) for SMB1
	- Both Endings & All Stages for SMB:TLL
	- All Stages for ANN

Disabled frame numbers when collecting a coin or shattering a brick.

Pressing B on the Lost Levels title screen sets 8-1/C-1 wrong-warp and allows World 9 access from 8-4. (Any death during World 9 will take you to the game over screen.)

Separate framerule numbers are saved for Mario and Luigi in Lost Levels and Nippon.

Changed user variable names from **X** and **Y** to **A** and **B** to mitigate any confusion.

Coinflash has been re-enabled on the SMB1 title screen to simulate start press for runs.

Frame number is updated when Bowser starts moving.

Timer and Records have been removed.
### Bug Fixes
- 6.0 bug fixes
	- Fixed stack overflow bug in Lost Levels.
	- "100th Framerule" bug now fixed, thank you threecreepio.
   	- Alternate sound vector restored for 8-4 and D-4 of Lost Levels, no more looping game over music.
   	- Axe metatile bug is now fixed. You will no longer fall down if you grab the axe low.
   	- Lost Levels codebase overhauled using Simplistic6502's MMC1 codebase, thank you Simplistic.
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
- Practice **SMB**, **SMB Lost Levels** and **All Night Nippon SMB**
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
- Start directly on the **Second Quest** in SMB1 and ANN by pressing **B**.
- Set up for Warpless wrong-warps and World 9 access from 8-4 in SMB:TLL by pressing **B**.
- Adjust RNG offsets appropiate for specific categories by pressing **A**.
- And a lot more...

## Download & Installation

First download the desired version below:

- [Version 6.0 (Rev 2) - BPS](https://github.com/lain-web2000/pellsson-rev2/raw/master/Pellsson%206.0%20(Rev%202.0).bps)

Then simply apply that BPS (using for instance Floating Lunar IPS) to the an original, unmodified version of the Super Mario Bros. (US/World) ROM. *DO NOT* use The Lost Levels. The MD5 checksum for the ROM you should be using is `811b027eaf99c2def7b933c5208636de`.

Have fun!

## Credits
Sprites for peach shamelessly stolen from [Super Mario Bros.: Peach Edition](https://www.romhacking.net/hacks/1229)
