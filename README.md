# Player resize

Allows you to change the size of the players

### Supported Games

* Day of Defeat: Source

### Requirements

* [SourceMod](https://www.sourcemod.net) 1.11 or later

### Installation

* Download latest [release](https://github.com/dronelektron/sm-player-resize/releases)
* Extract `plugins` and `translations` folders to `addons/sourcemod` folder of your server

### Console Commands

* sm_resize &lt;#userid|name&gt; &lt;scale&gt; - Resize the player

### Console Variables

* sm_playerresize_pitch_enable - Change (off - 0, on - 1) pitch depending on model scale [default: "1"]
* sm_playerresize_pitch_log_base - Logarithm base for pitch [default: "2.0"]
* sm_playerresize_pitch_log_factor - Logarithm factor for pitch [default: "20.0"]

### API

Resize the `client` to `scale`

```sourcepawn
native void Player_Resize(int client, float scale);
```
