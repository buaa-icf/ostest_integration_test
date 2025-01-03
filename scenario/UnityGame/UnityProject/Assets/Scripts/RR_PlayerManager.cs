
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_PlayerManager : MonoBehaviour
    {
        public GameObject[] playerArray;

        private InventoryPlayerSkinSave InventoryPlayerSkinSaveRef;



        private void Awake()
        {
            InventoryPlayerSkinSaveRef = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<InventoryPlayerSkinSave>();
        }



        private void OnEnable()
        {
            //InventoryPlayerSkinSaveRef.LoadInventoryPlayerSkinDataFunction();
            int playerIndex = InventoryPlayerSkinSaveRef.GetCurrentPlayerSkinIndex();

            for (int index = 0; index < playerArray.Length; index++)
            {
                if (playerIndex == index)
                {
                    playerArray[index].SetActive(true);
                }
                else
                {
                    playerArray[index].SetActive(false);
                }
            }
        }
    }
}