void UseCase_Resize(int client, int target, float scale) {
    Entity_SetModelScale(target, scale);
    Entity_SetStepSize(target, BASE_STEP_SIZE * scale);
    Entity_SetViewOffsetZ(target, BASE_VIEW_OFFSET_Z * scale);
    MessageLog_PlayerResized(client, target, scale);
}
