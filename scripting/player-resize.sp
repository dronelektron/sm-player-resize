#include <sourcemod>

#include "pr/console-command"
#include "pr/entity"
#include "pr/message"

#include "modules/console-command.sp"
#include "modules/entity.sp"
#include "modules/message.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Player resize",
    author = "Dron-elektron",
    description = "Allows you to resize players",
    version = "0.1.0",
    url = "https://github.com/dronelektron/player-resize"
};

public void OnPluginStart() {
    Command_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-resize.phrases");
}
