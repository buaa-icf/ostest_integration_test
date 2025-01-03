
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_DisableTrafficOutVehicleTrigger : MonoBehaviour
    {
        public RR_TrafficOutSpawner_1 trafficOutSpawner;



        private void OnTriggerEnter(Collider other)
        {
            if (other.tag == "Player")
            {
                trafficOutSpawner.ResetVehiclePosition(transform.gameObject);
            }
        }
    }
}