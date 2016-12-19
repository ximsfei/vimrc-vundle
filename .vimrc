“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Settings
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
syntax enable
syntax on
set cul             " Highlight the screen line of the cursor with CursorLine
"set cuc             " Highlight the screen column of the cursor with CursorColumn
set magic
set shortmess=atI
autocmd InsertEnter * se cul    "starting Insert mode
set ruler           " Show the line and column number of the cursor position, separated by a comma.
set showcmd
"set whichwrap+=<,>,h,l     " Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in the line.
set scrolloff=3     " Minimal number of screen lines to keep above and below the cursor.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2

set autoindent
set cindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set number
set relativenumber
set history=1000

set hlsearch
set incsearch

set showmatch
set matchtime=1

set nows                    " nowrapscan
set noeb                    " noerrorbells
set novb                    " novisualbell
set nobackup
set noswapfile

set langmenu=zh_CN.UTF-8
set helplang=cn

set cmdheight=2
set completeopt=preview,menu

"set foldenable
"set foldcolumn=0
"set foldmethod=indent
"set foldlevel=3
"set foldopen-=search        " don't open folds when you search into them
"set foldopen-=undo          " don't open folds when you undo stuff
"set foldclose=all
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

set confirm
set ignorecase smartcase

set linespace=0
set wildmenu
set backspace=2

"set mouse=a
set selection=exclusive
"set selectmode=mouse,key

set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set iskeyword+=_,$,@,%,#,-
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Settings end
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””

“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" keyboard commands
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
map <F2> :Tlist<CR>
imap <F2> <ESC> :Tlist<CR>
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" keyboard commands end
“”””””””””””””””””””””””””””””””””””””””””””””””””””””””"

“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Tag list (ctags)
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Sort_Type = "name"
let Tlist_Show_One_File = 1
let Tlist_Compart_Format = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 0

"set tags=tags
"set autochdir
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Tag list (ctags) end
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””

“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" NERDTree
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeWinPos = 'right'

set termencoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" NERDTree end
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””

“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Vundle.vim
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin ‘ximsfei/cscope_maps’
Plugin ‘scrooloose/nerdtree’

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin ‘taglist.vim’
Plugin ‘winmanager’

" Git plugin not hosted on GitHub
“”Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
“”Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
“”Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
“”Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””
" Vundle.vim end
“””””””””””””””””””””””””””””””””””””””””””””””””””””””””