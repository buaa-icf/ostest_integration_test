using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(Animation))]
public class RR_RelativePositionForAnimation : MonoBehaviour
{
    [HideInInspector] public Vector3 positon;
    private Vector3 startPosition;

    void Start()
    {
        this.startPosition = this.transform.position;
    }


    void Update()
    {
        Vector3 newPos = this.startPosition + this.positon;
        if (newPos != this.startPosition) //没有在动画中使用此脚本的情况
            this.transform.position = newPos;
    }
}