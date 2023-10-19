static StringMap g_voiceSounds;

void Sound_Create() {
    g_voiceSounds = new StringMap();

    Sound_Add("american", "us", "gogogo");
    Sound_Add("american", "us", "gogogo2");
    Sound_Add("american", "us", "holdposition");
    Sound_Add("american", "us", "flankleft");
    Sound_Add("american", "us", "flankright");
    Sound_Add("american", "us", "sticktogether");
    Sound_Add("american", "us", "sticktogether2");
    Sound_Add("american", "us", "coveringfire");
    Sound_Add("american", "us", "smoke");
    Sound_Add("american", "us", "smoke3");
    Sound_Add("american", "us", "usegrenades");
    Sound_Add("american", "us", "usegrenades2");
    Sound_Add("american", "us", "usegrenades3");
    Sound_Add("american", "us", "ceasefire");
    Sound_Add("american", "us", "ceasefire2");

    Sound_Add("american", "us", "yessir");
    Sound_Add("american", "us", "negative");
    Sound_Add("american", "us", "backup");
    Sound_Add("american", "us", "backup2");
    Sound_Add("american", "us", "backup3");
    Sound_Add("american", "us", "grenadeout");
    Sound_Add("american", "us", "grenadein");
    Sound_Add("american", "us", "grenadein2");
    Sound_Add("american", "us", "grenadein3");
    Sound_Add("american", "us", "grenadein4");
    Sound_Add("american", "us", "grenadein5");
    Sound_Add("american", "us", "sniper");
    Sound_Add("american", "us", "sniper2");
    Sound_Add("american", "us", "sniper3");
    Sound_Add("american", "us", "niceshot");
    Sound_Add("american", "us", "niceshot2");
    Sound_Add("american", "us", "thanks");
    Sound_Add("american", "us", "areaclear");

    Sound_Add("american", "us", "dropweapons");
    Sound_Add("american", "us", "dropweapons2");
    Sound_Add("american", "us", "changeposition");
    Sound_Add("american", "us", "mgahead");
    Sound_Add("american", "us", "enemybehind");
    Sound_Add("american", "us", "wegothim");
    Sound_Add("american", "us", "wegothim2");
    Sound_Add("american", "us", "moveupmg2");
    Sound_Add("american", "us", "moveupmg3");
    Sound_Add("american", "us", "moveupmg4");
    Sound_Add("american", "us", "needammo");
    Sound_Add("american", "us", "needammo2");
    Sound_Add("american", "us", "needammo3");
    Sound_Add("american", "us", "usebazooka");
    Sound_Add("american", "us", "usebazooka2");
    Sound_Add("american", "us", "usebazooka3");
    Sound_Add("american", "us", "panzerschreck");

    Sound_Add("american", "us", "tankahead");
    Sound_Add("american", "us", "movewithtank");
    Sound_Add("american", "us", "movewithtank2");
    Sound_Add("american", "us", "movewithtank3");
    Sound_Add("american", "us", "medic");
    Sound_Add("american", "us", "medic2");
    Sound_Add("american", "us", "fallback");
    Sound_Add("american", "us", "enemyahead");
    Sound_Add("american", "us", "coverflanks");

    Sound_Add("german", "ger", "gogogo");
    Sound_Add("german", "ger", "gogogo2");
    Sound_Add("german", "ger", "gogogo3");
    Sound_Add("german", "ger", "gogogo4");
    Sound_Add("german", "ger", "gogogo7");
    Sound_Add("german", "ger", "moveout");
    Sound_Add("german", "ger", "holdposition");
    Sound_Add("german", "ger", "holdposition2");
    Sound_Add("german", "ger", "flankleft");
    Sound_Add("german", "ger", "flankright");
    Sound_Add("german", "ger", "sticktogether");
    Sound_Add("german", "ger", "coveringfire");
    Sound_Add("german", "ger", "coveringfire2");
    Sound_Add("german", "ger", "smoke");
    Sound_Add("german", "ger", "usegrenades");
    Sound_Add("german", "ger", "usegrenades2");
    Sound_Add("german", "ger", "usegrenades3");
    Sound_Add("german", "ger", "usegrenades4");
    Sound_Add("german", "ger", "ceasefire");

    Sound_Add("german", "ger", "yessir");
    Sound_Add("german", "ger", "yessir2");
    Sound_Add("german", "ger", "yessir3");
    Sound_Add("german", "ger", "negative");
    Sound_Add("german", "ger", "negative2");
    Sound_Add("german", "ger", "negative3");
    Sound_Add("german", "ger", "backup");
    Sound_Add("german", "ger", "backup2");
    Sound_Add("german", "ger", "backup3");
    Sound_Add("german", "ger", "backup4");
    Sound_Add("german", "ger", "grenadeout");
    Sound_Add("german", "ger", "grenadein");
    Sound_Add("german", "ger", "grenadein2");
    Sound_Add("german", "ger", "grenadein3");
    Sound_Add("german", "ger", "grenadein4");
    Sound_Add("german", "ger", "sniper");
    Sound_Add("german", "ger", "sniper2");
    Sound_Add("german", "ger", "niceshot");
    Sound_Add("german", "ger", "niceshot2");
    Sound_Add("german", "ger", "niceshot3");
    Sound_Add("german", "ger", "niceshot4");
    Sound_Add("german", "ger", "thanks");
    Sound_Add("german", "ger", "areaclear");

    Sound_Add("german", "ger", "dropweapons");
    Sound_Add("german", "ger", "changeposition");
    Sound_Add("german", "ger", "mgahead");
    Sound_Add("german", "ger", "mgahead2");
    Sound_Add("german", "ger", "enemybehind");
    Sound_Add("german", "ger", "enemybehind2");
    Sound_Add("german", "ger", "wegothim");
    Sound_Add("german", "ger", "wegothim2");
    Sound_Add("german", "ger", "wegothim3");
    Sound_Add("german", "ger", "wegothim4");
    Sound_Add("german", "ger", "wegothim5");
    Sound_Add("german", "ger", "wegothim6");
    Sound_Add("german", "ger", "wegothim7");
    Sound_Add("german", "ger", "moveupmg");
    Sound_Add("german", "ger", "moveupmg2");
    Sound_Add("german", "ger", "moveupmg3");
    Sound_Add("german", "ger", "needammo");
    Sound_Add("german", "ger", "needammo2");
    Sound_Add("german", "ger", "needammo3");
    Sound_Add("german", "ger", "usepanzerschreck");
    Sound_Add("german", "ger", "usepanzerschreck2");
    Sound_Add("german", "ger", "usepanzerschreck3");
    Sound_Add("german", "ger", "bazooka");

    Sound_Add("german", "ger", "tankahead");
    Sound_Add("german", "ger", "movewithtank");
    Sound_Add("german", "ger", "movewithtank2");
    Sound_Add("german", "ger", "movewithtank3");
    Sound_Add("german", "ger", "medic");
    Sound_Add("german", "ger", "medic2");
    Sound_Add("german", "ger", "fallback");
    Sound_Add("german", "ger", "enemyahead");
    Sound_Add("german", "ger", "coverflanks");

    g_voiceSounds.SetValue("player/jester.wav", NO_VALUE);

    AddNormalSoundHook(SoundHook_Voice);
}

static void Sound_Add(const char[] folder, const char[] prefix, const char[] name) {
    char path[PLATFORM_MAX_PATH];

    Format(path, sizeof(path), "player/%s/%s_%s.wav", folder, prefix, name);

    g_voiceSounds.SetValue(path, NO_VALUE);
}

public Action SoundHook_Voice(int clients[MAXPLAYERS], int& numClients, char sample[PLATFORM_MAX_PATH], int& entity, int& channel, float& volume, int& level, int& pitch, int& flags, char soundEntry[PLATFORM_MAX_PATH], int& seed) {
    if (UseCase_IsNotClient(entity)) {
        return Plugin_Continue;
    }

    if (g_voiceSounds.ContainsKey(sample)) {
        pitch = UseCase_ChangePitch(entity, pitch);

        return Plugin_Changed;
    }

    return Plugin_Continue;
}
