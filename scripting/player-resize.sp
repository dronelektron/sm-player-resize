#include <sourcemod>
#include <sdktools>

#include "pr/console-command"
#include "pr/entity"
#include "pr/message"
#include "pr/sound"

#include "modules/console-command.sp"
#include "modules/console-variable.sp"
#include "modules/entity.sp"
#include "modules/message.sp"
#include "modules/use-case.sp"
#include "modules/sound.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Player resize",
    author = "Dron-elektron",
    description = "Allows you to resize the player",
    version = "1.0.0",
    url = "https://github.com/dronelektron/player-resize"
};

public void OnPluginStart() {
    Command_Create();
    Variable_Create();
    Sound_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-resize.phrases");
    AutoExecConfig(AUTO_CREATE_YES, "player-resize");
}
