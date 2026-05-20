# =========================================
# GIT AUTO PUSH
# =========================================

Write-Host ""
Write-Host "====================================="
Write-Host " GIT AUTO PUSH"
Write-Host "====================================="
Write-Host ""

try
{
    # =====================================
    # VERIFY GIT
    # =====================================

    git rev-parse --is-inside-work-tree *> $null

    if ($LASTEXITCODE -ne 0)
    {
        throw "Esta pasta não é um repositório Git válido."
    }

    # =====================================
    # GET CURRENT DATE
    # =====================================

    $date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    # =====================================
    # GET CHANGED FILES
    # =====================================

    $changedFiles = git status --porcelain

    if (-not $changedFiles)
    {
        Write-Host ""
        Write-Host "Nenhuma modificação encontrada."
        Write-Host ""

        exit
    }

    # =====================================
    # SHOW CHANGES
    # =====================================

    Write-Host ""
    Write-Host "Arquivos modificados:"
    Write-Host "-------------------------------------"

    $changedFiles | ForEach-Object {
        Write-Host $_
    }

    Write-Host "-------------------------------------"
    Write-Host ""

    # =====================================
    # ADD ALL
    # =====================================

    git add .

    if ($LASTEXITCODE -ne 0)
    {
        throw "Erro ao executar git add ."
    }

    # =====================================
    # COMMIT
    # =====================================

    $commitMessage = "auto commit - $date"

    git commit -m "$commitMessage"

    if ($LASTEXITCODE -ne 0)
    {
        throw "Erro ao executar git commit."
    }

    # =====================================
    # PUSH
    # =====================================

    git push

    if ($LASTEXITCODE -ne 0)
    {
        throw "Erro ao executar git push."
    }

    # =====================================
    # SUCCESS
    # =====================================

    Write-Host ""
    Write-Host "====================================="
    Write-Host " FORAM LEVADOS CORRETAMENTE OS ARQUIVOS"
    Write-Host "====================================="
    Write-Host ""

    git status --short

    Write-Host ""
}
catch
{
    Write-Host ""
    Write-Host "====================================="
    Write-Host " ERRO NO PROCESSO"
    Write-Host "====================================="
    Write-Host ""

    Write-Host $_

    Write-Host ""
}