static const int COMMAND_FILTER_NONE = 0;

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

    scale = Math_Clamp(scale, ENTITY_SCALE_MIN, ENTITY_SCALE_MAX);

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

        UseCase_ResizePlayer(target, scale);
        MessageLog_PlayerResized(client, target, scale);
    }

    MessageActivity_PlayerResized(client, targetName, isMultilingual, scale);

    return Plugin_Handled;
}
