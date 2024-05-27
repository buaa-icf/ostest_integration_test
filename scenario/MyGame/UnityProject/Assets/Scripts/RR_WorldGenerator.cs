
using System.Collections.Generic;
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_WorldGenerator : MonoBehaviour
    {
        private float spawnInZat;
        private float sizeOfPlatform;
        private int amountOfPlatformOnScreen;
        private float backPlatformsSize;
        private int backPlatformsNumber;

        public GameObject[] prefabArrayDefault;
        public GameObject[] prefabArrayFirst;
        public GameObject[] prefabArraySecond;
        public GameObject[] prefabArrayThird;
        public GameObject[] prefabArrayFourth;
        public GameObject[] prefabArrayFifth;
        public GameObject[] prefabArraySixth;

        public Queue<GameObject> prefabQueueActive;
        private Queue<GameObject> prefabQueueFirst;
        private Queue<GameObject> prefabQueueSecond;
        private Queue<GameObject> prefabQueueThird;
        private Queue<GameObject> prefabQueueFourth;
        private Queue<GameObject> prefabQueueFifth;
        private Queue<GameObject> prefabQueueSixth;

        private Transform player;

        private enum PrefabQueue
        {
            prefabQueueFirst,
            prefabQueueSecond,
            prefabQueueThird,
            prefabQueueFourth,
            prefabQueueFifth,
            prefabQueueSixth
        }
        private PrefabQueue prefabQueue;



        private void Awake()
        {
            player = GameObject.FindGameObjectWithTag("CameraLookAt").GetComponent<Transform>();
        }



        private void Start()
        {
            prefabQueueActive = new Queue<GameObject>();
            prefabQueueFirst = new Queue<GameObject>();
            prefabQueueSecond = new Queue<GameObject>();
            prefabQueueThird = new Queue<GameObject>();
            prefabQueueFourth = new Queue<GameObject>();
            prefabQueueFifth = new Queue<GameObject>();
            prefabQueueSixth = new Queue<GameObject>();

            amountOfPlatformOnScreen = prefabArrayFirst.Length;
            spawnInZat = 0f;
            sizeOfPlatform = 19.2f;
            backPlatformsNumber = 0;
            backPlatformsSize = backPlatformsNumber * sizeOfPlatform;

            for (int index = 0; index < prefabArrayDefault.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayDefault[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, (index - backPlatformsNumber) * sizeOfPlatform);
                prefabQueueActive.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(true);
            }

            for (int index = 0; index < prefabArrayFirst.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayFirst[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueFirst.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            for (int index = 0; index < prefabArraySecond.Length; index++)
            {
                GameObject go = Instantiate(prefabArraySecond[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueSecond.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            for (int index = 0; index < prefabArrayThird.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayThird[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueThird.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            for (int index = 0; index < prefabArrayFourth.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayFourth[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueFourth.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            for (int index = 0; index < prefabArrayFifth.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayFifth[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueFifth.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            for (int index = 0; index < prefabArraySixth.Length; index++)
            {
                GameObject go = Instantiate(prefabArraySixth[index]) as GameObject;

                go.transform.position = new Vector3(0f, 0f, spawnInZat);
                prefabQueueSixth.Enqueue(go);
                go.transform.SetParent(transform);
                go.SetActive(false);
            }

            spawnInZat = amountOfPlatformOnScreen * sizeOfPlatform - backPlatformsSize;
        }



        private void AddAndRemovePlatform()
        {
            GameObject temporaryActive = prefabQueueActive.Dequeue();
            temporaryActive.SetActive(false);

            prefabQueue = (PrefabQueue)Random.Range(0, 6);

            switch (prefabQueue)
            {
                case PrefabQueue.prefabQueueFirst:

                    prefabQueueFirst.Enqueue(temporaryActive);
                    GameObject temporaryFirst = prefabQueueFirst.Dequeue();
                    prefabQueueActive.Enqueue(temporaryFirst);
                    temporaryFirst.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporaryFirst.SetActive(true);

                    break;


                case PrefabQueue.prefabQueueSecond:

                    prefabQueueSecond.Enqueue(temporaryActive);
                    GameObject temporarySecond = prefabQueueSecond.Dequeue();
                    prefabQueueActive.Enqueue(temporarySecond);
                    temporarySecond.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporarySecond.SetActive(true);

                    break;


                case PrefabQueue.prefabQueueThird:

                    prefabQueueThird.Enqueue(temporaryActive);
                    GameObject temporaryThird = prefabQueueThird.Dequeue();
                    prefabQueueActive.Enqueue(temporaryThird);
                    temporaryThird.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporaryThird.SetActive(true);

                    break;


                case PrefabQueue.prefabQueueFourth:

                    prefabQueueFourth.Enqueue(temporaryActive);
                    GameObject temporaryFourth = prefabQueueFourth.Dequeue();
                    prefabQueueActive.Enqueue(temporaryFourth);
                    temporaryFourth.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporaryFourth.SetActive(true);

                    break;


                case PrefabQueue.prefabQueueFifth:

                    prefabQueueFifth.Enqueue(temporaryActive);
                    GameObject temporaryFifth = prefabQueueFifth.Dequeue();
                    prefabQueueActive.Enqueue(temporaryFifth);
                    temporaryFifth.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporaryFifth.SetActive(true);

                    break;


                case PrefabQueue.prefabQueueSixth:

                    prefabQueueSixth.Enqueue(temporaryActive);
                    GameObject temporarySixth = prefabQueueSixth.Dequeue();
                    prefabQueueActive.Enqueue(temporarySixth);
                    temporarySixth.transform.position = new Vector3(0, 0, spawnInZat);
                    spawnInZat += sizeOfPlatform;
                    temporarySixth.SetActive(true);

                    break;
            }
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