float Entity_GetModelScale(int entity) {
    return GetEntPropFloat(entity, Prop_Send, ENTITY_PROPERTY_MODEL_SCALE);
}

void Entity_SetModelScale(int entity, float scale) {
    SetEntPropFloat(entity, Prop_Send, ENTITY_PROPERTY_MODEL_SCALE, scale);
}

void Entity_SetStepSize(int entity, float stepSize) {
    SetEntPropFloat(entity, Prop_Send, ENTITY_PROPERTY_STEP_SIZE, stepSize);
}

void Entity_SetViewOffsetZ(int entity, float viewOffsetZ) {
    SetEntPropFloat(entity, Prop_Send, ENTITY_PROPERTY_VIEW_OFFSET_Z, viewOffsetZ);
}

bool Entity_IsClient(int entity) {
    return 1 <= entity && entity <= MaxClients;
}
