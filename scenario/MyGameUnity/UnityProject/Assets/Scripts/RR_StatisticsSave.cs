
using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_StatisticsSave : MonoBehaviour
    {
        private int gamesPlayed;
        private int lastScore;
        private int bestScore;
        private int totalScore;
        private int averageScore;
        private int totalCoins;
        private int lastCoins;



        public void SaveStatisticsDataFunction()
        {
            RR_SaveGameSystemBinaryFile.SaveStatisticsData(this);
        }



        public void LoadStatisticsDataFunction()
        {
            StatisticsDataClass statisticsDataClassRef = RR_SaveGameSystemBinaryFile.LoadStatisticsData();
            if (statisticsDataClassRef == null)
            {
                gamesPlayed = 0;
                lastScore = 0;
                bestScore = 0;
                totalScore = 0;
                averageScore = 0;
                totalCoins = 210;
                lastCoins = 0;
            }
            else
            {
                gamesPlayed = statisticsDataClassRef.GetGamesPlayed();
                lastScore = statisticsDataClassRef.GetLastScore();
                bestScore = statisticsDataClassRef.GetBestScore();
                totalScore = statisticsDataClassRef.GetTotalScore();
                averageScore = statisticsDataClassRef.GetAverageScore();
                totalCoins = statisticsDataClassRef.GetTotalCoins();
                lastCoins = statisticsDataClassRef.GetLastCoins();
            }
        }



        public void SetGamesPlayed(int gamesPlayed)
        {
            this.gamesPlayed = gamesPlayed;
        }


        public void SetLastScore(int lastScore)
        {
            this.lastScore = lastScore;
        }


        public void SetBestScore(int bestScore)
        {
            this.bestScore = bestScore;
        }


        public void SetTotalScore(int totalScore)
        {
            this.totalScore = totalScore;
        }


        public void SetAverageScore(int averageScore)
        {
            this.averageScore = averageScore;
        }


        public void SetTotalCoins(int totalCoins)
        {
            this.totalCoins = totalCoins;
        }


        public void SetLastCoins(int lastCoins)
        {
            this.lastCoins = lastCoins;
        }



        public int GetGamesPlayed()
        {
            return gamesPlayed;
        }


        public int GetLastScore()
        {
            return lastScore;
        }


        public int GetBestScore()
        {
            return bestScore;
        }


        public int GetTotalScore()
        {
            return totalScore;
        }


        public int GetAverageScore()
        {
            return averageScore;
        }


        public int GetTotalCoins()
        {
            return totalCoins;
        }


        public int GetLastCoins()
        {
            return lastCoins;
        }
    }
}