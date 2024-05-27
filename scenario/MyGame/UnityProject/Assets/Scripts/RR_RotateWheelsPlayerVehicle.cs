
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_RotateWheelsPlayerVehicle : MonoBehaviour
    {
        private bool enableRotation;
        private float rotationSpeed;



        private void Start()
        {
            rotationSpeed = 500f;
        }



        public void Play()
        {
            enableRotation = true;
        }



        void Update()
        {
            if (enableRotation)
            {
                transform.Rotate(rotationSpeed * Time.deltaTime, 0, 0);
            }
        }



        public void SetEnableRotation(bool enableRotation)
        {
            this.enableRotation = enableRotation;
        }
    }
}