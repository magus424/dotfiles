" vim: ts=4 sts=4 sw=4 et ai

set autoread
set autowrite
set backspace=indent,eol,start
set clipboard+=unnamedplus
set diffopt+=iwhite
set history=50
set hlsearch
set incsearch
set laststatus=2
set list
set listchars=tab:→\ ,trail:∙
set fillchars+=vert:│
set nocindent
set gdefault
set ignorecase
set smartcase
set number
set redrawtime=5000
set ruler
set scrolloff=2
set sessionoptions-=options
set shell=/bin/bash
set showcmd
set showmatch
set showmode
set showtabline=2
set splitright
set tabpagemax=100
set textwidth=0
set t_ut=
set title
set viminfo='20,\"50

set autoindent
set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4

set wildmenu
set wildignore+=.git/*,.hg/*,.svn/*,*.orig          " version control
set wildignore+=._*,.DS_Store                       " OSX nonsense
set wildignore+=*.aux,*.out,*.toc                   " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg      " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest    " compiled object files
set wildignore+=*.spl,.sw?,.py?                     " more binary stuff

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.o,.info,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx

syntax on
set background=dark
colorscheme mycolors

if has("autocmd")
    filetype plugin on
    filetype indent on
    let php_folding   = 2
    let php_sql_query = 1
    let php_baselib   = 1
    au BufEnter Debugger* setlocal scrolloff=0
endif

let g:python3_host_prog = "/home/linuxbrew/.linuxbrew/bin/python3"
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

" Highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"" Keybinds

let mapleader=","
let maplocalleader="\\"
nmap ; :
xmap ; :

" Alt+P toggles paste
nnoremap <silent> <Esc>p :set invpaste<CR>
nnoremap <silent> <A-p> :set invpaste<CR>

" // clears search highlight
nnoremap <silent> // :noh<CR>

" Space toggles folds
nnoremap <Space> za
xnoremap <Space> za

" z0 = recursively open top-level fold we're in
nnoremap z0 zCz0

" Tab indenting
nnoremap <Tab> >>
nnoremap <S-Tab> <<

xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

" Quick word jumping with Ctrl+Arrows
inoremap <Esc>[C <S-Right>
inoremap <Esc>[D <S-Left>

nnoremap <Esc>[C <S-Right>
nnoremap <Esc>[D <S-Left>

" Fix shift+arrow keys
inoremap <Esc>[A <Up>
inoremap <Esc>[B <Down>
nnoremap <Esc>[A <Up>
nnoremap <Esc>[B <Down>
xnoremap <Esc>[A <Up>
xnoremap <Esc>[B <Down>

" Tab movement keys
nnoremap <silent> <Esc><Right> :tabn<CR>
nnoremap <silent> <Esc><Left> :tabp<CR>
nnoremap <silent> <M-Right> :tabn<CR>
nnoremap <silent> <M-Left> :tabp<CR>

" Change Y to copy from current character to end of line
" (mimic y0's behavior but backwards)
noremap Y y$

" Make p in Visual mode replace the selected text with the "" register.
xnoremap p "_dP
xnoremap P "_dP

" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
nnoremap <silent> <Leader>d "_d
xnoremap <silent> <Leader>d "_d

" <Leader>y, <Leader>yy, etc to yank to system clipboard
nnoremap <silent> <Leader>y "+y
xnoremap <silent> <Leader>y "+y

" <Leader>p, <Leader>pp, etc to paste from system clipboard
nnoremap <silent> <Leader>p "+p
xnoremap <silent> <Leader>p "+p
nnoremap <silent> <Leader>P "+P
xnoremap <silent> <Leader>P "+P

" Ctrl+S to save
nmap <C-s> :write!<CR>
imap <C-s> <C-o>:write!<CR>

" Remove annoying default Ctrl+B behavior
nmap <C-b> <nop>
imap <C-b> <nop>

" :w!! = write a file as sudo
cmap W!! w !sudo tee % > /dev/null

" Map _$ to trim whitespace on the end of lines
function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
endfun

nmap <silent> _$ :call Preserve("%s/\\s\\+$//e")<CR><C-l>
