execute pathogen#infect()


"-------------General Settings--------------"

"enable file type detection"
filetype plugin indent on

"Make backspace behave normally"
set backspace=indent,eol,start                                        

"The default leader is \, but a comma is much better."
let mapleader = ','             

"Enable line numbers"
set number           

"Macvim specifc line height"                  
set linespace=15                                 


"-------------Visuals--------------"

syntax enable
set background=dark
colorscheme material-theme

set guifont=Fira_Code

"Macvim specifc line height"
set linespace=15

"-------------Search--------------"

"highlight search word"
set hlsearch

"enable incremental search"
set incsearch

"-------------Mappings--------------"

"Make it easy to edit the Vimrc file."
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal."
nmap <Leader><space> :nohlsearch<cr>


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save."
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

