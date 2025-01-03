using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_TrafficManager : MonoBehaviour
    {
        private static float trafficOutMoveSpeed;
        private static float trafficInMoveSpeed;


        public void Play()
        {
            SetTrafficOutMoveSpeed(-7f);
            SetTrafficInMoveSpeed(10);
        }


        private void OnEnable()
        {
            trafficInMoveSpeed = 0f;
            trafficOutMoveSpeed = 0f;
            Play();
        }


        public static void SetTrafficOutMoveSpeed(float trafficOutMoveSpeed)
        {
            RR_TrafficManager.trafficOutMoveSpeed = trafficOutMoveSpeed;
        }

        public static float GetTrafficOutMoveSpeed()
        {
            return trafficOutMoveSpeed;
        }


        public static void SetTrafficInMoveSpeed(float trafficInMoveSpeed)
        {
            RR_TrafficManager.trafficInMoveSpeed = trafficInMoveSpeed;
        }

        public static float GetTrafficInMoveSpeed()
        {
            return trafficInMoveSpeed;
        }
    }
}