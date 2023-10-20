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

* sm_playerresize_pitch_enable - Change (off - 0, on - 1) pitch depending on model scale [default: "1"]
* sm_playerresize_pitch_log_base - Logarithm base for pitch [default: "2.0"]
* sm_playerresize_pitch_log_factor - Logarithm factor for pitch [default: "20.0"]

### Resize Mode

* Until death (during the round) - 1
* Until round end - 2
* Until round start - 3
* Until disconnect - 4 (default)
