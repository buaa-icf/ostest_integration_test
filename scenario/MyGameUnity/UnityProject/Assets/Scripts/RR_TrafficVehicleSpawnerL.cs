using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_TrafficVehicleSpawnerL : MonoBehaviour
    {
        [Space(10)] public SpawnAxis spawnAxis;


        [Space(10)] public float chunkSize;

        private float chunkStartPosition;
        private float destroyZone;
        private bool enableSpawning;
        private bool isPlaying;

        private Vector3 moveDirection;

        private float speed;

        [Space(10)]
        public GameObject[] chunksArray;
        private GameObject lastChunk;
        private RR_VehicleController vehicleController;


        public void Play()
        {
            vehicleController = GameObject.FindGameObjectWithTag("Player").GetComponent<RR_VehicleController>();
            isPlaying = true;
        }

        public void StopPlay()
        {
            isPlaying = false;
        }

        public void Initialize()
        {
        }


        private void Update()
        {
            if (enableSpawning)
            {
                if (isPlaying)
                {
                    speed = 6.3f + vehicleController.GetMovementSpeed();
                }
                else
                {
                    speed = 6.3f;
                }
            }
        }


        private void Start()
        {
            InitializeVariables();

            void InitializeVariables()
            {
                speed = 6.3f;

                chunkStartPosition = -20f;
                chunkSize = 25;
                destroyZone = 30;
            }


            for (int index = 0; index < chunksArray.Length; index++)
            {
                //chunksArray[index] = Instantiate(chunksArray[index]);
                GameObject chunk = chunksArray[index];

                chunk.transform.SetParent(transform);
                chunk.SetActive(true);

                chunk.GetComponent<RR_RunnerVehicleChunkL>().SetRoadChunkSpawner(this);

                switch (spawnAxis) //Positions localized
                {
                    case SpawnAxis.XPositive:
                    {
                        chunk.transform.localPosition = new Vector3(-index * chunkSize - chunkStartPosition, 0,
                            transform.localPosition.z);
                        moveDirection = Vector3.right;
                        break;
                    }

                    case SpawnAxis.XNegative:
                    {
                        chunk.transform.localPosition = new Vector3(index * chunkSize + chunkStartPosition, 0,
                            transform.localPosition.z);
                        moveDirection = Vector3.left;
                        break;
                    }

                    case SpawnAxis.ZPositive:
                    {
                        chunk.transform.localPosition = new Vector3(transform.localPosition.z, 0,
                            -index * chunkSize - chunkStartPosition);
                        moveDirection = Vector3.forward;
                        break;
                    }

                    case SpawnAxis.ZNegative:
                    {
                        chunk.transform.localPosition = new Vector3(transform.localPosition.z, 0,
                            index * chunkSize + chunkStartPosition);
                        moveDirection = Vector3.back;
                        break;
                    }
                }

                lastChunk = chunk;
            }

            SetEnableSpawning(true);
        }


        public void DestroyChunk(RR_RunnerVehicleChunkL thisChunk)
        {
            Vector3 newPosition = lastChunk.transform.localPosition;

            switch (spawnAxis)
            {
                case SpawnAxis.XPositive:
                    newPosition.x -= chunkSize;
                    break;

                case SpawnAxis.XNegative:
                    newPosition.x += chunkSize;
                    break;

                case SpawnAxis.ZPositive:
                    newPosition.z -= chunkSize;
                    break;

                case SpawnAxis.ZNegative:
                    newPosition.z += chunkSize;
                    break;
            }

            lastChunk = thisChunk.gameObject;
            //lastChunk.SetActive(false);
            lastChunk.transform.localPosition = newPosition;
            lastChunk.SetActive(true);
        }


        public void SetEnableSpawning(bool enableSpawning)
        {
            this.enableSpawning = enableSpawning;
        }

        public bool GetEnableSpawning()
        {
            return enableSpawning;
        }


        public float GetMovingSpeed()
        {
            return speed;
        }


        public float GetDestroyZone()
        {
            return destroyZone;
        }


        public Vector3 GetMoveDirection()
        {
            return moveDirection;
        }
    }


    public enum SpawnAxis
    {
        XPositive,
        XNegative,
        ZPositive,
        ZNegative
    }
}