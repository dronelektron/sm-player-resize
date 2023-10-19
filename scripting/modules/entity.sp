float Entity_GetModelScale(int entity) {
    return GetEntPropFloat(entity, Prop_Send, "m_flModelScale");
}

void Entity_SetModelScale(int entity, float scale) {
    SetEntPropFloat(entity, Prop_Send, "m_flModelScale", scale);
}

void Entity_SetStepSize(int entity, float stepSize) {
    SetEntPropFloat(entity, Prop_Send, "m_flStepSize", stepSize);
}

void Entity_SetViewOffsetZ(int entity, float viewOffsetZ) {
    SetEntPropFloat(entity, Prop_Send, "m_vecViewOffset[2]", viewOffsetZ);
}
