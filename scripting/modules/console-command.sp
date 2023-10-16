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

        UseCase_Resize(client, target, scale);
    }

    bool resized = playersAmount > 0;

    if (resized) {
        MessageActivity_PlayerResized(client, targetName, isMultilingual, scale);
    }

    return Plugin_Handled;
}
