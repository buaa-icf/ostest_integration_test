
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_EnableRandomTraffic : MonoBehaviour
    {
        public GameObject[] vehiclesArray;

        [Space(10)]
        public float xPosition;
        public float zPosition;


        private void OnEnable()
        {
            int randomNumber = Random.Range(0, vehiclesArray.Length * 2);

            for (int index = 0; index < vehiclesArray.Length; index++)
            {
                if (randomNumber == index)
                {
                    vehiclesArray[index].transform.localPosition = new Vector3(xPosition, 0f, zPosition);
                    vehiclesArray[index].SetActive(true);
                }
                else
                {
                    vehiclesArray[index].SetActive(false);
                }
            }
        }



        private void OnDisable()
        {
            for (int index = 0; index < vehiclesArray.Length; index++)
            {
                vehiclesArray[index].transform.localPosition = new Vector3(xPosition, 0f, zPosition);
                vehiclesArray[index].SetActive(false);
            }
        }
    }
}