using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_FadeControllerBetweenSceneTransition : MonoBehaviour
    {
        private Animator fadeAnimator;

        private RR_LoadSceneAsynchronousely LoadSceneAsynchronouselyRef;


        private void Awake()
        {
            fadeAnimator = GetComponent<Animator>();
            LoadSceneAsynchronouselyRef = GetComponent<RR_LoadSceneAsynchronousely>();
        }


        public void FadeToLevel()
        {
            fadeAnimator.SetTrigger("FadeOutTrigger");
        }


        public void OnFadeCompleteEventFunction()
        {
            LoadSceneAsynchronouselyRef.StartLoadSceneAsynchronouslyCoroutine();
        }
    }
}