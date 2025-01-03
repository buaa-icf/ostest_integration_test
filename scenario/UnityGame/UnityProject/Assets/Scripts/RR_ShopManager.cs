
using UnityEngine;
using UnityEngine.UI;



namespace c21_HighwayDriver
{
    public class RR_ShopManager : MonoBehaviour
    {
        public int totalCoins;
        private int currentPlayerPrice;

        public Sprite buyButtonSprite;
        public Sprite selectButtonSprite;
        public Sprite selectedButtonSprite;

        private int currentIndex;

        [Space(10)]
        public Button previousButton;
        public Button nextButton;
        public Button buyButton;
        //public Button backButton;

        public Text totalCoinsText;
        public Text priceText;

        public RR_PlayerSkinShopClass[] playerSkinsArray;

        private InventoryPlayerSkinSave InventoryPlayerSkinSaveRef;
        private RR_StatisticsSave StatisticsSaveRef;



        private void Awake()
        {
            InventoryPlayerSkinSaveRef = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<InventoryPlayerSkinSave>();
            StatisticsSaveRef = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<RR_StatisticsSave>();

            previousButton.onClick.AddListener(SelectPreviousVehicleFunction);
            nextButton.onClick.AddListener(SelectNextVehicleFunction);
            //backButton.onClick.AddListener(EnablePurchasedPlayer);
        }




        private void OnEnable()
        {
            ResetData();
            EnableSelectedPlayer();
        }



        public void ResetData()
        {
            InventoryPlayerSkinSaveRef.LoadInventoryPlayerSkinDataFunction();
            currentIndex = InventoryPlayerSkinSaveRef.GetCurrentPlayerSkinIndex();

            StatisticsSaveRef.LoadStatisticsDataFunction();
            totalCoins = StatisticsSaveRef.GetTotalCoins();
            totalCoinsText.text = totalCoins.ToString();

            SetPreviousNextButtonFunctionality();
            SetBuyButtonFunctionality();
        }


        private void EnableSelectedPlayer()
        {
            for (int index = 0; index < playerSkinsArray.Length; index++)
            {
                if (index == currentIndex)
                {
                    playerSkinsArray[index].player.SetActive(true);
                }
                else
                {
                    playerSkinsArray[index].player.SetActive(false);
                }
            }
        }



        public void EnablePurchasedPlayerFunction()
        {
            for (int index = 0; index < playerSkinsArray.Length; index++)
            {
                if (index == InventoryPlayerSkinSaveRef.GetCurrentPlayerSkinIndex())
                {
                    playerSkinsArray[index].player.SetActive(true);
                }
                else
                {
                    playerSkinsArray[index].player.SetActive(false);
                }
            }
        }



        public void SelectNextVehicleFunction()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetButtonClickSound());

            currentIndex += 1;
            buyButton.onClick.RemoveAllListeners();
            SetPreviousNextButtonFunctionality();
            SetBuyButtonFunctionality();
            EnableSelectedPlayer();
        }



        public void SelectPreviousVehicleFunction()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetButtonClickSound());

            currentIndex -= 1;
            buyButton.onClick.RemoveAllListeners();
            SetPreviousNextButtonFunctionality();
            SetBuyButtonFunctionality();
            EnableSelectedPlayer();
        }

        private void SetPreviousNextButtonFunctionality()
        {
            if (currentIndex == 0)
            {
                previousButton.interactable = false;
                nextButton.interactable = true;
            }
            else if (currentIndex == playerSkinsArray.Length - 1)
            {
                nextButton.interactable = false;
                previousButton.interactable = true;
            }
            else
            {
                previousButton.interactable = true;
                nextButton.interactable = true;
            }
        }



        public void SetBuyButtonFunctionality()
        {
            for (int index = 0; index < playerSkinsArray.Length; index++)
            {
                playerSkinsArray[index].isPurchasedBool = InventoryPlayerSkinSaveRef.GetIsPlayerSkinPurchasedBool(index);
            }

            for (int index = 0; index < playerSkinsArray.Length; index++)
            {
                if (index == InventoryPlayerSkinSaveRef.GetCurrentPlayerSkinIndex())
                {
                    playerSkinsArray[index].isSelectedBool = true;
                }
                else
                {
                    playerSkinsArray[index].isSelectedBool = false;
                }
            }

            if (playerSkinsArray[currentIndex].isPurchasedBool)
            {
                priceText.text = null;

                if (playerSkinsArray[currentIndex].isSelectedBool)
                {
                    buyButton.image.sprite = selectedButtonSprite;
                    buyButton.interactable = false;
                }
                else
                {
                    buyButton.onClick.AddListener(SelectPlayerFunction);
                    buyButton.image.sprite = selectButtonSprite;
                    buyButton.interactable = true;
                }
            }
            else
            {
                currentPlayerPrice = playerSkinsArray[currentIndex].price;
                priceText.text = currentPlayerPrice.ToString();

                buyButton.image.sprite = buyButtonSprite;

                if (playerSkinsArray[currentIndex].price <= totalCoins)
                {
                    priceText.color = new Color32(255, 255, 255, 255);

                    buyButton.onClick.AddListener(BuyPlayerFunction);
                    buyButton.interactable = true;
                }
                else
                {
                    priceText.color = new Color32(200, 200, 200, 255);

                    buyButton.interactable = false;
                }
            }
        }



        private void SelectPlayerFunction()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetButtonClickSound());

            InventoryPlayerSkinSaveRef.SetCurrentPlayerSkinIndex(currentIndex);
            InventoryPlayerSkinSaveRef.SaveInventoryPlayerSkinDataFunction();

            for (int index = 0; index < playerSkinsArray.Length; index++)
            {
                if (index == currentIndex)
                {
                    playerSkinsArray[index].isSelectedBool = true;
                }
                else
                {
                    playerSkinsArray[index].isSelectedBool = false;
                }
            }
            SetBuyButtonFunctionality();
        }



        private void BuyPlayerFunction()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetItemPuchaseSound());

            totalCoins -= currentPlayerPrice;

            StatisticsSaveRef.SetTotalCoins(totalCoins);
            StatisticsSaveRef.SaveStatisticsDataFunction();
            StatisticsSaveRef.LoadStatisticsDataFunction();
            totalCoins = StatisticsSaveRef.GetTotalCoins();
            totalCoinsText.text = totalCoins.ToString();

            InventoryPlayerSkinSaveRef.SetIsPlayerSkinPurchasedBool(true, currentIndex);
            InventoryPlayerSkinSaveRef.SetCurrentPlayerSkinIndex(currentIndex);
            InventoryPlayerSkinSaveRef.SaveInventoryPlayerSkinDataFunction();

            EnableSelectedPlayer();
            SetBuyButtonFunctionality();
        }
    }
}