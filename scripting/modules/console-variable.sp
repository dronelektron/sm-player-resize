static ConVar g_changePitch;

void Variable_Create() {
    g_changePitch = CreateConVar("sm_playerresize_pitch_change", "1", "Change pitch depending on model scale");
}

bool Variable_ChangePitch() {
    return g_changePitch.IntValue == 1;
}
