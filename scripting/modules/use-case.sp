void UseCase_ResizeToDefaultScale(int client, int eventResizeMode) {
    int clientResizeMode = Client_GetResizeMode(client);

    if (clientResizeMode <= eventResizeMode) {
        UseCase_ResizeSilently(client, BASE_SCALE, RESIZE_MODE_NONE);
    }
}

void UseCase_Resize(int client, int target, float scale, int resizeMode) {
    UseCase_ResizeSilently(target, scale, resizeMode);
    MessageLog_PlayerResized(client, target, scale, resizeMode);
}

void UseCase_ResizeSilently(int client, float scale, int resizeMode) {
    Entity_SetModelScale(client, scale);
    Entity_SetStepSize(client, BASE_STEP_SIZE * scale);
    Entity_SetViewOffsetZ(client, BASE_VIEW_OFFSET_Z * scale);

    if (UseCase_IsDefaultScale(scale)) {
        Client_SetResizeMode(client, RESIZE_MODE_NONE);
    } else {
        Client_SetResizeMode(client, resizeMode);
    }

    if (Variable_EnablePitch()) {
        UseCase_UpdatePitchHookState();
    }
}

int UseCase_ChangePitch(int entity, int pitch) {
    float scale = Entity_GetModelScale(entity);
    float base = Variable_LogarithmBase();
    float factor = Variable_LogarithmFactor();
    float offset = factor * Logarithm(scale, base);

    return pitch - RoundFloat(offset);
}

bool UseCase_IsClient(int entity) {
    return 1 <= entity && entity <= MaxClients;
}

bool UseCase_IsDefaultScale(float scale) {
    return FloatCompare(scale, BASE_SCALE) == 0;
}

void UseCase_UpdatePitchHookState() {
    int resizedPlayersAmount = Client_GetResizedPlayersAmount();

    if (resizedPlayersAmount > 0) {
        Sound_EnablePitchHook();
    } else {
        Sound_DisablePitchHook();
    }
}
