
using UnityEngine;



namespace c21_HighwayDriver
{
    public class RR_VehiclesColorChanger : MonoBehaviour
    {
        public Texture2D mainTexture;
        private Texture2D texture;

        private int textureSize;
        private int halfTextureSize;

        public Color color;
        private Color[] colorsArrayFirst;
        private Color[] colorsArraySecond;
        private Color[] colorsArrayThird;
        private Color[] colorsArrayFourth;

        private MeshRenderer meshRenderer;




        private void Awake()
        {
            meshRenderer = GetComponent<MeshRenderer>();

            textureSize = mainTexture.width;
            halfTextureSize = textureSize / 2;

            texture = new Texture2D(mainTexture.width, mainTexture.height, TextureFormat.ARGB32, false);

            colorsArrayFirst = new Color[halfTextureSize * halfTextureSize];
            colorsArraySecond = new Color[halfTextureSize * halfTextureSize];
            colorsArrayThird = new Color[halfTextureSize * halfTextureSize];
            colorsArrayFourth = new Color[halfTextureSize * halfTextureSize];
        }



        private void OnEnable()
        {
            Color color = this.color;

            for (int index = 0; index < colorsArrayFirst.Length; index++)
            {
                colorsArrayFirst[index] = color;
            }

            colorsArraySecond = mainTexture.GetPixels(halfTextureSize, halfTextureSize, halfTextureSize, halfTextureSize);
            colorsArrayThird = mainTexture.GetPixels(0, 0, halfTextureSize, halfTextureSize);
            colorsArrayFourth = mainTexture.GetPixels(halfTextureSize, 0, halfTextureSize, halfTextureSize);

            texture.SetPixels(0, halfTextureSize, halfTextureSize, halfTextureSize, colorsArrayFirst);
            texture.SetPixels(halfTextureSize, halfTextureSize, halfTextureSize, halfTextureSize, colorsArraySecond);
            texture.SetPixels(0, 0, halfTextureSize, halfTextureSize, colorsArrayThird);
            texture.SetPixels(halfTextureSize, 0, halfTextureSize, halfTextureSize, colorsArrayFourth);

            texture.Apply();
            meshRenderer.material.mainTexture = texture;
        }
    }
}