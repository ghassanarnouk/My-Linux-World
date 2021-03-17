"   _       _ _         _           
"  (_)     (_) |       (_)          
"   _ _ __  _| |___   ___ _ __ ___  
"  | | '_ \| | __\ \ / / | '_ ` _ \ 
"  | | | | | | |_ \ V /| | | | | | |
"  |_|_| |_|_|\__(_)_/ |_|_| |_| |_|


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                      Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin( '~/local/share/nvim/plugged')

" https://github.com/bluz71/vim-nightfly-guicolors
Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()


"""""""""""""""""""""""""""""""""""""""Nightfly-Plugin""""""""""""""""""""""""""""""""""

" Want to set the color scheme to nightfly? You can toggle this by typing the command below
colorscheme nightfly

" Setting 24-bit true colors and the nightfly theme
set termguicolors

" Underline matching parentheses? You can toggle this by typing the command
" below
let g:nightflyUnderlineMatchParen = 1

" Prefer colored cursor? You can toggle this by typing the command below
let g:nightflyCursorColor=1

" Prefer unitalicized comments? You can toggle this by typing the command below 
" let g:nightflyItalics=0


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

" Want indentation reacting to the code syntax? You can toggle this by typing
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

" Prefer cursor to be centered with scroll off? You can toggle this by typing
" the command below and setting it to a very large number
" Alternative command :set scrolloff=999 
set so=999

" Highlight the first string that matches a search pattern? You can toggle
" this by typing the command below
set incsearch

" Modify search to be always case insensitive? You can toggle this by typing the
" command below
set ignorecase

" Want search to be case sensitive only if patter has an uppercase letter? You can
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

" Control when and how to display the status bar? You can toggle this by typing the command below
" 0 (never)
" 1 (status bar shows if there are more than 2 windows)
" 2 always - DEFAULT
set laststatus=0

" Stop continuation of comments on newline? You can toggle this by typing the command below
" Alternative command :set formatoptions-=cro
" set fo-=cro

" Prevent having misspelled words? You can toggle this by typing the command below 
set spell spelllang=en_us

" Want to set 24-bit true colors? You can toggle this by typing the command below
set termguicolors

" Set the + register (system clipboard) as the default? You can toggle this by typing the command below
set clipboard=unnamedplus


""" Unused commands but they are here just in case

" set mouse=a
" set background=dark " - by DEFAULT
" set cursorline
" set cmdheight=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Scripts
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
" <CR> stands for: Carriage Return
" htbp stands for: here, top, bottom, point of float 
" Using align environment over equation in LaTeX provides more spacing between text
" and equation

" Note that in vim, p is used to paste before the cursor while P is after
" To cancel the highlight of searched items :noh

"""""""""""""""""""""""""""""""""""""GENERAL""""""""""""""""""""""""""""""""""""""""""""

" Prefers <leader> key to not be \ by default? You can set this by typing
" the command below and setting it to desired key
let mapleader=";"

" Sourcing init.vim config file
noremap <F2> :source $HOME/.config/nvim/init.vim<CR> 

" Toggle on and off relative line number 
nnoremap <F3> :set rnu!<CR>

" Toggle on and off spell checking
nnoremap <F4> :set spell!<CR>

" Toggle off the search highlight
" nnoremap <F7> :set noh!<CR>

" Documentation [In Progress]
nnoremap <Tab> :tabNext<CR>
noremap <C-n> :tabnew 

" Navigate to the next <++> in Normal mode
noremap <silent> <leader><Space> <Esc>/<++><Enter>"_c4l

" Navigate to the next <++> in Insert mode
inoremap <silent> <leader><Space><Space> <Esc>/<++><Enter>"_c4l

" Copy Paste functionality from/to vim to/from other applications
" Does the same as :set clipboard=unnamedplus
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+p


"""""""""""""""""""""""""""""""""""""""TEX""""""""""""""""""""""""""""""""""""""""""""""

" Insert begin environment
autocmd FileType tex inoremap ;bg \begin{<++>}<CR><++><CR>\end{<++>}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert figure environment
autocmd FileType tex inoremap ;fg \begin{figure}[htbp]<CR>\begin{centering}<CR>\includegraphics[<++>]{<++>}<CR>\captionof{figure}{<++>}<CR>\label{fig:<++>}<CR>\end{centering}<CR>\end{figure}<CR><++><Esc>?begin{figure}<Enter>"_i<Esc>


" Insert equation environment 
autocmd FileType tex inoremap ;eq \begin{equation}<CR><++><CR>\label{eqt:<++>}<CR>\end{equation}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert an unnumbered equation environment
autocmd FileType tex inoremap ;ueq \begin{align*}<CR><++><CR>\label{eqt:<++>}<CR>\end{align*}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert align environment 
autocmd FileType tex inoremap ;al \begin{equation}<CR><++><CR>\label{eqt:<++>}<CR>\end{equation}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert an unnumbered align environment
autocmd FileType tex inoremap ;ual \begin{align*}<CR><++><CR>\label{eqt:<++>}<CR>\end{align*}<CR><++><Esc>?begin<Enter>"_i<Esc>


" Insert reference command
autocmd FileType tex inoremap ;r \ref{<++>}<Space><++><Esc>?ref<Enter>"_i<Esc>

" Insert SI units command
autocmd FileType tex inoremap ;si \SI{<++>}{<++>}<Space><++><Esc>?SI<Enter>"_i<Esc>

" Insert pagebreak command
autocmd FileType tex inoremap ;pgb \pagebreak<CR><++><Esc>?pagebreak<Enter>"_i<Esc>

" Insert fraction command
autocmd FileType tex inoremap ;f \frac{<++>}{<++>}<Esc>?frac<Enter>"_i<Esc>

" Insert more spaced fraction command
autocmd FileType tex inoremap ;ddf \ddfrac{<++>}{<++>}<Esc>?ddfrac<Enter>"_i<Esc>

" Insert no number command
autocmd FileType tex inoremap ;nnu \nonumber<Esc>

" Insert comment character
autocmd FileType tex nnoremap ;5 0i%<Esc>

" Comments 260-264 are under review

" Insert bold text command
autocmd FileType tex inoremap ;b \bfseries{<++>}<Space><++><Esc>?bfseries<Enter>"_i<Esc>

" Insert italics text command
autocmd FileType tex inoremap ;i \emph{<++>}<Space><++><Esc>?bfseries<Enter>"_i<Esc>

" Insert underline text command
autocmd FileType tex inoremap ;u \underline{<++>}<Space><++><Esc>?bfseries<Enter>"_i<Esc>


" Insert section environment
autocmd FileType tex inoremap ;s \section{<++>}<CR>\label{sct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>

" Insert unnumbered section environment
autocmd FileType tex inoremap ;us \section{<++>}<CR>\label{sct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>

" Insert subsection environment
autocmd FileType tex inoremap ;ss \subsection{<++>}<CR>\label{ssct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>

" Insert unnumbered subsection environment
autocmd FileType tex inoremap ;uss \subsection*{<++>}<CR>\label{ssct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>

" Insert subsubsection environment
autocmd FileType tex inoremap ;sss \subsubsection*{<++>}<CR>\label{ssct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>

" Insert unnumbered subsubsection environment
autocmd FileType tex inoremap ;usss \subsubsection*{<++>}<CR>\label{ssct:<++>}<CR><++><Esc>?section<Enter>"_i<Esc>








