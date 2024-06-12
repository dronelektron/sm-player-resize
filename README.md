# Player resize

Allows you to resize the player

### Supported Games

* Day of Defeat: Source

### Requirements

* [SourceMod](https://www.sourcemod.net) 1.11 or later

### Installation

* Download latest [release](https://github.com/dronelektron/player-resize/releases)
* Extract `plugins` and `translations` folders to `addons/sourcemod` folder of your server

### Console Commands

* sm_resize &lt;#userid|name&gt; &lt;scale&gt; \[mode\] - Resize the player

### Console Variables

* sm_playerresize_pitch_enable - Change (off - 0, on - 1) pitch depending on model scale [default: "1"]
* sm_playerresize_pitch_log_base - Logarithm base for pitch [default: "2.0"]
* sm_playerresize_pitch_log_factor - Logarithm factor for pitch [default: "20.0"]

### Resize Mode

* Until death (during the round) - 1
* Until round end - 2
* Until round start - 3
* Until disconnect - 4 (default)

### API

Resize the `client` to `scale` using `resizeMode`

```sourcepawn
native void ResizePlayer(int client, float scale, int resizeMode);
```
