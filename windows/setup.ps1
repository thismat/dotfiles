# Progress Bar
$progress        = 0;
$setupProgress   = "Setup Progress"

Add-Progress

function Add-Progress {
    $progress++
    Write-Progress -Activity $setupProgress -PercentComplete $progress
}

# Variables
$nvimDataPath         = "$env:LOCALAPPDATA\nvim"
$nvimHomePath         = "$HOME\.config\nvim"
$terminalFragmentPath = "$env:LOCALAPPDATA\Microsoft\Windows Terminal\Fragments\thismat"

# Link nvim configs
Write-Output "Linking nvim configs..."
if (Test-Path $nvimDataPath && Test-Path $nvimHomePath) {
    New-Item -Type Junction -Path $nvimDataPath -Target $nvimHomePath
} else {
    Write-Warning "Path(s) error for nivm config linking: \n
                    NVIM Data Path:" Test-Path $nvimDataPath " \n
                    NVIM Home Path:" Test-Path $nvimHomePath " \n"
}

Add-Progress

# Install apps
& .\install-apps.ps1

Add-Progress

# Install terminal fragments
if (!Test-Path $terminalFragmentPath) {
    New-Item -Type Directory $terminalFragmentPath
}
Copy-Item -Source .\terminal\settings-fragment.json -Destination $terminalFragmentPath -Force

Add-Progress
