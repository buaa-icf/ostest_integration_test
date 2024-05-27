using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.UI;


namespace c21_HighwayDriver
{
    public class RR_SettingsManager : MonoBehaviour
    {
        private bool soundOnBool;

        private bool vibrationOnBool;
        public bool accMeterOnBool;

        [Space(10)] public Sprite soundOnSprite;
        public Sprite soundOffSprite;

        [Space(10)]
        public Sprite vibrationOnSprite;
        public Sprite vibrationOffSprite;
        public Sprite accMeterOnSprite;
        public Sprite accMeterOffSprite;

        [Space(10)] public Button musicButton;

        public Button soundButton;

        public Button vibrationButton;
        public Button accMeterButton;

        private RR_SettingsSave settingsSaver;


        private void Awake()
        {
            settingsSaver = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<RR_SettingsSave>();
            soundButton.onClick.AddListener(SetSoundsOnOffFunction);
            vibrationButton.onClick.AddListener(SetVibrationOnOffFunction);
            accMeterButton.onClick.AddListener(SetAcceleratorOnOffFunction);
        }


        private void Start()
        {
            settingsSaver.LoadSettingsDataFunction();
            soundOnBool = settingsSaver.GetSoundOnBool();
            vibrationOnBool = settingsSaver.GetVibrationOnBool();
            accMeterOnBool = settingsSaver.GetAcceleratorOnBool();

            RR_AudioManager.AudioManagerInstance.SetIsSoundOnBool(soundOnBool);
            //C21_AudioManager.AudioManagerInstance.PlayAudio(C21_AudioManager.AudioManagerInstance.GetEngineIdleSound());


            if (soundOnBool)
            {
                soundButton.image.sprite = soundOnSprite;
            }
            else
            {
                soundButton.image.sprite = soundOffSprite;
            }

            if (vibrationOnBool)
            {
                vibrationButton.image.sprite = vibrationOnSprite;
            }
            else
            {
                vibrationButton.image.sprite = vibrationOffSprite;
            }

            if (accMeterOnBool)
            {
                accMeterButton.image.sprite = accMeterOnSprite;
            }
            else
            {
                accMeterButton.image.sprite = accMeterOffSprite;
            }
        }


        public void SetSoundsOnOffFunction()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            soundOnBool = !soundOnBool;
            if (soundOnBool)
            {
                RR_AudioManager.AudioManagerInstance.SetIsSoundOnBool(soundOnBool);
                RR_AudioManager.AudioManagerInstance.PlayAudio(
                    RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());

                soundButton.image.sprite = soundOnSprite;
            }
            else
            {
                RR_AudioManager.AudioManagerInstance.StopAudio(
                    RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());
                RR_AudioManager.AudioManagerInstance.SetIsSoundOnBool(soundOnBool);

                soundButton.image.sprite = soundOffSprite;
            }

            settingsSaver.SetSoundOnBool(soundOnBool);
            settingsSaver.SaveSettingsDataFunction();
        }


        public void SetVibrationOnOffFunction()
        {
            vibrationOnBool = !vibrationOnBool;
            if (vibrationOnBool)
            {
                vibrationButton.image.sprite = vibrationOnSprite;
                Handheld.Vibrate();
            }
            else
            {
                vibrationButton.image.sprite = vibrationOffSprite;
            }
            settingsSaver.SetVibrationOnBool(vibrationOnBool);
            settingsSaver.SaveSettingsDataFunction();
        }

        public void SetAcceleratorOnOffFunction()
        {
            accMeterOnBool = !accMeterOnBool;
            if (accMeterOnBool)
            {
                accMeterButton.image.sprite = accMeterOnSprite;
            }
            else
            {
                accMeterButton.image.sprite = accMeterOffSprite;
            }

            settingsSaver.SetAcceleratorOnBool(accMeterOnBool);
            settingsSaver.SaveSettingsDataFunction();
        }
    }
}