if not exist ".\nvim-data\" (
        mkdir nvim-data
)

git clone https://github.com/wbthomason/packer.nvim ./nvim-data/package.nvim

