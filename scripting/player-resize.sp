#include <sourcemod>
#include <sdktools>

#include "pr/client"
#include "pr/console-command"
#include "pr/console-variable"
#include "pr/entity"
#include "pr/message"
#include "pr/sound-filter"

#include "modules/client.sp"
#include "modules/console-command.sp"
#include "modules/console-variable.sp"
#include "modules/entity.sp"
#include "modules/event.sp"
#include "modules/message.sp"
#include "modules/use-case.sp"
#include "modules/sound-filter.sp"
#include "modules/sound.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Player resize",
    author = "Dron-elektron",
    description = "Allows you to resize the player",
    version = "1.1.0",
    url = "https://github.com/dronelektron/player-resize"
};

public void OnPluginStart() {
    Command_Create();
    Variable_Create();
    Event_Create();
    SoundFilter_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-resize.phrases");
    AutoExecConfig(AUTO_CREATE_YES, "player-resize");
}

public void OnClientConnected(int client) {
    Client_Reset(client);
}

public void OnClientDisconnect(int client) {
    UseCase_ResizeToDefaultScale(client, RESIZE_MODE_DISCONNECT);
}
