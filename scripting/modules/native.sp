static const int VOID = 0;

void Native_Create() {
    CreateNative("Player_Resize", OnResizePlayer);
}

static any OnResizePlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);
    float scale = GetNativeCell(2);
    int resizeMode = GetNativeCell(3);

    UseCase_ResizeSilently(client, scale, resizeMode);

    return VOID;
}
