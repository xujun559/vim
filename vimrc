set nocompatible

syntax enable

let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BEING Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" required!
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'

"
" My Bundles
"

" Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-rails.git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'L9'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'FuzzyFinder'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'wincent/Command-T'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'ctrlp.vim'
nmap <c-p><c-p> :CtrlP <cr>
nmap <c-p><c-o> :CtrlPCurWD <cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Solarized'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM Improve
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'Valloric/YouCompleteMe'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'rizzatti/funcoo.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'rizzatti/dash.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'The-NERD-Commenter'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'matchit.zip'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" " Default mapping
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader><Leader>'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'airblade/vim-gitgutter'
" highlight clear SignColumn
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'junegunn/vim-easy-align'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'nginx.vim'
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Buffer Switcher
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Usage: <Leader>be
Bundle 'bufexplorer.zip'
vnoremap <silent> <Enter> :EasyAlign<Enter>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" VIM StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_theme = 'solarized'
highlight Search guifg=#b58900 gui=reverse guibg=NONE term=reverse ctermfg=NONE cterm=reverse ctermbg=NONE
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#hunks#enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Programming Plugins
"

" ActionScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'actionscript.vim'
au BufNewFile,BufRead *.as setf actionscript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Javascript && CSS && HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "pangloss/vim-javascript"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'mattn/emmet-vim'
let g:user_zen_leader_key = '<c-y>'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'groenewege/vim-less'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'hail2u/vim-css3-syntax'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'Sass'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'UltiSnips'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'phtml.vim'
Bundle 'html5.vim'
Bundle 'HTML5-Syntax-File'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'The-NERD-tree'
" 设置相对行号
nmap ,<Tab> :NERDTree <cr> :set rnu <cr>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on     " required!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
"  see :h vundle for more details or wiki for FAQ
"  NOTE: comments after Bundle command are not allowed..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start
set number
set ru

"colorscheme murphy
"colorscheme desert
"colorscheme slate

set fileencodings=utf-8,cp936,latin1,ucs-bom
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
"set autoindent
"set smartindent
"set cindent

"set textwidth=80
set linebreak
set backspace=2
set hlsearch
set incsearch
set showmatch

set listchars=tab:▸\ ,trail:·
set list

"set mouse=a

func SetEncodingUTF8()
    :set encoding=utf8
    :set termencoding=gbk
endfun

nmap <C-S-t> :sp<bar>:b#<CR>
nmap <C-j>  :tabnext <CR>
nmap <C-k>  :tabprevious <CR>
map  <F11>     :call SetEncodingUTF8() <CR>
imap <F11>     <Esc>:call SetEncodingUTF8() <CR>
map <F2> :nohl <CR>
map <F6> :set invpaste <CR>
map <F5> :set invnumber <CR>
nnoremap <silent> <F12> :A<CR>

set wmh=0

nmap <leader>w <c-w>
nmap <c-w>e <c-w>_
nmap <c-w>r <c-w>=

nmap <c-k> <c-w>k<c-w>=
nmap <c-j> <c-w>j<c-w>=
nmap <c-h> <c-w>h<c-w>=
nmap <c-l> <c-w>l<c-w>=

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    filetype plugin on
    filetype indent on

    autocmd FileType h,c,cc,cpp,sh set ts=2 sw=2 cindent expandtab
    autocmd FileType js,javascript,html,scss,css,json,less set ts=4 sw=4 autoindent expandtab
    autocmd FileType php,python,phtml set ts=4 sw=4 autoindent expandtab
    autocmd FileType as,actionscript set ts=4 sw=4 expandtab autoindent smartindent
endif
