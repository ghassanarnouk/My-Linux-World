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

" set showmatch

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

" Turn off automartic (soft) line wrapping? You can toggle this by typing the command below
" set nowrap

" Turn on automartic (soft) line wrapping? You can toggle this by typing the command below
set wrap linebreak

" Prevent Vim from automatically inserting line breaks in newly entered text? You can toggle
" this by typing the command below
" Alternative commands :set textwidth=0 & :set wrapmargin=0
set wm=0
set tw=0

" Perfers cursor to be centered with scrolloff? You can toggle this by typing
" the command below and setting it to a very large number
" Alternative command :set scrolloff=999 
set so=999



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
" Sourcing init.vim config file
noremap <F2> :source $HOME/.config/nvim/init.vim<CR> 

"Toggle on and off relative line number 
nnoremap <F3> :set rnu!<CR>

" Documentation [In Progress]
nnoremap <Tab> :tabNext<CR>
noremap <C-n> :tabnew 



































