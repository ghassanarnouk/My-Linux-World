"   _       _ _         _           
"  (_)     (_) |       (_)          
"   _ _ __  _| |___   ___ _ __ ___  
"  | | '_ \| | __\ \ / / | '_ ` _ \ 
"  | | | | | | |_ \ V /| | | | | | |
"  |_|_| |_|_|\__(_)_/ |_|_| |_| |_|


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight syntax? You can toggle this by typing the command below 
" The command does syntax highlighting for the majority of programming languages but not
" all of them
syntax on

" Show current line number? You can toggle this by typing the command below
" Alternative command :set number
set nu

" Show relative line numbers? You can toggle this by typing the command below
" Alternative command :set relativenumber
set rnu

" Perform automatic indentation? You can toggle this by typing the command
" below
set autoindent

" Wants indentation reacting to the code syntax? You can toggle this by typing
" the command below
" NOTE: smart does funny things based on keyboards
set smartindent

" STILL TRYING TO FIGURE THIS OUT
set showmatch
set matchtime=3

" Insert space characters whenever tab is pressed? You can toggle this by
" typing the command below
set expandtab

" Control number of space characters inserted when tab is pressed? You can
" toggle this by typing the command below
set tabstop=4

" Insert and delete the correct number of spaces? You can toggle this by
" typing the command below 
set softtabstop=4

" Modify number of space characters inserted for indentation? You can toggle
" this by typing the command below 
set shiftwidth=4

" Turn off automatic (soft) line wrapping? You can toggle this by typing the command below
" set nowrap

" Turn on automatic (soft) line wrapping? You can toggle this by typing the command below
set wrap linebreak

" Prevent Vim from automatically inserting line breaks in newly entered text? You can toggle
" this by typing the command below
" Alternative commands :set textwidth=0 & :set wrapmargin=0
set wm=0
set tw=0

" Prefers cursor to be centred with scroll off? You can toggle this by typing
" the command below and setting it to a very large number
" Alternative command :set scrolloff=999 
set so=999


" set incsearch

" Modify search to be always case insensitive? You can toggle this by typing the
" command below
set ignorecase

" Wants search to be case sensitive only if patter has an uppercase letter? You can
" toggle this by typing the command below
" Only possible if ignorecase is toggled on
set smartcase

" Highlight search matches? You can toggle this by typing the command below 
set hlsearch

" Show the line and column number of the cursor position? You can toggle this
" by typing the command below
" This command is ON by DEFAULT
" Alternative command :set ruler
set ru

" Controls when and how to display the status bar? You can toggle this by typing the command below
" 0 (never)
" 1 (status bar shows if there are more than 2 windows)
" 2 always - DEFAULT
set laststatus=2

" Stops continuation of comments on newline? You can toggle this by typing the command below
" Alternative command: set formatoptions-=cro
" set fo-=cro

set spell spelllang=en_ca


""" Unused commands but they are here just in case

" set mouse=a
" set clipboard=unnamedplus
" set background=dark - by DEFAULT
" set cursorline
" set cmdheight=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" A function name MUST start with an UPPERCASE letter


" Documentation and function implementation are [In Progress]
function Nvim_Source()
    execute "w"
    source ~/.config/nvim/init.vim
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" noremap stands for Non-Recursive Mapping
" <CR> stands for Carriage Return


"""""""""""""""""""""""""""""""""""""GENERAL""""""""""""""""""""""""""""""""""""""""""""

" Prefers <leader> key to not be \ by default? You can set this by typing
" the command below and setting it to desired key
let mapleader=","

" Sourcing init.vim config file
noremap <F2> :source $HOME/.config/nvim/init.vim<CR> 

"Toggle on and off relative line number 
nnoremap <F3> :set rnu!<CR>

" Toggle on and off spell checking
nnoremap <F4> :set spell!<CR>

" Documentation [In Progress]
nnoremap <Tab> :tabNext<CR>
noremap <C-n> :tabnew 



































