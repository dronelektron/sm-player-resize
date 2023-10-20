static ConVar g_pitchEnable;
static ConVar g_pitchLogBase;
static ConVar g_pitchLogFactor;

void Variable_Create() {
    g_pitchEnable = CreateConVar("sm_playerresize_pitch_enable", VARIABLE_ON, "Change pitch depending on model scale");
    g_pitchLogBase = CreateConVar("sm_playerresize_pitch_log_base", "2.0", "Logarithm base for pitch");
    g_pitchLogFactor = CreateConVar("sm_playerresize_pitch_log_factor", "20.0", "Logarithm factor for pitch");

    HookConVarChange(g_pitchEnable, VariableHook_OnPitchEnable);
}

bool Variable_EnablePitch() {
    return g_pitchEnable.IntValue == 1;
}

float Variable_LogarithmBase() {
    return g_pitchLogBase.FloatValue;
}

float Variable_LogarithmFactor() {
    return g_pitchLogFactor.FloatValue;
}

public void VariableHook_OnPitchEnable(ConVar convar, const char[] oldValue, const char[] newValue) {
    if (strcmp(newValue, VARIABLE_ON) == 0) {
        UseCase_UpdatePitchHookState();
    } else if (strcmp(newValue, VARIABLE_OFF) == 0) {
        Sound_DisablePitchHook();
    } else {
        convar.SetString(VARIABLE_ON);
    }
}
