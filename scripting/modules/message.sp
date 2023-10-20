static const char g_resizeModePhrase[][] = {
    "",
    "until death",
    "until round end",
    "until round start",
    "until disconnect"
};

void Message_InvalidModelScale(int client) {
    ReplyToCommand(client, "%s%t", PREFIX, "Invalid model scale", MODEL_SCALE_MIN, MODEL_SCALE_MAX);
}

void Message_InvalidResizeMode(int client) {
    ReplyToCommand(client, "%s%t", PREFIX, "Invalid resize mode", RESIZE_MODE_DEATH, RESIZE_MODE_DISCONNECT);
}

void Message_ResizeUsage(int client) {
    ReplyToCommand(client, "%s%s", PREFIX, "Usage: sm_resize <#userid|name> <scale> [mode]");
}

void MessageActivity_PlayerResized(int client, const char[] targetName, bool isMultilingual, float scale, int resizeMode) {
    if (isMultilingual) {
        if (UseCase_IsDefaultScale(scale)) {
            ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, targetName, DEFAULT_SCALE);
        } else {
            ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, targetName, CUSTOM_SCALE, scale, g_resizeModePhrase[resizeMode]);
        }
    } else {
        if (UseCase_IsDefaultScale(scale)) {
            ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, "_s", targetName, DEFAULT_SCALE);
        } else {
            ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, "_s", targetName, CUSTOM_SCALE, scale, g_resizeModePhrase[resizeMode]);
        }
    }
}

void MessageLog_PlayerResized(int client, int target, float scale, int resizeMode) {
    if (UseCase_IsDefaultScale(scale)) {
        LogMessage("\"%L\" resized \"%L\" to %s", client, target, DEFAULT_SCALE);
    } else {
        LogMessage("\"%L\" resized \"%L\" to %.2f (%s)", client, target, scale, g_resizeModePhrase[resizeMode]);
    }
}
