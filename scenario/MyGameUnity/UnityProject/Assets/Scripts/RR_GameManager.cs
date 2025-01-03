using System;
using c21_HighwayDriver;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.UI;


namespace c21_HighwayDriver
{
    public class RR_GameManager : MonoBehaviour
    {
        [Header("Panels")] [Space(10)] public GameObject menuPanel;
        public GameObject settingsPanel;
        public GameObject pausePanel;
        public GameObject playPanel;
        public GameObject quitPanel;
        public GameObject levelCompletePanel;
        public GameObject gameOverPanel;
        public GameObject shopPanel;

        // menuPanel
        [Header("Texts")] [Space(10)] public Text lastScoreText;
        public Text bestScoreText;
        public Text coinsText;

        // playPanel
        [Space(10)] public Text scoreCounterText;
        public Text gameTimeText;
        public Button turnLButton;
        public Button turnRButton;

        // levelCompletePanel
        [Space(10)] public Text levelCompleteCurrentLevelText;
        public Text levelCompleteDistanceText;
        public Text levelCompleteTimeText;
        public Text levelCompleteCoinsText;

        // gameOverPanel
        [Space(10)] public Text gameOverCurrentLevelText;
        public Text gameOverDistanceText;
        public Text gameOverTimeText;
        public Text gameOverCoinsText;

        // 面板显示状态
        public bool inPlayPanel;
        public bool inMultiplayerGamePlayPanel;
        private bool inMenuPanel;
        private bool inQuitPanel;
        public bool inPausePanel;
        public bool inSettingsPanel;
        public bool inGameOverPanel;
        public bool inLevelCompletePanel;
        public bool inShopPanel;

        // 关卡
        private int totalLevels;
        private int currentLevel;
        private int[] targetScoreArray;
        private int multiplayerTargetScore;

        // 计分器
        private int scoreCounter;
        private int coinCounter;
        private int totalCoins;

        // 游戏已进行的时间
        private float gameTime;

        // 是否启动缓慢暂停
        private bool enableSmoothPause;

        public Text statusText;

        public Slider distanceSlider;
        public Slider healthSlider;
        public Slider rivalHealthSlider;

        private Transform player;
        private RR_LoadSceneAsynchronousely loadSceneAsynchronousely;
        private RR_CameraLookAtMovement cameraLookAtMovement;
        private RR_StatisticsSave statisticsSave;
        private RR_ShopManager shopManager;
        private RR_CameraFollow cameraFollow;
        private RR_TrafficVehicleAutoMove[] trafficVehiclesAutoMove;
        private RR_VehicleController vehicleController;
        private RR_VehicleCrash vehicleCrash;
        private RR_NetworkManager networkManager;
        private RR_SettingsManager settingsManager;
        private RR_RandomSkybox randomSkybox;

        [Space(10)] public RR_TrafficManagerMovement trafficManagerMovement;
        private GameObject trafficSpawner01;
        private GameObject trafficSpawner02;


        /**
         * 获取脚本、组件的引用
         */
        private void GetReferences()
        {
            loadSceneAsynchronousely = GameObject.FindGameObjectWithTag("FadeImage")
                .GetComponent<RR_LoadSceneAsynchronousely>();
            cameraLookAtMovement = GameObject.FindGameObjectWithTag("CameraLookAt")
                .GetComponent<RR_CameraLookAtMovement>();
            cameraFollow = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<RR_CameraFollow>();
            statisticsSave = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<RR_StatisticsSave>();
            vehicleController = GameObject.FindGameObjectWithTag("Player").GetComponent<RR_VehicleController>();
            vehicleCrash = GameObject.FindGameObjectWithTag("Player").GetComponent<RR_VehicleCrash>();
            shopManager = GameObject.FindGameObjectWithTag("ShopManager").GetComponent<RR_ShopManager>();
            networkManager = GameObject.FindGameObjectWithTag("NetworkManager").GetComponent<RR_NetworkManager>();
            settingsManager = GameObject.FindGameObjectWithTag("SettingsManager").GetComponent<RR_SettingsManager>();
            randomSkybox = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<RR_RandomSkybox>();

            trafficSpawner01 = GameObject.FindGameObjectWithTag("TrafficSpawner01");
            trafficSpawner02 = GameObject.FindGameObjectWithTag("TrafficSpawner02");

            var temp = GameObject.FindGameObjectsWithTag("TrafficOutVehicle");

            trafficVehiclesAutoMove = new RR_TrafficVehicleAutoMove[temp.Length];

            for (var index = 0; index < temp.Length; index++)
            {
                trafficVehiclesAutoMove[index] = temp[index].GetComponent<RR_TrafficVehicleAutoMove>();
            }
        }


        /**
         * 游戏开始时获取已保存的统计数据
         */
        void SetStatsAtStart()
        {
            statisticsSave.LoadStatisticsDataFunction();
            var bestScore = statisticsSave.GetBestScore();
            var lastScore = statisticsSave.GetLastScore();
            totalCoins = statisticsSave.GetTotalCoins();

            bestScoreText.text = "最高里程数：" + bestScore.ToString();
            lastScoreText.text = "上次里程数：" + lastScore.ToString();
            coinsText.text = totalCoins.ToString();
        }


        private void Start()
        {
            // 设置关卡和目标分数
            totalLevels = 2;
            currentLevel = 0;
            targetScoreArray = new int[totalLevels];
            targetScoreArray[0] = 80;
            targetScoreArray[1] = 250;
            gameTime = 0;
            multiplayerTargetScore = 100;

            GetReferences();

            SetStatsAtStart();

            trafficSpawner01.gameObject.SetActive(true);
            trafficSpawner02.gameObject.SetActive(false);

            rivalHealthSlider.gameObject.SetActive(false);

            // 设置面板状态
            inMenuPanel = true;

            // if (enablePlayNewFromGameOverPanel)
            // {
            //     PlayFunction();
            // }
        }

        /**
         * 不同面板下的按键监听
         */
        private void Update()
        {
            if (enableSmoothPause)
            {
                if (Time.timeScale < 0.3f)
                {
                    enableSmoothPause = false;
                    Time.timeScale = 0;
                }
                else
                {
                    Time.timeScale = Mathf.Lerp(Time.timeScale, 0, Time.unscaledDeltaTime);
                }
            }

            if (inMenuPanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    QuitGameFunction();
                }
            }
            else if (inSettingsPanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    ExitSettingsPanel();
                }
            }
            else if (inQuitPanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    QuitNoButtonFunction();
                }
            }
            else if (inPlayPanel)
            {
                // 进度条
                if (currentLevel == 0)
                {
                    distanceSlider.value = (float)scoreCounter / targetScoreArray[currentLevel];
                }
                else
                {
                    distanceSlider.value = ((float)scoreCounter - targetScoreArray[currentLevel - 1]) /
                                           (targetScoreArray[currentLevel] - targetScoreArray[currentLevel - 1]);
                }

                healthSlider.value = 1 - vehicleCrash.collisionCount / 5f;

                if (scoreCounter < targetScoreArray[currentLevel])
                {
                    // 游戏时间（MM:SS:MS）
                    gameTime += Time.deltaTime;
                    var minutes = Mathf.Floor(gameTime / 60);
                    var seconds = Mathf.Floor(gameTime % 60);
                    var milliseconds = Mathf.Floor((gameTime * 100) % 100);
                    gameTimeText.text = string.Format("{0:00}:{1:00}:{2:00}", minutes, seconds, milliseconds);

                    // 未达到目标分数，根据里程更新分数
                    scoreCounter = Mathf.RoundToInt(player.position.z);
                    scoreCounterText.text = "行驶里程数：" + scoreCounter;
                }
                else
                {
                    // 达到目标分数，显示关卡完成或游戏结束面板
                    if (currentLevel < totalLevels - 1)
                    {
                        ShowLevelCompletePanel();
                        vehicleCrash.enableCrashBool = false;
                    }
                    else
                    {
                        ShowGameOverPanel();
                    }
                }

                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    Pause();
                }
            }
            else if (inMultiplayerGamePlayPanel)
            {
                // 进度条
                distanceSlider.value = float.Parse(scoreCounterText.text) / multiplayerTargetScore;
                healthSlider.value = 1 - vehicleCrash.collisionCount / 5f;
                rivalHealthSlider.value = 1 - networkManager.rivalCollisionCount / 5f;

                if (scoreCounter < multiplayerTargetScore)
                {
                    // 游戏时间（MM:SS:MS）
                    gameTime += Time.deltaTime;
                    var minutes = Mathf.Floor(gameTime / 60);
                    var seconds = Mathf.Floor(gameTime % 60);
                    var milliseconds = Mathf.Floor((gameTime * 100) % 100);
                    gameTimeText.text = string.Format("{0:00}:{1:00}:{2:00}", minutes, seconds, milliseconds);

                    // 未达到目标分数，根据里程更新分数
                    scoreCounter = Mathf.RoundToInt(player.position.z);
                    scoreCounterText.text = "行驶里程数：" + scoreCounter;
                }
                else
                {
                    // 达到目标分数，显示游戏结束面板
                    ShowGameOverPanel();
                    networkManager.Complete();
                }
            }
            else if (inPausePanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    ResumeFunction();
                }
            }
            else if (inLevelCompletePanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    NextLevelFunction();
                }
            }
            else if (inGameOverPanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    MenuFunction();
                }
            }
            else if (inShopPanel)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    ExitShopPanel();
                }
            }
        }


        void SaveStats()
        {
            if (scoreCounter > statisticsSave.GetBestScore())
            {
                statisticsSave.SetBestScore(scoreCounter);
            }

            statisticsSave.SetLastScore(scoreCounter);
            statisticsSave.SetLastCoins(coinCounter);
            statisticsSave.SetTotalCoins(coinCounter + totalCoins);
            statisticsSave.SaveStatisticsDataFunction();
        }


        public void PlayFunction()
        {
            // 设置面板状态
            inMenuPanel = false;
            inPlayPanel = true;
            menuPanel.SetActive(false);
            playPanel.SetActive(true);
            if (settingsManager.accMeterOnBool)
            {
                turnLButton.gameObject.SetActive(false);
                turnRButton.gameObject.SetActive(false);
            }
            else
            {
                turnLButton.gameObject.SetActive(true);
                turnRButton.gameObject.SetActive(true);
            }
            statusText.text = "";

            SetStatsAtStart();

            networkManager.StopReceiving();
            networkManager.StopSending();

            foreach (var temp in trafficVehiclesAutoMove)
            {
                temp.enableAutoTrafficMove = true;
            }

            trafficSpawner01.gameObject.SetActive(true);
            trafficSpawner02.gameObject.SetActive(false);
            trafficSpawner01.GetComponent<RR_TrafficVehicleSpawnerL>().Play();
            trafficManagerMovement.Play();
            cameraLookAtMovement.Play();

            player = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
            vehicleController.Play();

            RR_RotateWheelsPlayerVehicle[] rotateWheelsPlayerVehicle = GameObject.FindGameObjectWithTag("Player")
                .GetComponentsInChildren<RR_RotateWheelsPlayerVehicle>();

            for (var index = 0; index < rotateWheelsPlayerVehicle.Length; index++)
            {
                rotateWheelsPlayerVehicle[index].Play();
            }

            for (var index = 0; index < trafficVehiclesAutoMove.Length; index++)
            {
                trafficVehiclesAutoMove[index].Play();
            }

            cameraFollow.Play();
        }

        public void MultiplayerGameFunction()
        {
            if (inPlayPanel || inMultiplayerGamePlayPanel)
            {
                return;
            }

            rivalHealthSlider.gameObject.SetActive(true);
            networkManager.StartGame();
            inMultiplayerGamePlayPanel = true;

            // 设置面板状态
            inMenuPanel = false;
            inPlayPanel = true;
            menuPanel.SetActive(false);
            playPanel.SetActive(true);
            if (settingsManager.accMeterOnBool)
            {
                turnLButton.gameObject.SetActive(false);
                turnRButton.gameObject.SetActive(false);
            }
            else
            {
                turnLButton.gameObject.SetActive(true);
                turnRButton.gameObject.SetActive(true);
            }
            statusText.text = "";

            SetStatsAtStart();

            foreach (var temp in trafficVehiclesAutoMove)
            {
                temp.enableAutoTrafficMove = true;
            }

            trafficSpawner01.gameObject.SetActive(true);
            trafficSpawner02.gameObject.SetActive(false);
            trafficSpawner01.GetComponent<RR_TrafficVehicleSpawnerL>().Play();
            trafficManagerMovement.Play();
            cameraLookAtMovement.Play();

            player = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
            vehicleController.Play();

            RR_RotateWheelsPlayerVehicle[] rotateWheelsPlayerVehicle = GameObject.FindGameObjectWithTag("Player")
                .GetComponentsInChildren<RR_RotateWheelsPlayerVehicle>();

            for (var index = 0; index < rotateWheelsPlayerVehicle.Length; index++)
            {
                rotateWheelsPlayerVehicle[index].Play();
            }

            for (var index = 0; index < trafficVehiclesAutoMove.Length; index++)
            {
                trafficVehiclesAutoMove[index].Play();
            }

            cameraFollow.Play();
        }


        public void Pause()
        {
            if (inMultiplayerGamePlayPanel)
            {
                return;
            }

            // 设置面板状态
            inPlayPanel = false;
            inPausePanel = true;
            playPanel.SetActive(false);
            pausePanel.SetActive(true);

            Time.timeScale = 0;

            // 游戏中音效暂停
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());
            RR_AudioManager.AudioManagerInstance.PauseAudio(RR_AudioManager.AudioManagerInstance
                .GetEngineIdleSound());
        }

        public void ResumeFunction()
        {
            // 设置面板状态
            inPausePanel = false;
            inPlayPanel = true;
            pausePanel.SetActive(false);
            playPanel.SetActive(true);

            Time.timeScale = 1;

            // 游戏中音效恢复
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());
            RR_AudioManager.AudioManagerInstance.UnPauseAudio(
                RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());
        }


        public void ShowLevelCompletePanel()
        {
            // 设置面板状态
            inPlayPanel = false;
            inLevelCompletePanel = true;
            inMultiplayerGamePlayPanel = false;
            playPanel.SetActive(false);
            levelCompletePanel.SetActive(true);

            enableSmoothPause = true;

            // 设置面板上显示的统计数据
            SaveStats();
            levelCompleteCurrentLevelText.text = "第 " + (currentLevel + 1) + " 关";
            levelCompleteDistanceText.text = "行驶里程数：" + scoreCounter;
            levelCompleteTimeText.text = "所用时间：" + gameTimeText.text;
            levelCompleteCoinsText.text = coinCounter.ToString();

            // 游戏中音效暂停
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());
            RR_AudioManager.AudioManagerInstance.PauseAudio(RR_AudioManager.AudioManagerInstance
                .GetEngineIdleSound());
        }


        public void ShowGameOverPanel(string title = "")
        {
            // 设置面板状态
            inPlayPanel = false;
            inGameOverPanel = true;
            inMultiplayerGamePlayPanel = false;
            playPanel.SetActive(false);
            gameOverPanel.SetActive(true);

            enableSmoothPause = true;

            // 设置面板上显示的统计数据
            SaveStats();
            if (title == "")
            {
                gameOverCurrentLevelText.text = "第 " + (currentLevel + 1) + " 关";
            }
            else
            {
                gameOverCurrentLevelText.text = title;
            }

            gameOverDistanceText.text = "行驶里程数：" + scoreCounter;
            gameOverTimeText.text = "所用时间：" + gameTimeText.text;
            gameOverCoinsText.text = coinCounter.ToString();

            vehicleCrash.enableCrashBool = false;
        }


        public void MenuFunction()
        {
            // 设置面板状态
            inPlayPanel = false;
            inPausePanel = false;
            inMultiplayerGamePlayPanel = false;
            inLevelCompletePanel = false;
            inGameOverPanel = false;

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            SaveStats();

            loadSceneAsynchronousely.LoadLevelFunction(0);
        }

        public void NextLevelFunction()
        {
            currentLevel++;

            // 设置面板状态
            inLevelCompletePanel = false;
            inPlayPanel = true;
            levelCompletePanel.SetActive(false);
            playPanel.SetActive(true);

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            trafficSpawner02.gameObject.SetActive(true);
            trafficSpawner02.GetComponent<RR_TrafficVehicleSpawnerL>().Initialize();
            trafficSpawner02.GetComponent<RR_TrafficVehicleSpawnerL>().Play();

            // 继续游戏
            Time.timeScale = 1;

            vehicleCrash.enableCrashBool = true;
            vehicleController.Reset();

            randomSkybox.ChangeSkybox(true);
        }

        public void ReplayFunction()
        {
            // 设置面板状态
            inPlayPanel = false;
            inPausePanel = false;
            inGameOverPanel = false;

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            loadSceneAsynchronousely.LoadLevelFunction(0);
        }


        public void QuitGameFunction()
        {
            // 设置面板状态
            inMenuPanel = false;
            inQuitPanel = true;
            menuPanel.SetActive(false);
            quitPanel.SetActive(true);

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());
        }

        public void QuitYesButtonFunction()
        {
            inQuitPanel = false;

            Application.Quit();
        }

        public void QuitNoButtonFunction()
        {
            // 设置面板状态
            inQuitPanel = false;
            inMenuPanel = true;
            quitPanel.SetActive(false);
            menuPanel.SetActive(true);

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());
        }


        public void IncrementCoinCounter()
        {
            coinCounter++;
            vehicleCrash.collisionCount--;
            coinsText.text = (totalCoins + coinCounter).ToString();
        }

        public void DecrementCoinCounter()
        {
            coinCounter--;
            coinsText.text = (totalCoins + coinCounter).ToString();
        }


        public void ShowSettingsPanel()
        {
            inMenuPanel = false;
            inSettingsPanel = true;

            statusText.text = "";

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            menuPanel.SetActive(false);
            settingsPanel.SetActive(true);
        }


        public void ExitSettingsPanel()
        {
            inSettingsPanel = false;
            inMenuPanel = true;

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            settingsPanel.SetActive(false);
            menuPanel.SetActive(true);
        }


        public void ShowShopPanel()
        {
            inMenuPanel = false;
            inShopPanel = true;

            statusText.text = "";

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            menuPanel.SetActive(false);
            shopPanel.SetActive(true);
        }


        public void ExitShopPanel()
        {
            inShopPanel = false;
            inMenuPanel = true;

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetButtonClickSound());

            shopManager.EnablePurchasedPlayerFunction();
            shopManager.ResetData();
            shopPanel.SetActive(false);
            menuPanel.SetActive(true);
        }
    }
}