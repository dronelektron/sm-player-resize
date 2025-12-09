void UseCase_ResizePlayer(int client, float scale) {
    Entity_SetModelScale(client, scale);
    Entity_SetStepSize(client, BASE_STEP_SIZE * scale);
    Entity_SetViewOffsetZ(client, BASE_VIEW_OFFSET_Z * scale);
}

int UseCase_ChangePitch(int entity, int pitch) {
    float scale = Entity_GetModelScale(entity);
    float base = Variable_LogarithmBase();
    float factor = Variable_LogarithmFactor();
    float offset = factor * Logarithm(scale, base);

    return pitch - RoundFloat(offset);
}
