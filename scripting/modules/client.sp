static int g_resizeMode[MAXPLAYERS + 1];
static int g_resizedPlayersAmount = 0;

void Client_Reset(int client) {
    g_resizeMode[client] = RESIZE_MODE_NONE;
}

int Client_GetResizeMode(int client) {
    return g_resizeMode[client];
}

void Client_SetResizeMode(int client, int resizeMode) {
    bool fromDefaultToCustomScale = g_resizeMode[client] == RESIZE_MODE_NONE && resizeMode != RESIZE_MODE_NONE;
    bool fromCustomToDefaultScale = g_resizeMode[client] != RESIZE_MODE_NONE && resizeMode == RESIZE_MODE_NONE;

    if (fromDefaultToCustomScale) {
        g_resizedPlayersAmount++;
    } else if (fromCustomToDefaultScale) {
        g_resizedPlayersAmount--;
    }

    g_resizeMode[client] = resizeMode;
}

int Client_GetResizedPlayersAmount() {
    return g_resizedPlayersAmount;
}
