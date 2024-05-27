
using UnityEngine;
using UnityEngine.EventSystems;



namespace c21_HighwayDriver
{
    public class RR_VehicleSoundController : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
    {
        private float changeAccelarationSensibility;
        private float accelarationVoume;
        private float minAccelarationVoume;
        private float maxAccelarationVoume;

        private bool isPressing;



        private void Start()
        {
            changeAccelarationSensibility = 3f;
            accelarationVoume = 0.21f;
            minAccelarationVoume = 0.21f;
            maxAccelarationVoume = 0.84f;
        }



        public void OnPointerDown(PointerEventData eventData)
        {
            isPressing = true;
        }



        public void OnPointerUp(PointerEventData eventData)
        {
            isPressing = false;

        }



        private void OnDisable()
        {
            RR_AudioManager.AudioManagerInstance.soundsArray[5].volume = 0.21f;

            isPressing = false;
        }



        private void FixedUpdate()
        {
            if (isPressing)
            {
                accelarationVoume += Time.deltaTime * changeAccelarationSensibility;
            }
            else
            {
                accelarationVoume -= Time.deltaTime * changeAccelarationSensibility;
            }

            accelarationVoume = Mathf.Clamp(accelarationVoume, minAccelarationVoume, maxAccelarationVoume);
            RR_AudioManager.AudioManagerInstance.soundsArray[5].volume = accelarationVoume;
        }
    }
}
