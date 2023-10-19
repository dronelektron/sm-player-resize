void UseCase_Resize(int client, int target, float scale) {
    Entity_SetModelScale(target, scale);
    Entity_SetStepSize(target, BASE_STEP_SIZE * scale);
    Entity_SetViewOffsetZ(target, BASE_VIEW_OFFSET_Z * scale);
    MessageLog_PlayerResized(client, target, scale);
}

int UseCase_ChangePitch(int entity, int pitch) {
    float scale = Entity_GetModelScale(entity);
    float voiceFactor = Variable_VoiceFactor();
    int offset = RoundFloat(voiceFactor * Logarithm(scale, 2.0));

    return pitch - offset;
}

bool UseCase_IsNotClient(int entity) {
    return entity < 1 || entity > MaxClients
}
