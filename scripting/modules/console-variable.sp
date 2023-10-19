static ConVar g_changePitch;

void Variable_Create() {
    g_changePitch = CreateConVar("sm_playerresize_pitch_change", VARIABLE_ON, "Change pitch depending on model scale");

    HookConVarChange(g_changePitch, VariableHook_OnChangePitch);
}

bool Variable_ChangePitch() {
    return g_changePitch.IntValue == 1;
}

public void VariableHook_OnChangePitch(ConVar convar, const char[] oldValue, const char[] newValue) {
    if (strcmp(newValue, VARIABLE_ON) == 0) {
        UseCase_UpdatePitchHookState();
    } else if (strcmp(newValue, VARIABLE_OFF) == 0) {
        Sound_DisablePitchHook();
    } else {
        convar.SetString(VARIABLE_ON);
    }
}
