void Event_Create() {
    HookEvent("player_spawn", Event_PlayerSpawn);
    HookEvent("dod_round_win", Event_RoundWin);
    HookEvent("dod_round_start", Event_RoundStart);
}

public void Event_PlayerSpawn(Event event, const char[] name, bool dontBroadcast) {
    int userId = event.GetInt("userid");
    int client = GetClientOfUserId(userId);

    UseCase_ResizeToDefaultScale(client, RESIZE_MODE_DEATH);
}

public void Event_RoundWin(Event event, const char[] name, bool dontBroadcast) {
    for (int client = 1; client <= MaxClients; client++) {
        UseCase_ResizeToDefaultScale(client, RESIZE_MODE_ROUND_END);
    }
}

public void Event_RoundStart(Event event, const char[] name, bool dontBroadcast) {
    for (int client = 1; client <= MaxClients; client++) {
        UseCase_ResizeToDefaultScale(client, RESIZE_MODE_ROUND_START);
    }
}
