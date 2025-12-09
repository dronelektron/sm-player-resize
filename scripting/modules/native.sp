static const int VOID = 0;

void Native_Create() {
    CreateNative("Player_Resize", OnResizePlayer);
}

static any OnResizePlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);
    float scale = GetNativeCell(2);

    scale = Math_Clamp(scale, ENTITY_SCALE_MIN, ENTITY_SCALE_MAX);

    UseCase_ResizePlayer(client, scale);

    return VOID;
}
