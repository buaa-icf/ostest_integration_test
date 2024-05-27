


namespace c21_HighwayDriver
{
    [System.Serializable]

    public class SettingsDataClass
    {
        //public bool isPolicyAccepted;

        public bool vibrationOnBool;
        public bool acceleratorOnBool;
        public bool musicOnBool;
        public bool soundOnBool;



        public SettingsDataClass(RR_SettingsSave settingsSaveRef)
        {
            //isPolicyAccepted = settingsSaveRef.GetIsPolicyAccepted();

            vibrationOnBool = settingsSaveRef.GetVibrationOnBool();
            acceleratorOnBool = settingsSaveRef.GetAcceleratorOnBool();
            musicOnBool = settingsSaveRef.GetMusicOnBool();
            soundOnBool = settingsSaveRef.GetSoundOnBool();
        }
    }
}