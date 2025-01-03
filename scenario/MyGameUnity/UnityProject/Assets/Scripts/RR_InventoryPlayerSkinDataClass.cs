


namespace c21_HighwayDriver
{
    [System.Serializable]
    public class InventoryPlayerSkinDataClass
    {
        private bool[] isPlayerSkinPurchasedBool = new bool[10];
        private int currentPlayerSkinIndex;



        public InventoryPlayerSkinDataClass(InventoryPlayerSkinSave inventoryPlayerSkinSaveRef)
        {
            for (int index = 0; index < isPlayerSkinPurchasedBool.Length; index++)
            {
                isPlayerSkinPurchasedBool[index] = inventoryPlayerSkinSaveRef.GetIsPlayerSkinPurchasedBool(index);
            }

            currentPlayerSkinIndex = inventoryPlayerSkinSaveRef.GetCurrentPlayerSkinIndex();
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



        public int GetCurrentPlayerSkinIndex()
        {
            return currentPlayerSkinIndex;
        }
    }
}