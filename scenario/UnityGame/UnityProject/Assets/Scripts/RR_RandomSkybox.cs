using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class RR_RandomSkybox : MonoBehaviour
{
    // 光照
    public Light light;

    // 天空盒
    public Material[] daySkybox;
    public Material[] duskSkybox;
    public Material[] nightSkybox;

    void Start()
    {
        // 初始化天空盒
        ChangeSkybox();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
            ChangeSkybox();
    }

    public void ChangeSkybox(bool isNight = false)
    {
        if (isNight)
        {
            // 夜晚
            RenderSettings.skybox = nightSkybox[Random.Range(0, nightSkybox.Length)];
            light.intensity = 0.2f;
            light.shadowStrength = 0.1f;
            light.color = new Color(60 / 255f, 50 / 255f, 50 / 255f);
            light.colorTemperature = 1500;
            return;
        }
        else
        {
            var random = Random.Range(0, 2);
            if (random == 0)
            {
                // 白天
                RenderSettings.skybox = daySkybox[Random.Range(0, daySkybox.Length)];
                light.intensity = 1.0f;
                light.shadowStrength = 1.0f;
                light.transform.rotation = Quaternion.Euler(50, 30, 0);
                light.color = new Color(245 / 255f, 212 / 255f, 174 / 255f);
                light.colorTemperature = 8500;
            }
            else if (random == 1)
            {
                // 黄昏
                RenderSettings.skybox = duskSkybox[Random.Range(0, duskSkybox.Length)];
                light.intensity = 0.6f;
                light.shadowStrength = 0.5f;
                light.transform.rotation = Quaternion.Euler(50, 175, 0);
                light.color = new Color(231 / 255f, 127 / 255f, 103 / 255f);
                light.colorTemperature = 9500;
            }
        }
    }
}