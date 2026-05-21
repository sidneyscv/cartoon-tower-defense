
using UnityEngine;

public class TargetDummy : MonoBehaviour
{
    void Update()
    {
        transform.Rotate(
            0,
            20f * Time.deltaTime,
            0
        );
    }
}

