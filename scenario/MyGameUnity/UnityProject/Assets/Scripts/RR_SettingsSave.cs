using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_SettingsSave : MonoBehaviour
    {
        //private bool isPolicyAccepted;

        private bool vibrationOnBool;
        private bool acceleratorOnBool;
        private bool musicOnBool;
        private bool soundOnBool;


        public void SaveSettingsDataFunction()
        {
            RR_SaveGameSystemBinaryFile.SaveSettingsData(this);
        }


        public void LoadSettingsDataFunction()
        {
            SettingsDataClass settingsDataRef = RR_SaveGameSystemBinaryFile.LoadSettingsData();
            if (settingsDataRef == null)
            {
                //isPolicyAccepted = false;

                vibrationOnBool = true;
                acceleratorOnBool = true;
                musicOnBool = false;
                soundOnBool = true;
            }
            else
            {
                //isPolicyAccepted = settingsDataRef.isPolicyAccepted;

                vibrationOnBool = settingsDataRef.vibrationOnBool;
                acceleratorOnBool = settingsDataRef.acceleratorOnBool;
                musicOnBool = settingsDataRef.musicOnBool;
                soundOnBool = settingsDataRef.soundOnBool;
            }
        }


        /*public void SetIsPolicyAccepted(bool isPolicyAccepted)
        {
            this.isPolicyAccepted = isPolicyAccepted;
        }

        public bool GetIsPolicyAccepted()
        {
            return isPolicyAccepted;
        }*/


        public void SetMusicOnBool(bool musicOnBool)
        {
            this.musicOnBool = musicOnBool;
        }

        public bool GetMusicOnBool()
        {
            return musicOnBool;
        }


        public void SetSoundOnBool(bool soundOnBool)
        {
            this.soundOnBool = soundOnBool;
        }

        public bool GetSoundOnBool()
        {
            return soundOnBool;
        }


        public void SetVibrationOnBool(bool vibrationOnBool)
        {
            this.vibrationOnBool = vibrationOnBool;
        }

        public bool GetVibrationOnBool()
        {
            return vibrationOnBool;
        }

        public void SetAcceleratorOnBool(bool acceleratorOnBool)
        {
            this.acceleratorOnBool = acceleratorOnBool;
        }

        public bool GetAcceleratorOnBool()
        {
            return acceleratorOnBool;
        }
    }
}