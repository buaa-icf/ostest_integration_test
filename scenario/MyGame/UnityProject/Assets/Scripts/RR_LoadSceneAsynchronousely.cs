using System.Collections;
using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_LoadSceneAsynchronousely : MonoBehaviour
    {
        private int levelToLoadIndex;

        private RR_FadeControllerBetweenSceneTransition FadeControllerBetweenSceneTransitionRef;


        private void Awake()
        {
            FadeControllerBetweenSceneTransitionRef = GetComponent<RR_FadeControllerBetweenSceneTransition>();
        }


        /**
         * 加载指定场景
         */
        public void LoadLevelFunction(int levelToLoadIndex)
        {
            Time.timeScale = 1;
            this.levelToLoadIndex = levelToLoadIndex;
            FadeControllerBetweenSceneTransitionRef.FadeToLevel();
        }


        public void StartLoadSceneAsynchronouslyCoroutine()
        {
            StartCoroutine(LoadSceneAsynchronously(levelToLoadIndex));
        }


        private IEnumerator LoadSceneAsynchronously(int sceneIndex)
        {
            AsyncOperation asyncOperation = UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneIndex);
            while (!asyncOperation.isDone)
            {
                yield return null;
            }
        }
    }
}