using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_VehicleController : MonoBehaviour
    {
        public enum ControlType
        {
            Buttons,
            Keyboard
        }

        public ControlType controlType;


        [Space(10)] public RR_HoldButton acceleration;
        public RR_HoldButton brake;
        public RR_HoldButton turnL;
        public RR_HoldButton turnR;

        // 加速度计滤波器参数
        float accelerometerUpdateInterval = 1.0f / 60.0f;
        float lowPassKernelWidthInSeconds = 0.01f;
        private float lowPassFilterFactor;
        private Vector3 lowPassValue = Vector3.zero;

        private RR_RotateWheelsPlayerVehicle[] rotateWheelsArray;

        private float rotateBy;

        private float idealMovementSpeed; // 无输入时车辆保持的速度
        private float decreaseMovementSpeedBy;
        private float increaseMovementSpeedBy;
        private float speedSensibility; // 加速快慢

        private int maxRotationAngle;
        private float movementSpeed;
        private float sideMovementDistance;

        private float movementFactor;
        public float rotationFactor;

        private bool enablePlay;
        private bool enableControls;
        private bool enableIncreaseStartupSpeed;

        private RR_SettingsSave settingsSave;


        private void OnEnable()
        {
            rotateBy = 0f;
            maxRotationAngle = 15;
            sideMovementDistance = 2.25f;

            speedSensibility = 3f;

            movementSpeed = 0f;
            idealMovementSpeed = 0f;
            decreaseMovementSpeedBy = 5f;
            increaseMovementSpeedBy = 5f;

            enablePlay = false;

            enableControls = false;
            enableIncreaseStartupSpeed = false;

            acceleration.enablePressing = true;
            brake.enablePressing = true;

            settingsSave = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<RR_SettingsSave>();
        }


        private void Start()
        {
            rotateWheelsArray = GetComponentsInChildren<RR_RotateWheelsPlayerVehicle>();

            // 加速度计低通滤波
            lowPassFilterFactor = accelerometerUpdateInterval / lowPassKernelWidthInSeconds;
            lowPassValue = Input.acceleration;
        }


        public void Play()
        {
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetEngineStartSound());
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());
            enableIncreaseStartupSpeed = true;
            enablePlay = true;
            enableControls = true;
        }


        public void StopPlay()
        {
            enablePlay = false;
            enableControls = false;
        }

        public void Reset()
        {
            rotateBy = 0f;
            maxRotationAngle = 15;
            sideMovementDistance = 2.25f;

            speedSensibility = 3f;

            // movementSpeed = 0f;
            // idealMovementSpeed = 0f;
            idealMovementSpeed *= 2f;
            decreaseMovementSpeedBy = 10f;
            increaseMovementSpeedBy = 15f;

            acceleration.enablePressing = true;
            brake.enablePressing = true;

            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                .GetEngineStartSound());
            RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());
            enableIncreaseStartupSpeed = false;
            enablePlay = true;
            enableControls = true;
        }


        private void Update()
        {
            if (enablePlay)
            {
                if (controlType == ControlType.Buttons)
                {
                    // 加速度计低通滤波
                    lowPassValue = Vector3.Lerp(lowPassValue, Input.acceleration, lowPassFilterFactor);
                    var xAcc = lowPassValue.x;

                    movementFactor = 1;
                    {
                        if (rotationFactor == 0)
                        {
                            turnL.enablePressing = true;
                            turnR.enablePressing = true;
                        }
                        else if (rotationFactor < 0)
                        {
                            turnL.enablePressing = true;
                            turnR.enablePressing = false;
                        }
                        else if (rotationFactor > 0)
                        {
                            turnL.enablePressing = false;
                            turnR.enablePressing = true;
                        }

                        if (turnL.isPressing && movementFactor > 0 && rotationFactor <= 0)
                        {
                            turnL.buttonSensitivity = 1f;
                            rotationFactor = -turnL.buttonInput;
                        }
                        else if (turnR.isPressing && movementFactor > 0 && rotationFactor >= 0)
                        {
                            turnR.buttonSensitivity = 1f;
                            rotationFactor = turnR.buttonInput;
                        }

                        if (xAcc > 0 && settingsSave.GetAcceleratorOnBool())
                        {
                            turnL.buttonSensitivity = 1f;
                            rotationFactor = -xAcc * 100f;
                        }
                        else if (xAcc < 0 && settingsSave.GetAcceleratorOnBool())
                        {
                            turnR.buttonSensitivity = 1f;
                            rotationFactor = -xAcc * 100f;
                        }
                        else
                        {
                            if (rotationFactor < 0)
                            {
                                turnL.buttonSensitivity = 2f;
                                rotationFactor = -turnL.buttonInput;
                            }
                            else if (rotationFactor > 0)
                            {
                                turnR.buttonSensitivity = 2f;
                                rotationFactor = turnR.buttonInput;
                            }
                        }
                    }
                }
                else if (controlType == ControlType.Keyboard)
                {
                    for (int index = 0; index < rotateWheelsArray.Length; index++)
                    {
                        if (movementFactor != 0)
                        {
                            rotateWheelsArray[index].SetEnableRotation(true);
                        }
                        else
                        {
                            rotateWheelsArray[index].SetEnableRotation(false);
                        }
                    }

                    movementSpeed = idealMovementSpeed + (increaseMovementSpeedBy * Input.GetAxis("Vertical"));


                    rotationFactor = Input.GetAxis("Horizontal");
                }
            }
        }


        private void FixedUpdate()
        {
            if (enablePlay && controlType == ControlType.Buttons)
            {
                MovePlayer();
            }
            else if (enablePlay && controlType == ControlType.Keyboard)
            {
                MoveVehicle();
            }

            TurnVehicle();
            ClampVehiclePosition();
            ClampVehicleRotation();
        }

        private void MovePlayer()
        {
            Vector3 moveVector = Vector3.zero;

            if (enableControls)
            {
                if (acceleration.isPressing && brake.isPressing == false)
                {
                    movementSpeed = idealMovementSpeed + increaseMovementSpeedBy * acceleration.buttonInput;
                }
                else if (brake.isPressing && acceleration.isPressing == false)
                {
                    movementSpeed = idealMovementSpeed - decreaseMovementSpeedBy * brake.buttonInput;
                    if (movementSpeed <= 0)
                    {
                        movementSpeed = 0;
                    }
                }
                else
                {
                    if (movementSpeed > idealMovementSpeed)
                    {
                        movementSpeed = idealMovementSpeed + increaseMovementSpeedBy * acceleration.buttonInput;

                        if (movementSpeed <= idealMovementSpeed)
                        {
                            movementSpeed = idealMovementSpeed;
                        }
                    }
                    else if (movementSpeed < idealMovementSpeed)
                    {
                        movementSpeed = idealMovementSpeed - decreaseMovementSpeedBy * brake.buttonInput;

                        if (movementSpeed >= idealMovementSpeed)
                        {
                            movementSpeed = idealMovementSpeed;
                        }
                    }
                }
            }

            if (enableIncreaseStartupSpeed)
            {
                idealMovementSpeed += Time.fixedDeltaTime * speedSensibility;

                if (idealMovementSpeed >= 10)
                {
                    idealMovementSpeed = 10;

                    enableIncreaseStartupSpeed = false;
                }
            }

            moveVector.z = movementSpeed;
            transform.Translate(moveVector * Time.fixedDeltaTime);
        }


        void MoveVehicle()
        {
            if (enablePlay)
            {
                var moveVector = Vector3.zero;
                moveVector.z = movementSpeed;
                transform.Translate(moveVector * Time.fixedDeltaTime);
            }

            if (enableIncreaseStartupSpeed && movementSpeed < idealMovementSpeed)
            {
                movementSpeed += Time.fixedDeltaTime * speedSensibility;

                if (movementSpeed >= idealMovementSpeed)
                {
                    movementSpeed = idealMovementSpeed;
                    enableIncreaseStartupSpeed = false;
                    enableControls = true;
                }
            }
        }


        private void TurnVehicle()
        {
            rotateBy = maxRotationAngle * rotationFactor * movementSpeed /
                (idealMovementSpeed + increaseMovementSpeedBy) * 1.5f;
            transform.rotation = Quaternion.AngleAxis(rotateBy, Vector3.up);
        }


        private void ClampVehiclePosition()
        {
            var pos = transform.position;
            pos.x = Mathf.Clamp(transform.position.x, -sideMovementDistance, sideMovementDistance);
            transform.position = pos;
        }


        private void ClampVehicleRotation()
        {
            rotateBy = Mathf.Clamp(rotateBy, -maxRotationAngle, maxRotationAngle);
        }


        public float GetMovementSpeed()
        {
            return movementSpeed;
        }

        public void SlowDown()
        {
            movementSpeed = 0;
            idealMovementSpeed -= 2f;
            increaseMovementSpeedBy -= 2f;
            if (idealMovementSpeed <= 2)
            {
                idealMovementSpeed = 2f;
            }
            if (increaseMovementSpeedBy <= 2)
            {
                increaseMovementSpeedBy = 2f;
            }
        }

        public void SpeedUp()
        {
            idealMovementSpeed += 3f;
            increaseMovementSpeedBy += 3f;
            idealMovementSpeed = Mathf.Clamp(idealMovementSpeed, 0, 10);
        }
    }
}