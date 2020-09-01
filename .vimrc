" pathogen

execute pathogen#infect()


" vim-plug

call plug#begin('~/.vim/plugged')       " specify a directory for plugins
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
call plug#end()                         " initialize plugin system



" General

set history=500         " sets how many lines of history VIM has to remember
filetype indent on      " load filetype-specific indent files
filetype plugin on      " enable filetype plugin
set autoread            " set to auto read when file is changed from outside



" Colors and Visuals

syntax enable           " turn on syntax highlighting
set background=dark     " set background color
set termguicolors       " turn on true color mode
" highlight Comment cterm=italic gui=italic

" colorscheme palenight   " set color scheme
" let g:gruvbox_italic=1
" colorscheme dracula

" let g:dracula_italic=0
" colorscheme dracula     " set color scheme

colorscheme gruvbox



" Status line

set laststatus=2        " always show the status line
set noshowmode          " do not show insert again



" Spaces, Tabs and Indentation

set tabstop=4			" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set shiftwidth=4        " number of spaces for an indent
set expandtab			" tabs are spaces
set smarttab            " be smart when using tabs
set ai                  " auto indent
set si                  " smart indent
set wrap                " wrap lines



" UI Config

set number				" show line numbers
set showcmd				" show last command in bottom bar
set cursorline			" highlight current line
set wildmenu			" visual autocomplete for command menu
set lazyredraw			" redraw only when we need to
set showmatch			" highlight matching [{()}]
set mat=2               " how many tenths of a second to blink when matching brackets
set so=8                " set 8 lines to the cursor - when moving vertically using j/k
set ruler               " always show current position
set hid                 " buffer becomes hidden when it is abandoned
set foldcolumn=1        " add a bit extra margin to the left

" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" no annoying sound on errors
set noerrorbells
set novisualbell



" Leader shortcuts

let mapleader=","       " change leader from \ to ,

" remap ESC
inoremap fj <esc>
inoremap jf <esc>
" inoremap jk <esc>
" inoremap kj <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
" nnoremap <leader>s :mksession<CR>

" toggle nerdcommenter
nmap <leader>/ <plug>NERDCommenterToggle
vmap <leader>/ <plug>NERDCommenterToggle



" Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set magic               " turn on regular expressions
set smartcase           " be smart about cases when searching
set ignorecase          " ignore case when searching

" remap :nohlsearch to leader space
nnoremap <leader><space> :nohlsearch<CR>



" Folding

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" remap space to open/close folds
nnoremap <space> za



" Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line using B and E
" nnoremap B ^
" nnoremap E $

" remove $/^ functionality
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]



" vim-airline

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



" tmux

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif



" Autogroups

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END



" Backups

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup



" Custom helper functions

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files
" this is called on buffer write in the autogroup above
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
