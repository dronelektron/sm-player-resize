static const int VOID = 0;

void Native_Create() {
    CreateNative("ResizePlayer", Native_ResizePlayer);
}

any Native_ResizePlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);
    float scale = GetNativeCell(2);
    int resizeMode = GetNativeCell(3);

    UseCase_ResizeSilently(client, scale, resizeMode);

    return VOID;
}
