if ( -not (Test-Path ~\AppData\Local\nvim-data -PathType Container) ) {
        Write-Output Creating nvim-data directory
        mkdir ~\AppData\Local\nvim-data
}

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

