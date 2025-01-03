
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_TrafficManagerMovement : MonoBehaviour
    {
        private Vector3 startPosition;
        private bool enablePlay;
        private Transform playerTransform;



        public void Play()
        {
            GetPlayerReferences();
            enablePlay = true;
        }



        private void GetPlayerReferences()
        {
            playerTransform = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
        }



        private void Start()
        {
            startPosition = new Vector3(0, 0, 0f);
            transform.position = startPosition;
        }



        private void FixedUpdate()
        {
            if (enablePlay)
            {
                transform.position = new Vector3(transform.position.x, transform.position.y, playerTransform.position.z);
            }
        }
    }
}