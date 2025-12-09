#include <sourcemod>
#include <sdktools>

#include "player-resize/entity"
#include "player-resize/message"

#include "modules/console-command.sp"
#include "modules/console-variable.sp"
#include "modules/entity.sp"
#include "modules/math.sp"
#include "modules/message.sp"
#include "modules/native.sp"
#include "modules/use-case.sp"
#include "modules/sound-filter.sp"
#include "modules/sound.sp"

public Plugin myinfo = {
    name = "Player resize",
    author = "Dron-elektron",
    description = "Allows you to change the size of the players",
    version = "1.4.1",
    url = "https://github.com/dronelektron/sm-player-resize"
};

public APLRes AskPluginLoad2(Handle plugin, bool late, char[] error, int errorMax) {
    Native_Create();

    return APLRes_Success;
}

public void OnPluginStart() {
    Command_Create();
    Variable_Create();
    SoundFilter_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-resize.phrases");
    AutoExecConfig(_, "player-resize");
}

public void OnConfigsExecuted() {
    Sound_PitchHook_Update();
}
