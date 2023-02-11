# Progress Bar
$progress        = 0;
$setupProgress   = "Setup Progress"

function Add-Progress {
    $progress++
    Write-Progress -Activity $setupProgress -PercentComplete $progress
}

Add-Progress

# Variables
$nvimDataPath         = "$env:LOCALAPPDATA\nvim"
$nvimHomePath         = "$HOME\.config\nvim"
$terminalFragmentPath = "$env:LOCALAPPDATA\Microsoft\Windows Terminal\Fragments\thismat"

# Link nvim configs
Write-Output "Linking nvim configs..."
if (!(Test-Path $nvimDataPath)) {
    New-Item -Type Junction -Path $nvimDataPath -Target $nvimHomePath
}

Add-Progress

# Install apps
& .\install-apps.ps1

Add-Progress

# Install terminal fragments
if (!(Test-Path $terminalFragmentPath)) {
    New-Item -Type Directory $terminalFragmentPath
}
Copy-Item -Path .\terminal\settings-fragment.json -Destination $terminalFragmentPath -Force

Add-Progress
