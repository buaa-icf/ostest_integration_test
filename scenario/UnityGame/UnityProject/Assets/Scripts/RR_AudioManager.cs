using UnityEngine;
using System;


namespace c21_HighwayDriver
{
    public class RR_AudioManager : MonoBehaviour
    {
        public static RR_AudioManager AudioManagerInstance;

        private bool isMusicOnBool;
        private bool isSoundOnBool;

        [Header("Audio Files Names")]
        public string buttonClickSound;
        public string coinCollectedSound;
        public string itemPurchasedSound;
        public string playerCrashSound;
        public string engineStartSound;
        public string engineIdleSound;

        public string[] collisionVoices;
        public string gameOverVoice;

        private string stopLoopExceptionSound;

        [Space(10)]
        public RR_SoundCustomClass[] soundsArray;


        private void Awake()
        {
            if (AudioManagerInstance == null)
            {
                AudioManagerInstance = this;
                DontDestroyOnLoad(gameObject);
            }
            else
            {
                Destroy(gameObject);
                return;
            }

            foreach (var sound in soundsArray)
            {
                sound.source = gameObject.AddComponent<AudioSource>();
                sound.name = sound.clip.name;
                sound.source.clip = sound.clip;
                sound.source.volume = sound.volume;
                sound.source.pitch = sound.pitch;
                sound.source.loop = sound.loop;
            }
        }

        private void Start()
        {
            stopLoopExceptionSound = "Engine Idle";
        }

        private void Update()
        {
            soundsArray[5].source.pitch = soundsArray[5].pitch;
            soundsArray[5].source.volume = soundsArray[5].volume;
        }


        public void PlayAudio(string soundName)
        {
            var s = Array.Find(soundsArray, sound => sound.name == soundName);
            if (s == null)
            {
                return;
            }

            if (isSoundOnBool && isMusicOnBool)
            {
                if (s.loop)
                {
                    if (s.source.isPlaying == false)
                    {
                        s.source.Play();
                    }
                }
                else
                    s.source.Play();
            }
            else if (isSoundOnBool && isMusicOnBool == false)
            {
                if (s.loop)
                {
                    if (s.name == stopLoopExceptionSound)
                    {
                        s.source.Play();
                    }

                    return;
                }
                else
                {
                    s.source.Play();
                }
            }
            else if (isSoundOnBool == false && isMusicOnBool)
            {
                if (s.loop)
                {
                    if (s.source.isPlaying == false)
                    {
                        if (s.name != stopLoopExceptionSound)
                        {
                            s.source.Play();
                        }
                    }
                }
                else
                {
                    return;
                }
            }
            else
                return;
        }


        public void StopAudio(string soundName)
        {
            var s = Array.Find(soundsArray, sound => sound.name == soundName);
            if (s == null)
            {
                return;
            }

            if (isSoundOnBool && isMusicOnBool)
            {
                s.source.Stop();
            }
            else if (isSoundOnBool && isMusicOnBool == false)
            {
                if (s.loop)
                {
                    if (s.name == stopLoopExceptionSound)
                    {
                        s.source.Stop();
                    }

                    return;
                }
                else
                {
                    s.source.Stop();
                }
            }
            else if (isSoundOnBool == false && isMusicOnBool)
            {
                if (s.loop)
                {
                    s.source.Stop();
                }
                else
                {
                    return;
                }
            }
            else
                return;
        }


        public void PauseAudio(string soundName)
        {
            var s = Array.Find(soundsArray, sound => sound.name == soundName);
            if (s == null)
            {
                return;
            }

            if (isSoundOnBool && isMusicOnBool)
            {
                s.source.Pause();
            }
            else if (isSoundOnBool && isMusicOnBool == false)
            {
                if (s.loop)
                {
                    if (s.name == stopLoopExceptionSound)
                    {
                        s.source.Pause();
                    }

                    return;
                }
                else
                {
                    s.source.Pause();
                }
            }
            else if (isSoundOnBool == false && isMusicOnBool)
            {
                if (s.loop)
                {
                    s.source.Pause();
                }
                else
                {
                    return;
                }
            }
            else
                return;
        }


        public void UnPauseAudio(string soundName)
        {
            var s = Array.Find(soundsArray, sound => sound.name == soundName);
            if (s == null)
            {
                return;
            }

            if (isSoundOnBool && isMusicOnBool)
            {
                s.source.UnPause();
            }
            else if (isSoundOnBool && isMusicOnBool == false)
            {
                if (s.loop == true)
                {
                    if (s.name == stopLoopExceptionSound)
                    {
                        s.source.UnPause();
                    }

                    return;
                }
                else
                {
                    s.source.UnPause();
                }
            }
            else if (isSoundOnBool == false && isMusicOnBool)
            {
                if (s.loop)
                {
                    s.source.UnPause();
                }
                else
                {
                    return;
                }
            }
            else
                return;
        }


        public void SetIsMusicOnBool(bool isMusicOnBool)
        {
            this.isMusicOnBool = isMusicOnBool;
        }

        public void SetIsSoundOnBool(bool isSoundOnBool)
        {
            this.isSoundOnBool = isSoundOnBool;
        }


        public string GetButtonClickSound()
        {
            return buttonClickSound;
        }


        public string GetCrashSound()
        {
            return playerCrashSound;
        }

        public string GetCoinCollectedSound()
        {
            return coinCollectedSound;
        }

        public string GetItemPuchaseSound()
        {
            return itemPurchasedSound;
        }

        public string GetEngineStartSound()
        {
            return engineStartSound;
        }

        public string GetEngineIdleSound()
        {
            return engineIdleSound;
        }

        public string GetRandomCollisionVoice()
        {
            return collisionVoices[UnityEngine.Random.Range(0, collisionVoices.Length)];
        }

        public string GetGameOverVoice()
        {
            return gameOverVoice;
        }
    }
}