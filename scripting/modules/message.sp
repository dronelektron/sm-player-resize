void Message_ResizeUsage(int client) {
    ReplyToCommand(client, "%s%s", PREFIX, "Usage: sm_resize <#userid|name> <scale>");
}

void MessageActivity_PlayerResized(int client, const char[] targetName, bool isMultilingual, float scale) {
    if (isMultilingual) {
        ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, targetName, scale);
    } else {
        ShowActivity2(client, PREFIX, "%t", PLAYER_RESIZED, "_s", targetName, scale);
    }
}

void MessageLog_PlayerResized(int client, int target, float scale) {
    LogMessage("\"%L\" resized \"%L\" to %.2f", client, target, scale);
}
