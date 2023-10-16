void UseCase_Resize(int client, int target, float scale) {
    UseCase_SetPlayerScale(target, scale);
    UseCase_SetPlayerStepSize(target, scale);
    MessageLog_PlayerResized(client, target, scale);
}

static void UseCase_SetPlayerScale(int client, float scale) {
    SetEntPropFloat(client, Prop_Send, "m_flModelScale", scale);
}

static void UseCase_SetPlayerStepSize(int client, float scale) {
    SetEntPropFloat(client, Prop_Send, "m_flStepSize", BASE_STEP_SIZE * scale);
}
