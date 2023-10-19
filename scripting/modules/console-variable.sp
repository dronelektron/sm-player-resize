static ConVar g_voiceFactor;

void Variable_Create() {
    g_voiceFactor = CreateConVar("sm_playerresize_voice_factor", "10.0", "How quickly the pitch of the voice changes depending on the scale of the model");
}

float Variable_VoiceFactor() {
    return g_voiceFactor.FloatValue;
}
