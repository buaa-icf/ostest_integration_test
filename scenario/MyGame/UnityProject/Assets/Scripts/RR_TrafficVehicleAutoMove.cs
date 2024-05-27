using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_TrafficVehicleAutoMove : MonoBehaviour
    {
        public enum Direction
        {
            Forward,
            Backward
        }

        public Direction direction;

        private float speed;
        public bool enableAutoTrafficMove;
        private bool enableIncreaseSpeed;


        public void Play()
        {
            enableIncreaseSpeed = true;
        }


        private void OnEnable()
        {
            speed = 2f;
            enableAutoTrafficMove = false;
        }


        private void IncreaseSpeed()
        {
            speed += 0.01f;
            if (speed >= 7)
            {
                enableIncreaseSpeed = false;
            }
        }


        private void Update()
        {
            if (enableIncreaseSpeed)
            {
                IncreaseSpeed();
            }
        }


        private void FixedUpdate()
        {
            if (enableAutoTrafficMove)
            {
                AutoMoveVehicle();
            }
        }


        private void AutoMoveVehicle()
        {
            Vector3 moveVector = Vector3.zero;
            moveVector.x = 0f;
            moveVector.y = -0.0f;
            if (direction == Direction.Forward)
            {
                moveVector.z = speed;
            }
            else if (direction == Direction.Backward)
            {
                moveVector.z = -speed;
            }

            transform.Translate(moveVector * Time.fixedDeltaTime);
        }


        private void OnCollisionEnter(Collision collision)
        {
            if (collision.gameObject.CompareTag("Player"))
            {
                enableAutoTrafficMove = false;
            }
        }
    }
}