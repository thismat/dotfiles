call plug#begin(stdpath('data') . '/plugged')

" Treesitter
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'nvim-treesitter/completion-treesitter'


" FZF / Finders
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" C# / Omnisharp
Plug 'omnisharp/omnisharp-vim'

" Filesystem Browser
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'

" Visual Plugins
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons / Glyphs
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-commentary'

" Undo Stuff
Plug 'mbbill/undotree'

call plug#end()

lua require('thismat')

" Old Basics

if !exists('g:syntax_on')
  syntax on
endif

set encoding=utf-8
set number
set expandtab
set hidden
set incsearch
set nowrap
set smartcase
set inccommand=split
set cursorline
set mouse=a

" Whitespace / Tabs
set autoindent
set tabstop=2
set shiftwidth=2
set smartindent

" Files
set noswapfile
set nobackup
set nowritebackup
set undodir=$XDG_CONFIG_HOME/nvim-data/undodir
set undofile

" Standard Key Mappings
let mapleader = " "
imap <C-j> <Esc>

nnoremap <leader>h :noh<CR>
nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader><CR> :so $MYVIMRC<CR>

" Window Split Movement
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Resizing Stuff
nnoremap <silent> <Leader>- :vertical resize -10<CR>
nnoremap <silent> <Leader>+ :vertical resize +10<CR>

" NERD Settings & Mappings
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <leader>pf :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" FZF / RG
nnoremap <C-p> :Files<CR>
let g:fzf_preview_window = ['right:50%']
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!**/{.git,node_modules}/*"'

" FZF File Options
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', 'bat --theme="Nord" --style=numbers --color=always {}']}, <bang>0)

" Toggle Comments
map <C-/> :Commentary<CR>

" Colorscheme Settings
if !exists('g:loaded_color')
  let g:loaded_color = 1
  " let g:dracula_colorterm = 0

endif

colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }

if (has("termguicolors"))
  set termguicolors
endif


