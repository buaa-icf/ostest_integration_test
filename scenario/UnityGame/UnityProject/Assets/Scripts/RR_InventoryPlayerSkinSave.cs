
using UnityEngine;



namespace c21_HighwayDriver
{
    public class InventoryPlayerSkinSave : MonoBehaviour
    {
        private bool[] isPlayerSkinPurchasedBool = new bool[5];
        private int numberOfInitialPlayerUnlockedSkins;
        private int currentPlayerSkinIndex;



        public void SaveInventoryPlayerSkinDataFunction()
        {
            RR_SaveGameSystemBinaryFile.SavePlayerSkinInventoryData(this);
        }



        public void LoadInventoryPlayerSkinDataFunction()
        {
            numberOfInitialPlayerUnlockedSkins = 1;

            InventoryPlayerSkinDataClass rrInventoryPlayerSkinDataClassRef = RR_SaveGameSystemBinaryFile.LoadPlayerSkinInventoryData();
            if (rrInventoryPlayerSkinDataClassRef == null)
            {
                for (int index = 0; index < isPlayerSkinPurchasedBool.Length; index++)
                {
                    if (index < numberOfInitialPlayerUnlockedSkins)
                    {
                        isPlayerSkinPurchasedBool[index] = true;
                    }
                    else
                    {
                        isPlayerSkinPurchasedBool[index] = false;
                    }
                }
                currentPlayerSkinIndex = 0;
            }
            else
            {
                for (int index = 0; index < isPlayerSkinPurchasedBool.Length; index++)
                {
                    if (index < numberOfInitialPlayerUnlockedSkins)
                    {
                        isPlayerSkinPurchasedBool[index] = true;
                    }
                    else
                    {
                        isPlayerSkinPurchasedBool[index] = rrInventoryPlayerSkinDataClassRef.GetIsPlayerSkinPurchasedBool(index);
                    }
                }

                currentPlayerSkinIndex = rrInventoryPlayerSkinDataClassRef.GetCurrentPlayerSkinIndex();
            }
        }



        public void SetIsPlayerSkinPurchasedBool(bool isPurchased, int playerSkinIndex)
        {
            for (int index = 0; index < isPlayerSkinPurchasedBool.Length; index++)
            {
                if (playerSkinIndex == index)
                {
                    isPlayerSkinPurchasedBool[playerSkinIndex] = isPurchased;
                    return;
                }
            }
        }



        public bool GetIsPlayerSkinPurchasedBool(int playerSkinNumber)
        {
            for (int index = 0; index < isPlayerSkinPurchasedBool.Length; index++)
            {
                if (playerSkinNumber == index)
                {
                    return isPlayerSkinPurchasedBool[playerSkinNumber];
                }
            }
            return false;
        }



        public void SetCurrentPlayerSkinIndex(int currentPlayerSkinIndex)
        {
            this.currentPlayerSkinIndex = currentPlayerSkinIndex;
        }


        public int GetCurrentPlayerSkinIndex()
        {
            return currentPlayerSkinIndex;
        }
    }
}