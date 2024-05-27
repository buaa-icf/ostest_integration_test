using System.Collections;
using c21_HighwayDriver;
using UnityEngine;


namespace c21_HighwayDriver
{
    public class RR_VehicleCrash : MonoBehaviour
    {
        public bool enableCrashBool;
        public int collisionCount;

        private float explosionRadius;
        private float explosionForce;
        public Rigidbody[] rigidbodys;

        public GameObject ExplosionParticleSystem;

        private RR_VehicleController vehicleController;
        private RR_SettingsSave settingsSave;
        private RR_GameManager gameManager;
        private RR_TrafficVehicleSpawnerL trafficVehicleSpawnerLane1;
        private RR_TrafficVehicleSpawnerL trafficVehicleSpawnerLane2;
        private RR_NetworkManager networkManager;
        // private RR_AudioManager audioManager;
        private Animator collisionAnimator;


        private void Awake()
        {
            GetReferences();
        }


        private void GetReferences()
        {
            vehicleController = GetComponent<RR_VehicleController>();
            settingsSave = GameObject.FindGameObjectWithTag("SaveManager").GetComponent<RR_SettingsSave>();
            gameManager = GameObject.FindGameObjectWithTag("GameManager").GetComponent<RR_GameManager>();
            networkManager = GameObject.FindGameObjectWithTag("NetworkManager").GetComponent<RR_NetworkManager>();
            collisionAnimator = GetComponent<Animator>();
            // audioManager = GameObject.FindGameObjectWithTag("AudioManager").GetComponent<RR_AudioManager>();
            // trafficVehicleSpawnerLane1 = GameObject.FindGameObjectWithTag("TrafficSpawner01")
            //     .GetComponent<RR_TrafficVehicleSpawnerL>();
            // trafficVehicleSpawnerLane2 = GameObject.FindGameObjectWithTag("TrafficSpawner02")
            //     .GetComponent<RR_TrafficVehicleSpawnerL>();
        }


        private void Start()
        {
            explosionRadius = 210f;
            explosionForce = 180f;
            enableCrashBool = true;
            collisionCount = 0;
        }


        private void OnCollisionEnter(Collision collision)
        {
            if (collision.gameObject.tag == "Obstacle")
            {
                // 碰撞动画
                collisionAnimator.SetTrigger("CollisionTrigger");

                if (gameManager.inMultiplayerGamePlayPanel)
                {
                    networkManager.Collision();
                }

                collisionCount++;
                vehicleController.SlowDown();

                // 被碰撞车辆的效果
                var collisionObject = collision.gameObject;
                var collisionObjectRigidbody = collisionObject.GetComponent<Rigidbody>();
                collisionObjectRigidbody.useGravity = true;
                collisionObjectRigidbody.AddExplosionForce(explosionForce, transform.position, explosionRadius, 0);

                // 碰撞语音
                RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                    .GetRandomCollisionVoice());

                // 碰撞次数达到5次，车辆爆炸
                if (enableCrashBool && collisionCount == 5)
                {
                    if (gameManager.inMultiplayerGamePlayPanel)
                    {
                        networkManager.Crash();
                    }
                    RR_AudioManager.AudioManagerInstance.StopAudio(
                        RR_AudioManager.AudioManagerInstance.GetEngineIdleSound());

                    RR_AudioManager.AudioManagerInstance.PlayAudio(
                        RR_AudioManager.AudioManagerInstance.GetCrashSound());
                    RR_AudioManager.AudioManagerInstance.PlayAudio(RR_AudioManager.AudioManagerInstance
                        .GetGameOverVoice());


                    gameObject.GetComponent<RR_VehicleController>().enabled = false;


                    if (settingsSave.GetVibrationOnBool())
                    {
                        Handheld.Vibrate();
                    }

                    enableCrashBool = false;
                    if (gameManager.inMultiplayerGamePlayPanel)
                    {
                        gameManager.ShowGameOverPanel("你输掉了比赛！");
                    }
                    else
                    {
                        gameManager.ShowGameOverPanel();
                    }
                    vehicleController.StopPlay();
                    // trafficVehicleSpawnerLane1.StopPlay();
                    // trafficVehicleSpawnerLane2.StopPlay();
                    ExplosionParticleSystem.SetActive(true);
                    Exploder();
                }
            }
        }


        private void Exploder()
        {
            for (int index = 0; index < rigidbodys.Length; index++)
            {
                rigidbodys[index].constraints = RigidbodyConstraints.None;
                rigidbodys[index].isKinematic = false;
                rigidbodys[index].AddExplosionForce(explosionForce, transform.position - new Vector3(0, 0, 0),
                    explosionRadius, 0);
            }
        }
    }
}