void Command_Create() {
    RegAdminCmd("sm_resize", Command_Resize, ADMFLAG_GENERIC);
}

public Action Command_Resize(int client, int args) {
    if (args < 2) {
        Message_ResizeUsage(client);

        return Plugin_Handled;
    }

    char name[MAX_NAME_LENGTH];

    GetCmdArg(1, name, sizeof(name));

    float scale = GetCmdArgFloat(2);

    if (scale < MODEL_SCALE_MIN || scale > MODEL_SCALE_MAX) {
        Message_InvalidModelScale(client);

        return Plugin_Handled;
    }

    int resizeMode = RESIZE_MODE_DISCONNECT;

    if (args > 2) {
        resizeMode = GetCmdArgInt(3);

        if (resizeMode < RESIZE_MODE_DEATH || resizeMode > RESIZE_MODE_DISCONNECT) {
            Message_InvalidResizeMode(client);

            return Plugin_Handled;
        }
    }

    int[] targets = new int[MAXPLAYERS];
    char targetName[MAX_NAME_LENGTH];
    bool isMultilingual;

    int playersAmount = ProcessTargetString(
        name, client, targets, MAXPLAYERS, COMMAND_FILTER_NONE, targetName, sizeof(targetName), isMultilingual
    );

    if (playersAmount <= 0) {
        ReplyToTargetError(client, playersAmount);

        return Plugin_Handled;
    }

    for (int i = 0; i < playersAmount; i++) {
        int target = targets[i];

        UseCase_Resize(client, target, scale, resizeMode);
    }

    bool resized = playersAmount > 0;

    if (resized) {
        MessageActivity_PlayerResized(client, targetName, isMultilingual, scale, resizeMode);
    }

    return Plugin_Handled;
}
