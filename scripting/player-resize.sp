#include <sourcemod>
#include <sdktools>

#include "player-resize/client"
#include "player-resize/console-command"
#include "player-resize/console-variable"
#include "player-resize/entity"
#include "player-resize/message"
#include "player-resize/native"
#include "player-resize/sound-filter"

#include "modules/client.sp"
#include "modules/console-command.sp"
#include "modules/console-variable.sp"
#include "modules/entity.sp"
#include "modules/event.sp"
#include "modules/message.sp"
#include "modules/native.sp"
#include "modules/use-case.sp"
#include "modules/sound-filter.sp"
#include "modules/sound.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Player resize",
    author = "Dron-elektron",
    description = "Allows you to resize the player",
    version = "1.4.0",
    url = "https://github.com/dronelektron/player-resize"
};

public APLRes AskPluginLoad2(Handle plugin, bool late, char[] error, int errorMax) {
    Native_Create();

    return APLRes_Success;
}

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
    Client_SetResizeMode(client, RESIZE_MODE_NONE);
    UseCase_UpdatePitchHookState();
}
