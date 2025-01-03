using UnityEngine;


namespace c21_HighwayDriver
{
    namespace c21_HighwayDriver
    {
        public class RR_EnableRandomBuildings : MonoBehaviour
        {
            public GameObject[] buildingsArray;


            private void OnEnable()
            {
                int ramdomNumbero = Random.Range(0, 10);

                if (ramdomNumbero > 2)
                {
                    int randomNumber = Random.Range(0, buildingsArray.Length);
                    // int positionInX = Random.Range(-5, 5);

                    for (int index = 0; index < buildingsArray.Length; index++)
                    {
                        if (randomNumber == index)
                        {
                            // transform.localPosition = new Vector3(positionInX, 0f, 0f);
                            buildingsArray[index].SetActive(true);
                        }
                        else
                        {
                            buildingsArray[index].SetActive(false);
                        }
                    }
                }
            }
        }
    }
}