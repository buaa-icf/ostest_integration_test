using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Net.Sockets;
using System.Net;
using System.Text;
using System;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine.UI;
using System.Linq;
using c21_HighwayDriver;

namespace c21_HighwayDriver
{
    public class RR_NetworkManager : MonoBehaviour
    {
        public Text statusText;
        public Button multiplayerGameButton;
        private bool discovered;
        public int rivalCollisionCount;

        // 组播
        private string multicastIP;
        public int port;

        // 发送
        private IPEndPoint sendMulticastIEP;
        private IPEndPoint[] sendIEPs;
        private UdpClient sendClient;

        // 接收
        private Thread receiveThread;
        private UdpClient receiveClient;
        private IPEndPoint receiveIEP;

        private IPAddress[] localIPs;
        private string status;

        private RR_GameManager gameManager;
        private RR_VehicleController vehicleController;

        private void Start()
        {
            gameManager = GameObject.FindGameObjectWithTag("GameManager").GetComponent<RR_GameManager>();
            vehicleController = GameObject.FindGameObjectWithTag("Player").GetComponent<RR_VehicleController>();

            localIPs = Dns.GetHostAddresses(Dns.GetHostName());
            multicastIP = "239.0.0.1";
            port = 8052;
            discovered = false;
            status = "寻找玩家中...";

            // 发送
            sendIEPs = Array.Empty<IPEndPoint>();
            sendMulticastIEP = new IPEndPoint(IPAddress.Parse(multicastIP), port);
            sendClient = new UdpClient();
            sendClient.EnableBroadcast = true;
            InvokeRepeating(nameof(Discover), 1, 1);

            // 接收
            receiveIEP = new IPEndPoint(IPAddress.Parse(multicastIP), port);
            receiveClient = new UdpClient(port);
            receiveClient.JoinMulticastGroup(IPAddress.Parse(multicastIP));
            receiveClient.MulticastLoopback = false;
            receiveThread = new Thread(new ThreadStart(ReceiveData));
            receiveThread.IsBackground = true;
            receiveThread.Start();
        }

        private void Update()
        {
            if (gameManager.inPlayPanel || gameManager.inPausePanel || gameManager.inSettingsPanel ||
                gameManager.inGameOverPanel || gameManager.inLevelCompletePanel || gameManager.inShopPanel)
            {
                return;
            }

            multiplayerGameButton.gameObject.SetActive(discovered);
            statusText.text = status;
        }

        private void OnDestroy()
        {
            StopSending();
            StopReceiving();
        }

        private void ReceiveData()
        {
            while (true)
            {
                try
                {
                    var data = receiveClient.Receive(ref receiveIEP);

                    if (localIPs.Contains(receiveIEP.Address))
                    {
                        print("Receive from local IP, ignore.");
                        continue;
                    }

                    var text = Encoding.UTF8.GetString(data);
                    print("Receive \"" + text + "\" from " + receiveIEP.Address + ":" + receiveIEP.Port);
                    HandleMessage(text, receiveIEP.Address.ToString());
                }
                catch (Exception err)
                {
                    print(err.ToString());
                }
            }
        }

        private void HandleMessage(string message, string ip)
        {
            if (message == "DISCOVER" && !discovered)
            {
                discovered = true;
                status = "发现玩家 " + ip;
                var iep = new IPEndPoint(IPAddress.Parse(ip), port);
                var list = sendIEPs.ToList();
                list.Add(iep);
                sendIEPs = list.ToArray();
            }
            else if (message == "GAMESTART")
            {
                status = "";
                gameManager.MultiplayerGameFunction();
                Invoke(nameof(ResetStatus), 1);
            }
            else if (message == "COLLISION")
            {
                status = "对手碰撞";
                vehicleController.SpeedUp();
                rivalCollisionCount++;
                Invoke(nameof(ResetStatus), 1);
            }
            else if (message == "COINPICKUP")
            {
                status = "对手拾取金币";
                vehicleController.SlowDown();
                gameManager.DecrementCoinCounter();
                rivalCollisionCount--;
                Invoke(nameof(ResetStatus), 1);
            }
            else if (message == "CRASH")
            {
                status = "对手爆炸";
                gameManager.ShowGameOverPanel("恭喜你赢得了比赛！");
                Invoke(nameof(ResetStatus), 1);
            }
            else if (message == "COMPLETE")
            {
                status = "对手完成";
                gameManager.ShowGameOverPanel("你输掉了比赛！");
                Invoke(nameof(ResetStatus), 1);
            }
        }

        private void ResetStatus()
        {
            status = "";
        }

        public void StopSending()
        {
            CancelInvoke(nameof(Discover));
            sendClient?.Close();
        }

        public void StopReceiving()
        {
            receiveClient?.Close();
            receiveThread?.Abort();
        }

        private void SendString(string message, bool multicast = true)
        {
            try
            {
                var data = Encoding.UTF8.GetBytes(message);
                if (multicast)
                {
                    sendClient.Send(data, data.Length, sendMulticastIEP);
                    print("Send: " + message + " to " + multicastIP + ":" + port);
                }
                else
                {
                    sendClient.Send(data, data.Length, sendMulticastIEP);
                    print("Send: " + message + " to " + multicastIP + ":" + port);
                    // sendClient.Send(data, data.Length, sendIEP);
                    // print("Send: " + message + " to " + sendIEP.Address + ":" + sendIEP.Port);
                    foreach (var iep in sendIEPs)
                    {
                        sendClient.Send(data, data.Length, iep);
                        print("Send: " + message + " to " + iep.Address + ":" + iep.Port);
                    }
                }
            }
            catch (Exception err)
            {
                print(err.ToString());
            }
        }

        private void Discover()
        {
            SendString("DISCOVER");
        }

        public void StartGame()
        {
            SendString("GAMESTART");
        }

        public void Collision()
        {
            SendString("COLLISION");
        }

        public void CoinPickup()
        {
            SendString("COINPICKUP");
        }

        public void Crash()
        {
            SendString("CRASH");
        }

        public void Complete()
        {
            SendString("COMPLETE");
        }
    }
}