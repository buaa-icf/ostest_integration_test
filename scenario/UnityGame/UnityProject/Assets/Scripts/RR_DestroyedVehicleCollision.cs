
using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_DestroyedVehicleCollision : MonoBehaviour
    {
        public RR_RotateWheels[] rotateWheelsArray;



        private void Awake()
        {
            rotateWheelsArray = GetComponentsInChildren<RR_RotateWheels>(true);
        }



        private void OnCollisionEnter(Collision collision)
        {
            if (collision.gameObject.CompareTag("Obstacle"))
            {
                RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetCrashSound());

                DisableWheelRotation();
            }
        }



        public void DisableWheelRotation()
        {
            for (int index = 0; index < rotateWheelsArray.Length; index++)
            {
                rotateWheelsArray[index].enabled = false;
            }
        }
    }
}