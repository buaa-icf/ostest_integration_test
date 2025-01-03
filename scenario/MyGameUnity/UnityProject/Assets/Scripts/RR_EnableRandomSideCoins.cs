
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_EnableRandomSideCoins : MonoBehaviour
    {
        public GameObject[] coinsArray;



        private void OnEnable()
        {
            int randomNumberFirst = Random.Range(0, 22);

            if (randomNumberFirst % 7 == 0)
            {
                int randomNumberSecond = Random.Range(0, coinsArray.Length);

                for (int index = 0; index < coinsArray.Length; index++)
                {
                    if (index == randomNumberSecond)
                    {
                        coinsArray[index].SetActive(true);
                    }
                    else
                    {
                        coinsArray[index].SetActive(false);
                    }
                }
            }
        }
    }
}