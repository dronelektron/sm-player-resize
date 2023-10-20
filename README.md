# Player resize

Allows you to resize the player

### Supported Games

* Day of Defeat: Source

### Installation

* Download latest [release](https://github.com/dronelektron/player-resize/releases) (compiled for SourceMod 1.11)
* Extract "plugins" and "translations" folders to "addons/sourcemod" folder of your server

### Console Commands

* sm_resize \<#userid|name\> \<scale\> \[mode\] - Resize the player

### Console Variables

* sm_playerresize_pitch_change - Change (off - 0, on - 1) pitch depending on model scale [default: "1"]

### Resize Mode

* Until death - 1
* Until round end - 2
* Until round start - 3
* Until disconnect - 4 (default)
