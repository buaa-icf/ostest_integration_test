
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_RunnerVehicleChunkL : MonoBehaviour
    {
        private RR_TrafficVehicleSpawnerL roadChunkSpawner;



        private void Update()
        {
            if (roadChunkSpawner.GetEnableSpawning())
            {
                transform.Translate(roadChunkSpawner.GetMovingSpeed() * Time.deltaTime * roadChunkSpawner.GetMoveDirection());
            }
        }



        private void FixedUpdate()
        {
            switch (roadChunkSpawner.spawnAxis)
            {
                case SpawnAxis.XPositive:

                    if (transform.localPosition.x > roadChunkSpawner.GetDestroyZone())
                        roadChunkSpawner.DestroyChunk(this);
                    break;

                case SpawnAxis.XNegative:

                    if (transform.localPosition.x < -roadChunkSpawner.GetDestroyZone())
                        roadChunkSpawner.DestroyChunk(this);
                    break;

                case SpawnAxis.ZPositive:

                    if (transform.localPosition.z > roadChunkSpawner.GetDestroyZone())
                        roadChunkSpawner.DestroyChunk(this);
                    break;

                case SpawnAxis.ZNegative:

                    if (transform.localPosition.z < -roadChunkSpawner.GetDestroyZone())
                        roadChunkSpawner.DestroyChunk(this);
                    break;
            }
        }



        public void SetRoadChunkSpawner(RR_TrafficVehicleSpawnerL roadChunkSpawner)
        {
            this.roadChunkSpawner = roadChunkSpawner;
        }
    }
}