
using UnityEngine;
using UnityEngine.EventSystems;



namespace c21_HighwayDriver
{
    public class RR_HoldButton : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
    {
        public bool isPressing = false;
        public float buttonInput;
        public float buttonSensitivity;
        public bool enablePressing;



        private void Start()
        {
            buttonSensitivity = 1;
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
            isPressing = false;
        }



        private void Update()
        {
            if (isPressing && enablePressing)
            {
                buttonInput += Time.deltaTime * buttonSensitivity;
            }
            else
            {
                buttonInput -= Time.deltaTime * buttonSensitivity;
            }
            buttonInput = Mathf.Clamp(buttonInput, 0, 1);
        }
    }
}