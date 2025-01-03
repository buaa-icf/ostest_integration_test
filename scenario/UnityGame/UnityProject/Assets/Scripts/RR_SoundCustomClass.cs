
using UnityEngine;
using System;



namespace c21_HighwayDriver
{
    [Serializable]
    public class RR_SoundCustomClass
    {
        public string SoundName;

        public string name;

        public AudioClip clip;

        [Range(0f, 1f)] public float volume;

        [Range(0f, 3f)] public float pitch;

        [HideInInspector] public AudioSource source;

        public bool loop;
    }
}