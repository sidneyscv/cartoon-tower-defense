
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float speed = 20f;

    void Update()
    {
        transform.Translate(
            Vector3.forward * speed * Time.deltaTime
        );
    }

    private void OnTriggerEnter(Collider other)
    {
        Destroy(gameObject);
    }
}

