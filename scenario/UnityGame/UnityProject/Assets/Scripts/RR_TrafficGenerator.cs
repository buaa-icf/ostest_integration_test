
using UnityEngine;
using System.Collections.Generic;



namespace c21_HighwayDriver
{
    public class RR_TrafficGenerator : MonoBehaviour
    {
        private float spawnInZat;
        private float sizeOfPlatform;
        private int amountOfPlatformOnScreen;
        private float backPlatformsSize;
        private int backPlatformsNumber;

        public GameObject[] prefabArrayDefault;

        public Queue<GameObject> prefabQueueActive;

        private Transform player;




        private void Awake()
        {
            player = GameObject.FindGameObjectWithTag("CameraLookAt").GetComponent<Transform>();
        }



        private void Start()
        {
            prefabQueueActive = new Queue<GameObject>();

            amountOfPlatformOnScreen = prefabArrayDefault.Length;
            spawnInZat = 0f;
            sizeOfPlatform = 24f;
            backPlatformsNumber = 2;
            backPlatformsSize = backPlatformsNumber * sizeOfPlatform;

            for (int index = 0; index < prefabArrayDefault.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayDefault[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, (index - backPlatformsNumber) * sizeOfPlatform);
                prefabQueueActive.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(true);
            }



            spawnInZat = amountOfPlatformOnScreen * sizeOfPlatform - backPlatformsSize;
        }



        private void AddAndRemovePlatform()
        {
            GameObject temporaryActive = prefabQueueActive.Dequeue();

            prefabQueueActive.Enqueue(temporaryActive);
            temporaryActive.transform.position = new Vector3(0, 0, spawnInZat);

            spawnInZat += sizeOfPlatform;
        }



        private void Update()
        {
            if (player.position.z > (sizeOfPlatform + spawnInZat - (amountOfPlatformOnScreen * sizeOfPlatform - backPlatformsSize)))
            {
                AddAndRemovePlatform();
            }
        }



        public void ResetSpawnOrigin()
        {
            spawnInZat = amountOfPlatformOnScreen * sizeOfPlatform - backPlatformsSize;
        }
    }
}