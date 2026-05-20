# =========================================
# CARTOON TOWER DEFENSE - PROJECT SETUP
# =========================================

Write-Host ""
Write-Host "====================================="
Write-Host " CARTOON TOWER DEFENSE SETUP"
Write-Host "====================================="
Write-Host ""

# =========================================
# ROOT
# =========================================

$Root = Get-Location

# =========================================
# CREATE MAIN FOLDERS
# =========================================

$folders = @(

    "docs",

    "unity",

    "assets-source",

    "assets-source/blender",
    "assets-source/textures",
    "assets-source/concepts",
    "assets-source/audio",

    "scripts",
    "scripts/tools",
    "scripts/build",

    "prototypes"
)

foreach ($folder in $folders)
{
    New-Item `
        -ItemType Directory `
        -Force `
        -Path "$Root\$folder" | Out-Null

    Write-Host "[OK] Created: $folder"
}

# =========================================
# CREATE DOC FILES
# =========================================

$files = @(

    "README.md",

    "docs/roadmap.md",
    "docs/gameplay.md",
    "docs/architecture.md",
    "docs/art-direction.md",

    ".gitignore"
)

foreach ($file in $files)
{
    New-Item `
        -ItemType File `
        -Force `
        -Path "$Root\$file" | Out-Null

    Write-Host "[OK] Created: $file"
}

# =========================================
# WRITE .GITIGNORE
# =========================================

$gitignore = @"

[Ll]ibrary/
[Tt]emp/
[Oo]bj/
[Bb]uild/
[Bb]uilds/
[Ll]ogs/
UserSettings/
MemoryCaptures/

.vscode/

*.csproj
*.unityproj
*.sln
*.suo
*.tmp
*.user
*.userprefs
*.pidb
*.booproj
*.svd
*.pdb
*.mdb
*.opendb
*.VC.db

"@

Set-Content `
    -Path "$Root\.gitignore" `
    -Value $gitignore

Write-Host ""
Write-Host "====================================="
Write-Host " PROJECT STRUCTURE CREATED"
Write-Host "====================================="
Write-Host ""

Write-Host "NEXT STEP:"
Write-Host "Create Unity project inside:"
Write-Host ""
Write-Host "unity/"
Write-Host ""