static const int NO_VALUE = 0;
static StringMap g_sounds;

void SoundFilter_Create() {
    g_sounds = new StringMap();

    SoundFilter_Add("sound/player/american");
    SoundFilter_Add("sound/player/damage");
    SoundFilter_Add("sound/player/german");
}

bool SoundFilter_IsPlayerSound(const char[] sample) {
    return g_sounds.ContainsKey(sample);
}

static void SoundFilter_Add(const char[] path) {
    DirectoryListing directory = OpenDirectory(path, true);
    FileType fileType;
    char fileName[PLATFORM_MAX_PATH];
    char subPath[PLATFORM_MAX_PATH];

    while (directory.GetNext(fileName, sizeof(fileName), fileType)) {
        Format(subPath, sizeof(subPath), "%s/%s", path, fileName);

        if (fileType == FileType_Directory) {
            SoundFilter_Add(subPath);
        } else {
            ReplaceString(subPath, sizeof(subPath), "sound/", "");

            g_sounds.SetValue(subPath, NO_VALUE);
        }
    }

    CloseHandle(directory);
}
