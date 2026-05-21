
using UnityEngine;

public class SimpleShooter : MonoBehaviour
{
    public GameObject projectilePrefab;

    public Transform firePoint;

    public float fireRate = 1f;

    private float nextFireTime;

    void Update()
    {
        if (Time.time >= nextFireTime)
        {
            Shoot();

            nextFireTime =
                Time.time + fireRate;
        }
    }

    void Shoot()
    {
        Instantiate(
            projectilePrefab,
            firePoint.position,
            firePoint.rotation
        );
    }
}

