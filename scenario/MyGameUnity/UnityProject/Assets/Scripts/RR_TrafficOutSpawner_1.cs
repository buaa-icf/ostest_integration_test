
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_TrafficOutSpawner_1 : MonoBehaviour
    {
        public float spawnPositionInX;
        private float spawnPositionInZ;
        public float startPositionInZ;
        private float distanceBetweenVehicles;
        public GameObject[] prefabArrayDefault;
        private GameObject currentFrontVehicle;



        private void OnEnable()
        {
            distanceBetweenVehicles = 16;

            for (int index = 0; index < prefabArrayDefault.Length; index++)
            {
                GameObject go = Instantiate(prefabArrayDefault[index]);

                go.transform.position = new Vector3(spawnPositionInX, 0f, (index) * distanceBetweenVehicles + startPositionInZ);
                go.transform.SetParent(transform);
                go.SetActive(true);

                currentFrontVehicle = go;

                RR_DisableTrafficOutVehicleTrigger disableTrafficOutVehicleTrigger = go.GetComponent<RR_DisableTrafficOutVehicleTrigger>();
                disableTrafficOutVehicleTrigger.trafficOutSpawner = this;
            }
        }



        public void ResetVehiclePosition(GameObject vehicle)
        {
            spawnPositionInZ = currentFrontVehicle.transform.position.z + distanceBetweenVehicles;
            currentFrontVehicle = vehicle;

            currentFrontVehicle.transform.position = new Vector3(spawnPositionInX, 0, spawnPositionInZ);
        }
    }
}