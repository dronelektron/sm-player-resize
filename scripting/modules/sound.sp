static bool g_isHookEnabled = false;

void Sound_PitchHook_Update() {
    bool enabled = Variable_EnablePitch();

    if (g_isHookEnabled == enabled) {
        return;
    }

    g_isHookEnabled = enabled;

    if (enabled) {
        AddNormalSoundHook(OnPitchHook);
    } else {
        RemoveNormalSoundHook(OnPitchHook);
    }
}

static Action OnPitchHook(int clients[MAXPLAYERS], int& numClients, char sample[PLATFORM_MAX_PATH], int& entity, int& channel, float& volume, int& level, int& pitch, int& flags, char soundEntry[PLATFORM_MAX_PATH], int& seed) {
    if (Entity_IsClient(entity) && SoundFilter_IsPlayerSound(sample)) {
        pitch = UseCase_ChangePitch(entity, pitch);

        return Plugin_Changed;
    }

    return Plugin_Continue;
}
