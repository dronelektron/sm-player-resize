void UseCase_Resize(int client, int target, float scale) {
    Entity_SetModelScale(target, scale);
    Entity_SetStepSize(target, BASE_STEP_SIZE * scale);
    Entity_SetViewOffsetZ(target, BASE_VIEW_OFFSET_Z * scale);
    MessageLog_PlayerResized(client, target, scale);
}

int UseCase_ChangePitch(int entity, int pitch) {
    if (Variable_ChangePitch()) {
        float scale = Entity_GetModelScale(entity);
        int offset = RoundFloat(10.0 * Logarithm(scale, 2.0));

        return pitch - offset;
    }

    return pitch;
}

bool UseCase_IsClient(int entity) {
    return 1 <= entity && entity <= MaxClients;
}

void UseCase_UpdatePitchHookState(int ignoredClient = NO_CLIENT) {
    bool noResizedPlayers = true;

    for (int client = 1; client <= MaxClients; client++) {
        if (!IsClientInGame(client) || client == ignoredClient) {
            continue;
        }

        float scale = Entity_GetModelScale(client);
        bool isDefaultScale = FloatCompare(scale, BASE_SCALE) == 0;

        noResizedPlayers &= isDefaultScale;
    }

    if (noResizedPlayers) {
        Sound_DisablePitchHook();
    } else {
        Sound_EnablePitchHook();
    }
}
