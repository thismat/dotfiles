# Link nvim configs
Write-Output "Linking nvim configs..."
New-Item -Type Junction -Path $env:LOCALAPPDATA\nvim -Target $HOME\.config\nvim
