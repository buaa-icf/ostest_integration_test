using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;


namespace c21_HighwayDriver
{
    public static class RR_SaveGameSystemBinaryFile
    {
        private static string settingsSaveFileName = "settings21.dat";

        public static void SaveSettingsData(RR_SettingsSave settingsSaveRef)
        {
            BinaryFormatter formatter = new BinaryFormatter();
            string path = Application.persistentDataPath + "/" + settingsSaveFileName;
            FileStream stream = new FileStream(path, FileMode.Create);
            SettingsDataClass settingsDataClassObject = new SettingsDataClass(settingsSaveRef);
            formatter.Serialize(stream, settingsDataClassObject);
            stream.Close();
        }

        public static SettingsDataClass LoadSettingsData()
        {
            string path = Application.persistentDataPath + "/" + settingsSaveFileName;
            if (File.Exists(path))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                FileStream stream = new FileStream(path, FileMode.Open);
                SettingsDataClass settingsDataClassObject = formatter.Deserialize(stream) as SettingsDataClass;
                stream.Close();
                return settingsDataClassObject;
            }
            else
                return null;
        }


        private static string playerSkinInventorySaveFileName = "ianventory45.dat";

        public static void SavePlayerSkinInventoryData(InventoryPlayerSkinSave inventoryPlayerSkinSaveRef)
        {
            BinaryFormatter formatter = new BinaryFormatter();
            string path = Application.persistentDataPath + "/" + playerSkinInventorySaveFileName;
            FileStream stream = new FileStream(path, FileMode.Create);
            InventoryPlayerSkinDataClass inventoryPlayerSkinDataClassObject =
                new InventoryPlayerSkinDataClass(inventoryPlayerSkinSaveRef);
            formatter.Serialize(stream, inventoryPlayerSkinDataClassObject);
            stream.Close();
        }


        public static InventoryPlayerSkinDataClass LoadPlayerSkinInventoryData()
        {
            string path = Application.persistentDataPath + "/" + playerSkinInventorySaveFileName;
            if (File.Exists(path))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                FileStream stream = new FileStream(path, FileMode.Open);
                InventoryPlayerSkinDataClass inventoryPlayerSkinDataClassObject =
                    formatter.Deserialize(stream) as InventoryPlayerSkinDataClass;
                stream.Close();
                return inventoryPlayerSkinDataClassObject;
            }
            else
                return null;
        }


        private static string playerStatsSaveFileName = "statsaac.dat";

        public static void SaveStatisticsData(RR_StatisticsSave statisticsSaveRef)
        {
            BinaryFormatter formatter = new BinaryFormatter();
            string path = Application.persistentDataPath + "/" + playerStatsSaveFileName;
            FileStream stream = new FileStream(path, FileMode.Create);
            StatisticsDataClass statisticsDataClassObject = new StatisticsDataClass(statisticsSaveRef);
            formatter.Serialize(stream, statisticsDataClassObject);
            stream.Close();
        }


        public static StatisticsDataClass LoadStatisticsData()
        {
            string path = Application.persistentDataPath + "/" + playerStatsSaveFileName;
            if (File.Exists(path))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                FileStream stream = new FileStream(path, FileMode.Open);
                StatisticsDataClass statisticsDataClassObject = formatter.Deserialize(stream) as StatisticsDataClass;
                stream.Close();
                return statisticsDataClassObject;
            }
            else
                return null;
        }
    }
}