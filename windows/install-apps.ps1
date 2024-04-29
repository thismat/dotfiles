function Test-Installed
{
  param (
    [Parameter(Mandatory)]
    [string]$appName
  )

  if (Get-Command $appName -ErrorAction SilentlyContinue)
  {
    return $true;
  } else
  {
    return $false;
  }

}

$apps = "JanDeDobbeleer.OhMyPosh",
"ajeetdsouza.zoxide",
"TailwindLabs.TailwindCSS"

Write-Output "$apps"
$progress = 0;
foreach ($app in $apps)
{
  $installed = Test-Installed $app
  if ($installed -eq $false)
  {
    Write-Output "Installing: $app"
    & winget install $app -e --source winget
  }

  $progress++
  Write-Progress -Activity "Installing Apps" -PercentComplete $progress
}



