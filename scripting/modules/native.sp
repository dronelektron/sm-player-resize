void Native_Create() {
    CreateNative("ResizePlayer", Native_ResizePlayer);
    RegPluginLibrary("player-resize");
}

any Native_ResizePlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);
    float scale = GetNativeCell(2);
    int resizeMode = GetNativeCell(3);

    UseCase_ResizeSilently(client, scale, resizeMode);

    return VOID;
}
