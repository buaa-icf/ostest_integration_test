
using UnityEngine;



namespace c21_HighwayDriver
{
	public class RR_CameraFollow : MonoBehaviour
	{
		private Transform cameraLookAt;
		private float smoothSpeed;
		public Vector3 offSet;
		private bool enableCameraFollow;
		private bool enableResetXOffset;
		private float xOffset;


		private void Awake()
		{
			cameraLookAt = GameObject.FindGameObjectWithTag("CameraLookAt").GetComponent<Transform>();

		}

		public void Play()
		{
			enableResetXOffset = true;
			enableCameraFollow = true;
		}



		private void Start()
		{
			enableCameraFollow = true;
			smoothSpeed = 0.126f;
			xOffset = 3f;

			offSet = new Vector3(xOffset, 1.75f, -4f);
		}



		private void FixedUpdate()
		{
			if (enableCameraFollow)
			{
				Vector3 desiredPosition = cameraLookAt.position + offSet;
				Vector3 smoothedPosition = Vector3.Lerp(transform.position, desiredPosition, smoothSpeed);
				transform.position = smoothedPosition;
				transform.LookAt(cameraLookAt);
			}
		}



		private void Update()
		{
			if (enableResetXOffset)
			{
				SetXOffset();
			}
		}



		private void SetXOffset()
		{
			if (xOffset > 0)
			{
				xOffset -= Time.deltaTime * 2.5f;
				if (xOffset <= 0)
				{
					enableResetXOffset = false;
					xOffset = 0;
				}
				offSet = new Vector3(xOffset, 1.75f, -4f);
			}
		}
	}
}