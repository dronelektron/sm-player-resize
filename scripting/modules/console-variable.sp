static ConVar g_pitchEnable;
static ConVar g_pitchLogBase;
static ConVar g_pitchLogFactor;

void Variable_Create() {
    g_pitchEnable = CreateConVar("sm_playerresize_pitch_enable", "1", "Change pitch depending on model scale");
    g_pitchLogBase = CreateConVar("sm_playerresize_pitch_log_base", "2.0", "Logarithm base for pitch");
    g_pitchLogFactor = CreateConVar("sm_playerresize_pitch_log_factor", "20.0", "Logarithm factor for pitch");
    g_pitchEnable.AddChangeHook(OnPitchEnable);
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

static void OnPitchEnable(ConVar variable, const char[] oldValue, const char[] newValue) {
    Sound_PitchHook_Update();
}
