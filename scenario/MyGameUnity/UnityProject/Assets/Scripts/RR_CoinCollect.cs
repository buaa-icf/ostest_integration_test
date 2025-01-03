using UnityEngine;
using c21_HighwayDriver;


namespace c21_HighwayDriver
{
    public class RR_CoinCollect : MonoBehaviour
    {
        private RR_GameManager gameManager;


        private void Start()
        {
            gameManager = GameObject.FindGameObjectWithTag("GameManager").GetComponent<RR_GameManager>();
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.transform.CompareTag("Player"))
            {
                RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                    .GetCoinCollectedSound());
                gameManager.IncrementCoinCounter();
                gameObject.SetActive(false);
            }
        }
    }
}