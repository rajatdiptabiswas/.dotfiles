" Plugins

" vim-plug

call plug#begin('~/.vim/plugged')       " specify a directory for plugins
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'mbbill/undotree'
" Plug 'tpope/vim-fugitive'
call plug#end()                         " initialize plugin system



" General

set history=500         " sets how many lines of history Vim has to remember
filetype indent on      " load filetype-specific indent files
filetype plugin on      " enable filetype plugin
set autoread            " set to auto read when file is changed from outside



" Status Line

set laststatus=2        " always show the status line
set noshowmode          " do not show insert again



" Spaces, Tabs, and Indentation

set tabstop=4           " number of visual spaces per tab
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " number of spaces for an indent
set expandtab           " tabs are spaces
set smarttab            " be smart when using tabs
set autoindent          " auto indent
set smartindent         " smart indent
set wrap                " wrap lines



" Clipboard

vnoremap <C-x> :!xclip -selection clipboard<CR>
vnoremap <C-c> :w !xclip -selection clipboard<CR><CR>


" UI Config

set number                      " show line numbers
set showcmd                     " show last command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when needed
set showmatch                   " highlight matching [{()}]
set matchtime=2                 " how many tenths of a second to blink when matching brackets
set scrolloff=10                " set 10 lines to the cursor when moving vertically using j/k
set ruler                       " always show current position
set hidden                      " buffer becomes hidden when it is abandoned
set foldcolumn=1                " add extra margin to the left
set backspace=eol,start,indent  " add backspace defaults
set whichwrap+=<,>,h,l          " allow cursor left/right to move to previous/next line at beginning/end of line 
set noerrorbells                " disable error bells



" Colors and Visuals

syntax enable           " turn on syntax highlighting
set background=dark     " set background color
set termguicolors       " turn on true color mode
set encoding=utf-8      " turn on UTF-8 encoding
highlight Comment cterm=italic gui=italic

colorscheme dracula
" let g:gruvbox_italic=1
" colorscheme gruvbox



" Leader Shortcuts

let mapleader=","       " change leader from \ to ,

" remap esc
inoremap jk <esc>
inoremap kj <esc>

" save session
" nnoremap <leader>s :mksession<CR>

" toggle relative line numbering
nmap <leader>n :call ToggleNumber()<CR>



" Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set magic               " turn on regular expressions
set smartcase           " be smart about cases when searching
set ignorecase          " ignore case when searching

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



" coc.nvim

" use <tab> to trigger completion and navigate to the next complete item
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <Tab>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()

" use <cr> to confirm completion
" inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" make <cr> select the first completion item and confirm the completion when no item has been selected
" inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <Tab> and <S-Tab> to navigate the completion list
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
" inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"



" fzf

" toggle fzf
" nmap <leader>f :Files<CR>



" NERDTree

" toggle NERDTree
" nmap <leader>nt :NERDTreeToggle<CR>



" NERD Commenter

" toggle NERD Commenter
nmap <leader>/ <plug>NERDCommenterToggle
vmap <leader>/ <plug>NERDCommenterToggle

" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" allow commenting and inverting empty lines
let g:NERDCommentEmptyLines = 1
" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



" undotree

" toggle undotree
" nmap <leader>ut :UndotreeToggle<CR>



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
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md call <SID>StripTrailingWhitespaces()
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



" Custom Helper Functions

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
" called on buffer write in the autogroup above
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

