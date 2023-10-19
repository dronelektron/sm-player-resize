static ConVar g_pitchFactor;

void Variable_Create() {
    g_pitchFactor = CreateConVar("sm_playerresize_pitch_factor", "10.0", "Factor of pitch change depending on the model scale");
}

float Variable_PitchFactor() {
    return g_pitchFactor.FloatValue;
}
