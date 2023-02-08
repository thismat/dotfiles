function Test-Installed {
    param (
        [Parameter(Mandatory)]
        [string]$appName
    )

    if (Get-Command $appName -ErrorAction SilentlyContinue) {
        return $true;
    } else {
        return $false;
    }

}

$apps = "JanDeDobbeleer.OhMyPosh",
        "ajeetdsouza.zoxide"

$progress = 0;
foreach ($app in $apps) {
    if (Test-Installed $app) {
        & winget install $app -e --source winget
    }

    $progress++
    Write-Progress -Activity "Installing Apps" -PercentComplete $progress
}
