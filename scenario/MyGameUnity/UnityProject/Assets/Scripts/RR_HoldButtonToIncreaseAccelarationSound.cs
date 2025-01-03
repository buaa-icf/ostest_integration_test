
using UnityEngine;
using UnityEngine.EventSystems;




namespace c21_HighwayDriver
{
    public class RR_HoldButtonToIncreaseAccelarationSound : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
    {
        private float changeAccelarationSensibility;
        private float accelarationPitch;
        private float minAccelarationPitch;
        private float maxAccelarationPitch;

        private bool isPressing;



        private void Start()
        {
            changeAccelarationSensibility = 3f;
            accelarationPitch = 1f;
            minAccelarationPitch = 1f;
            maxAccelarationPitch = 3f;
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
            RR_AudioManager.AudioManagerInstance.soundsArray[6].pitch = 1f;

            isPressing = false;
        }



        private void FixedUpdate()
        {
            if (isPressing)
            {
                accelarationPitch += Time.deltaTime * changeAccelarationSensibility;
            }
            else
            {
                accelarationPitch -= Time.deltaTime * changeAccelarationSensibility;
            }

            accelarationPitch = Mathf.Clamp(accelarationPitch, minAccelarationPitch, maxAccelarationPitch);
            RR_AudioManager.AudioManagerInstance.soundsArray[6].pitch = accelarationPitch;
        }
    }
}