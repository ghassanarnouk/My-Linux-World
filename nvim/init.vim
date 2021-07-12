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
" https://github.com/liuchengxu/vim-which-key
" Plug 'liuchengxu/vim-which-key'
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'
" https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

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

" Prefer unitalicized comments? You can toggle this by uncommenting the command below 
" let g:nightflyItalics=0


"""""""""""""""""""""""""""""""""""""""WhichKey-Plugin""""""""""""""""""""""""""""""""""

nnoremap <silent> <leader> :WhichKey ';'<CR>

" call which_key#register('<Space>', "g:which_key_map")
let g:mapleader=";"
let g:maplocalleader="."

nnoremap <silent> <leader> :<c-u>WhichKey ';'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>


"""""""""""""""""""""""""""""""""""""""""Goyo-Plugin""""""""""""""""""""""""""""""""""""

noremap <localleader>g :Goyo \| set linebreak<CR>


""""""""""""""""""""""""""""""""""""""Easy-Align-Plugin"""""""""""""""""""""""""""""""""

" Just a test again!!



""""""""""""""""""""""""""""""""""""""IndentLine-Plugin"""""""""""""""""""""""""""""""""

" :set fieltype returns the extension type of the file opened
" :set buftype returns the extension type of the buffer opened


" Specify a list of file types that has indentLine plugin disabled by default? You can toggle this by typing the command below
" NOT WORKING
"let g:indentLine_fileTypeExculde = ["vimwiki", "help", "diff"]

" Specify a list of file types that has indentLine plugin enabled by default? You can toggle this by typing the command below
" NOT WORKING
" let g:indentLine_filetype = ['tex', 'sh']

" Disable indentLine plugin by default? You can toggle this by typing the
" command below
" let g:indentLine_enabled = 0

" Highlight conceal color with your color scheme? You can toggle this by
" typing the command below 
let g:indentLine_setColors = 0

" Want to use the same colors that are used for tab indents? You can toggle
" this by typing command below
" let g:indentLine_defaultGroup = 'SpecialKey'

" Display more beautiful lines? You can toggle this by typing the
" command below
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Show leading spaces? You can toggle this by typing the command below
" let g:indentLine_leadingSpaceEnabled = 1

" Specify a character to show for leading space? You can toggle this by
" typing the command below
"let g:indentLine_leadingSpaceChar = '.'


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
set tw=0
set wm=0

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
set fo-=cro

" Prevent having misspelled words? You can toggle this by typing the command below 
set spell spelllang=en_us

" Want to set 24-bit true colors? You can toggle this by typing the command below
" set termguicolors

" Set the + register (system clipboard) as the default? You can toggle this by typing the command below
set clipboard=unnamedplus

" Avoid all the hit-enter prompts caused by file messages? You can toggle this by typing the command below
" See `:h shm` for flag options.
" Alternative command :set shortmess+=flmnrw
set shm+=flmnrw

" Enable auto-completion using C-p & C-N? You can toggle this by typing the command below
set complete+=k

" Highlight the screen line of the cursor? You can toggle this by typing the
" command below
" Alternative command :set cursorline
set cul

" Highlight the screen column of the cursor? You can toggle this by typing the
" command below
" Alternative command :set cursorcolumn
" set cuc

filetype on

" Set the time, in milliseconds, to wait for a mapped sequence to complete? You can toggle
" this by typing the command below
" Alternative command :set timeoutlen=1000
" The default value is 1000
set timeoutlen=1000


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
" <C-p> in insert mode displays the auto-complete menu

"""""""""""""""""""""""""""""""""""""GENERAL""""""""""""""""""""""""""""""""""""""""""""

" Prefers <leader> key to not be \ the default? You can set this by typing
" the command below and setting it to desired key
let mapleader=";"

" Prefers to set a localmapleader? You can set this by typing the command below and
" setting it to the desired key
let maplocalleader=","


" Sourcing init.vim config file
noremap <F2> :source $HOME/.config/nvim/init.vim<CR> 

" Toggle on and off relative line number 
nnoremap <F3> :set rnu!<CR>

" Toggle on and off spell checking
nnoremap <F4> :set spell!<CR>

" Toggle off the search highlight
nnoremap <F7> :set hlsearch!<CR>

" Toggle off the cursor line highlight
nnoremap <F8> :set cul!<CR>

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

" Select all text in buffer and copy it
nnoremap <C-a> gg<S-v><S-g>y


"""""""""""""""""""""""""""""""""""""""TEX""""""""""""""""""""""""""""""""""""""""""""""

"" Others

" Insert comment character at the beginning of the line
autocmd FileType tex nnoremap <Leader>5 0i%<Esc>

" Insert begin environment
autocmd FileType tex inoremap <Leader>bg \begin{<++>}<CR><++><CR>\end{<++>}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Testing vim-which-key
autocmd FileType tex nnoremap <Leader>bg \begin{<++>}<CR><++><CR>\end{<++>}<CR><++><Esc>?begin<Enter>"_i<Esc>



"" Comments [In Progress]

" Insert comment command
" autocmd FileType tex inoremap <Leader>c \comment

" Insert endcomment command
" autocmd FileType tex inoremap <Leader>ec \endcomment

" Insert comment environment
" autocmd FileType tex inoremap <Leader>cc \begin{comment}<CR><++><CR>\end{comment}<CR><++><Esc>?begin<Enter>"_i<Esc>



"" Appendices

" Insert appendices environment
" \addappheadtotoc: adds the title Appendices in toc
autocmd FileType tex inoremap <Leader>app \addappheadtotoc<CR>\begin{appendices}<CR>\section{<++>}<CR>\label{sct:<++>}<CR><++><CR>\end{appendices}<CR><++><Esc>?section<Enter>"_i<Esc>



"" Figures

" Insert figure environment
autocmd FileType tex inoremap <Leader>fg \begin{figure}[htbp]<CR>\label{fig:<++>}<CR>\begin{centering}<CR>\includegraphics[width=<++>\linewidth]{<++>.png}<CR>\captionof{figure}{<++>}<CR>\end{centering}<CR>\end{figure}<CR><++><Esc>?begin{figure}<Enter>"_i<Esc>



"" Tables

" Table commands are under review
autocmd FileType tex inoremap <Leader>tb \begin{table}[htbp]<CR>\centering<CR>\caption{<++>}<CR>\begin{tabular}{<++>}<CR><++><CR>\csvreader[<++>]{<++>}{}<CR>{<++>}<CR>\end{tabular}<CR>\label{tab:<++>}<CR>\end{table}<CR><++><Esc>?begin{table<Enter>"_i<Esc>

autocmd FileType tex inoremap <Leader>ltb \begin{longtable}{<++>}<CR>\caption[<++>]{<++>\label{tab:<++>}}\\ <CR>{<++>}<CR>\csvreader[<++>]{<++>}{}<CR>{<++>}<CR>\end{longtable}<CR><++><Esc>?begin{longta<Enter>"_i<Esc>



"" Lists

" Insert item command
autocmd FileType tex inoremap <Leader>it \item<Space><++><CR><++><Esc>?item<Enter>"_i<Esc>

" Insert itemize environment
autocmd FileType tex inoremap <Leader>item \begin{itemize}<CR>\item<Space><++><CR>\item<Space><++><CR>\end{itemize}<Esc>?begin{itemize}<Enter>"_i<Esc>

" Insert enumerate environment
autocmd FileType tex inoremap <Leader>enu \begin{enumerate}<CR>\item<Space><++><CR>\item<Space><++><CR>\end{enumerate}<Esc>?begin{enumerate}<Enter>"_i<Esc>

" Insert description environment
autocmd FileType tex inoremap <Leader>des \begin{description}<CR>\item<Space><++><CR>\item<Space><++><CR>\end{description}<Esc>?begin{description}<Enter>"_i<Esc>



"" Equations

" Insert no number command
autocmd FileType tex inoremap <Leader>nnu \nonumber<Esc>

" Insert equation environment 
autocmd FileType tex inoremap <Leader>eq \begin{equation}<CR><++><CR>\label{eqt:<++>}<CR>\end{equation}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert an unnumbered equation environment
autocmd FileType tex inoremap <Leader>ueq \begin{equation*}<CR><++><CR>\label{eqt:<++>}<CR>\end{equation*}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert subequation environment
autocmd FileType tex inoremap <Leader>seq \begin{subequation}<CR>\begin{align}<CR>\label{eqt:<++>}<CR><++><CR>\end{align}<CR>\end{subequation}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert align environment 
autocmd FileType tex inoremap <Leader>al \begin{align}<CR><++><CR>\label{eqt:<++>}<CR>\end{align}<CR><++><Esc>?begin<Enter>"_i<Esc>

" Insert an unnumbered align environment
autocmd FileType tex inoremap <Leader>ual \begin{align*}<CR><++><CR>\label{eqt:<++>}<CR>\end{align*}<CR><++><Esc>?begin<Enter>"_i<Esc>



"" Mathematics 

" Insert SI units command
autocmd FileType tex inoremap <Leader>si \SI{<++>}{<++>}<Space><++><Esc>?SI<Enter>"_i<Esc>

" Insert fraction command
autocmd FileType tex inoremap <Leader>f \frac{<++>}{<++>}<Esc>?frac<Enter>"_i<Esc>

" Insert more spaced fraction command
autocmd FileType tex inoremap <Leader>ddf \ddfrac{<++>}{<++>}<Esc>?ddfrac<Enter>"_i<Esc>



" Cancels 

" Insert cancel command
autocmd FileType tex inoremap <Leader>can \cancel{<++>}<Esc>?cancel<Enter>"_i<Esc>

" Insert cancel command
autocmd FileType tex inoremap <Leader>bcan \bcancel{<++>}<Esc>?bcancel<Enter>"_i<Esc>

" Insert cancel command
autocmd FileType tex inoremap <Leader>xcan \xcancel{<++>}<Esc>?xcancel<Enter>"_i<Esc>

" Insert cancel command
autocmd FileType tex inoremap <Leader>cant \cancelto{<++>}{<++>}<Esc>?cancelto<Enter>"_i<Esc>



"" Page Break

" Insert pagebreak command
" \pagebreak: forces a new page
autocmd FileType tex inoremap <Leader>pgb \pagebreak<CR><CR><++><Esc>?pagebreak<Enter>"_i<Esc>

" Insert pagebreak command
" \clearpage: ends a page, and puts pending tables and figures on separate
" float pages with no text
autocmd FileType tex inoremap <Leader>cpg \clearpage<CR><CR><++><Esc>?clearpage<Enter>"_i<Esc>



"" Reference

" Insert reference command
autocmd FileType tex inoremap <Leader>r \ref{<++>}<Space><++><Esc>?ref<Enter>"_i<Esc>

" Insert hyperref command
autocmd FileType tex inoremap <Leader>hr \hyperref[<++>:<++>]{<++>}<Space><++><Esc>?hyperref<Enter>"_i<Esc>



"" Bold, Italics, and Underline

" Insert bold text command
autocmd FileType tex inoremap <Leader>b {\bfseries<Space><++>}<Space><++><Esc>?bfseries<Enter>"_i<Esc>

" Insert italics text command
autocmd FileType tex inoremap <Leader>i \emph{<++>}<Space><++><Esc>?emph<Enter>"_i<Esc>

" Insert underline text command
autocmd FileType tex inoremap <Leader>u \underline{<++>}<Space><++><Esc>?underline<Enter>"_i<Esc>



"" Sections, Subsection, and Subsubsection

" Insert section environment
autocmd FileType tex inoremap <Leader>s \section{<++>}<CR>\label{sct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>

" Insert unnumbered section environment
autocmd FileType tex inoremap <Leader>us \section*{<++>}<CR>\label{sct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>

" Insert subsection environment
autocmd FileType tex inoremap <Leader>ss \subsection{<++>}<CR>\label{ssct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>

" Insert unnumbered subsection environment
autocmd FileType tex inoremap <Leader>uss \subsection*{<++>}<CR>\label{ssct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>

" Insert subsubsection environment
autocmd FileType tex inoremap <Leader>sss \subsubsection{<++>}<CR>\label{ssct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>

" Insert unnumbered subsubsection environment
autocmd FileType tex inoremap <Leader>usss \subsubsection*{<++>}<CR>\label{ssct:<++>}<CR><++><CR>\clearpage<Esc>?section<Enter>"_i<Esc>



"" Codes

" [language={[LaTeX]TeX}]
autocmd FileType tex inoremap <Leader>lst \begin{lstlisting}[language={<++>}, caption={<++>}, captionpos=b, label={lst:<++>}]<CR><++><CR>\end{lstlisting}<Esc>?begin{lstlisting}<Enter>"_i<Esc>


"" Markdown

" Insert markdownInput command
autocmd FileType tex inoremap <Leader>mdi \markdownInput{<++>.md}<CR><++><Esc>?markdownInput<Enter>"_i<Esc>

" Insert markdown environment
autocmd FileType tex inoremap <Leader>md \begin{markdown}<CR><++><CR>\end{markdown}<CR><++><Esc>?markdown<Enter>"_i<Esc>



"" Font Sizes

" Insert tiny command
autocmd FileType tex inoremap <Leader>t {\tiny<Space><++>}<Space><++><Esc>?tiny<Enter>"_i<Esc>

" Insert scriptsize command
autocmd FileType tex inoremap <Leader>ssi {\scriptsize<Space><++>}<Space><++><Esc>?scriptsize<Enter>"_i<Esc>

" Insert footnotesize command
autocmd FileType tex inoremap <Leader>fns {\footnotesize<Space><++>}<Space><++><Esc>?footnotesize<Enter>"_i<Esc>

" Insert small command
autocmd FileType tex inoremap <Leader>sm {\small<Space><++>}<Space><++><Esc>?small<Enter>"_i<Esc>

" Insert normalsize command
autocmd FileType tex inoremap <Leader>ns {\normalsize<Space><++>}<Space><++><Esc>?normalsize<Enter>"_i<Esc>

" Insert large command
autocmd FileType tex inoremap <Leader>la {\large<Space><++>}<Space><++><Esc>?large<Enter>"_i<Esc>

" Insert Large command
autocmd FileType tex inoremap <Leader>La {\Large<Space><++>}<Space><++><Esc>?Large<Enter>"_i<Esc>

" Insert LARGE command
autocmd FileType tex inoremap <Leader>LA {\LARGE<Space><++>}<Space><++><Esc>?LARGE<Enter>"_i<Esc>

" Insert huge command
autocmd FileType tex inoremap <Leader>hu {\huge<Space><++>}<Space><++><Esc>?huge<Enter>"_i<Esc>

" Insert HUGE command
autocmd FileType tex inoremap <Leader>Hu {\Huge<Space><++>}<Space><++><Esc>?Huge<Enter>"_i<Esc>



"" Glossaries

" Insert gls command
autocmd FileType tex inoremap <Leader>g \gls{<++>}<Space><++><Esc>?gls<Enter>"_i<Esc>

" Insert new glossary environment
 autocmd FileType tex inoremap <Leader>gls \newglossaryentry{<++>}<CR>{<CR>name={<++>},<CR>description={<++>}<CR>}<CR><++><Esc>?newglossaryentry<Enter>"_i<Esc>

" Insert new acronym environment
autocmd FileType tex inoremap <Leader>acr \newglossaryentry{<++>}<CR>{<CR>type=\acronymtype,<CR>name={<++>},<CR>description={<++>},<CR>first={<++>}<CR>}<CR><++><Esc>?newglossaryentry<Enter>"_i<Esc>
" autocmd FileType tex inoremap ;acr \newglossaryentry{<++>}<CR>{<CR>type=\acronymtype,<CR>name={<++>},<CR>description={<++>},<CR>first={\glsentrydesc{<++>} (\glsentrytext{<++>})},<CR>plural={<++>},<CR>firstplural={\glsentrydescplural{<++>} (\glsentryplural{<++>})}<CR>}<CR><++><Esc>?newglossaryentry<Enter>"_i<Esc>






"""""""""""""""""""""""""""""""""""""""BASH"""""""""""""""""""""""""""""""""""""""""""""

autocmd FileType sh inoremap <leader>if if<Space>[[<Space>$?<Space>-ne<Space>0<Space>]];<Space>then<CR>echo<Space>'Failed<Space>to<Space><++>'<CR>exit<Space>1<CR>fi<Esc>?Failed<Enter>"_i<Esc>

autocmd FileType sh inoremap <leader>oc #<Space>Checking<Space>if<Space><++><CR>operationCheck<Space>$?<Space>"Failed<Space>to<Space><++>."<Esc>?Checking<Enter>"_i<Esc>
