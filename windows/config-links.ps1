# Variables
$nvimDataPath         = "$env:LOCALAPPDATA\nvim"
$nvimHomePath         = "$HOME\.config\nvim"
$terminalFragmentPath = "$env:LOCALAPPDATA\Microsoft\Windows Terminal\Fragments\thismat"

# Link nvim configs
Write-Output "Linking nvim configs..."
if (!(Test-Path $nvimDataPath)) {
    New-Item -Type Junction -Path $nvimDataPath -Target $nvimHomePath
}

# Stop espanso
& espanso stop

Write-Output "Linking espanso configs..."
if (Test-Path "$env:APPDATA\espanso") {
  Write-Output "Removing existing espanso config..."
  Remove-Item -Force -Recurse "$env:APPDATA\espanso" -WhatIf
}

if (!(Test-Path "$env:APPDATA\espanso")) {
  Write-Output "Setting espanso config..."
  New-Item -Type Junction -Path "$env:APPDATA\espanso" -Target "$HOME\.config\espanso"
}

# Restart Espanso to pick up new changes
& espanso start
