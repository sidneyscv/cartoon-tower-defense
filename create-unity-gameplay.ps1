# =========================================
# UNITY GAMEPLAY STRUCTURE
# =========================================

Write-Host ""
Write-Host "====================================="
Write-Host " UNITY GAMEPLAY SETUP"
Write-Host "====================================="
Write-Host ""

# =========================================
# UNITY PATH
# =========================================

$UnityPath = "unity/CartoonTowerDefense/Assets"

# =========================================
# CREATE FOLDERS
# =========================================

$folders = @(

    "$UnityPath/Scripts",
    "$UnityPath/Scripts/Core",
    "$UnityPath/Scripts/Weapons",
    "$UnityPath/Scripts/Gameplay",

    "$UnityPath/Prefabs",
    "$UnityPath/Scenes",
    "$UnityPath/Materials"
)

foreach ($folder in $folders)
{
    New-Item `
        -ItemType Directory `
        -Force `
        -Path $folder | Out-Null

    Write-Host "[OK] Created: $folder"
}

# =========================================
# TOWER ROTATION SCRIPT
# =========================================

$towerRotation = @"

using UnityEngine;

public class TowerRotation : MonoBehaviour
{
    public float rotationSpeed = 80f;

    void Update()
    {
        transform.Rotate(
            0,
            rotationSpeed * Time.deltaTime,
            0
        );
    }
}

"@

Set-Content `
    -Path "$UnityPath/Scripts/Weapons/TowerRotation.cs" `
    -Value $towerRotation

Write-Host "[OK] Created: TowerRotation.cs"

# =========================================
# PROJECTILE SCRIPT
# =========================================

$projectile = @"

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

"@

Set-Content `
    -Path "$UnityPath/Scripts/Weapons/Projectile.cs" `
    -Value $projectile

Write-Host "[OK] Created: Projectile.cs"

# =========================================
# SIMPLE SHOOTER SCRIPT
# =========================================

$shooter = @"

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

"@

Set-Content `
    -Path "$UnityPath/Scripts/Weapons/SimpleShooter.cs" `
    -Value $shooter

Write-Host "[OK] Created: SimpleShooter.cs"

# =========================================
# TARGET DUMMY SCRIPT
# =========================================

$targetDummy = @"

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

"@

Set-Content `
    -Path "$UnityPath/Scripts/Gameplay/TargetDummy.cs" `
    -Value $targetDummy

Write-Host "[OK] Created: TargetDummy.cs"

# =========================================
# FINAL
# =========================================

Write-Host ""
Write-Host "====================================="
Write-Host " UNITY GAMEPLAY CREATED"
Write-Host "====================================="
Write-Host ""