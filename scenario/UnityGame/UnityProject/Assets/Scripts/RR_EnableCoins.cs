
using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_EnableCoins : MonoBehaviour
    {
        public GameObject[] coinsArray;



        private void OnEnable()
        {
            for (int index = 0; index < coinsArray.Length; index++)
            {
                coinsArray[index].SetActive(true);
            }
        }
    }
}