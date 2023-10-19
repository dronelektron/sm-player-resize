static bool g_isHookEnabled = false;

void Sound_EnablePitchHook() {
    if (g_isHookEnabled) {
        return;
    }

    AddNormalSoundHook(SoundHook_Pitch);

    g_isHookEnabled = true;
}

void Sound_DisablePitchHook() {
    if (g_isHookEnabled) {
        RemoveNormalSoundHook(SoundHook_Pitch);

        g_isHookEnabled = false;
    }
}

public Action SoundHook_Pitch(int clients[MAXPLAYERS], int& numClients, char sample[PLATFORM_MAX_PATH], int& entity, int& channel, float& volume, int& level, int& pitch, int& flags, char soundEntry[PLATFORM_MAX_PATH], int& seed) {
    if (UseCase_IsClient(entity) && SoundFilter_IsPlayerSound(sample)) {
        pitch = UseCase_ChangePitch(entity, pitch);

        return Plugin_Changed;
    }

    return Plugin_Continue;
}
