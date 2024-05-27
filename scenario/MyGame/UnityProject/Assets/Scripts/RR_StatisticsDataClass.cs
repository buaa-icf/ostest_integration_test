


namespace c21_HighwayDriver
{
    [System.Serializable]
    public class StatisticsDataClass
    {
        private int gamesPlayed;
        private int lastScore;
        private int bestScore;
        private int totalScore;
        private int averageScore;
        private int totalCoins;
        private int lastCoins;


        public StatisticsDataClass(RR_StatisticsSave statisticsSaveRef)
        {
            gamesPlayed = statisticsSaveRef.GetGamesPlayed();
            lastScore = statisticsSaveRef.GetLastScore();
            bestScore = statisticsSaveRef.GetBestScore();
            totalScore = statisticsSaveRef.GetTotalScore();
            averageScore = statisticsSaveRef.GetAverageScore();
            totalCoins = statisticsSaveRef.GetTotalCoins();
            lastCoins = statisticsSaveRef.GetLastCoins();
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