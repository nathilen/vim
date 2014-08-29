colorscheme vividchalk  "set my colorscheme

set shell=/bin/sh  "shell to use
set dictionary=/usr/share/dict/words
set tabstop=2 
set shiftwidth=2
set pastetoggle=<F5> "toggling paste mode
set mouse=a          "enable the mouse

set expandtab
set smarttab  "insert tabs on the start of a line according shiftwidth and not tabstop
set number      "show line number
set autoindent  
set smartindent
set scrolloff=3
set ai

set showcmd     "show incomplete command
set ruler
set nopaste
set showmatch   "show matching parathensis
set hlsearch    "highlight matches
set incsearch   "show search match as I type

"disabling vim backup
set nobackup
set noswapfile

syntax on
filetype on
filetype indent plugin on "load filetype plugins and indentation

""""""""""""""NERDTree""""""""""""""""""""""""""""
"using arrows for NERDTree directories
let g:NERDTreeDirArrows=0

"F2 start NERDTree
map <F2>  :NERDTreeToggle<CR>

"""""""GENERAL"""""""""""""""""""""""""""""""""""
let mapleager = ","
let g:mapleader = ","

nmap K i<cr><esc>k$
nmap z :w <enter>
nmap <Leader>q :qa!<cr>

"alternate between files
nnoremap <Leader><Leader> <c-^>   

"substitute all occurrences of the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"navigate through windows with Ctrl + key
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

"quick edit and reload of vimrc
nmap <silent> <Leader>ev :e ~/.vimrc<CR>
nmap <silent> <Leader>sv :so ~/.vimrc<CR>

"this trick will help when you edit a file you were supposed to sudo to. no
"need to reopen the file
cmap w!! w !sudo tee > /dev/null %

""""""Gundo"""""""""""""""""""""""""""""""""""
nnoremap <F5> :GundoToggle<CR>

""""""""""Java specific"""""""""""""""""""""""""""
imap ;so System.out.println(); <left><left>
imap ;ne <esc>/;<cr>a
imap <S-CR> <CR><CR>end<Esc>-cc

""""""""""auto load new plugins using pathogen"""""""""""""""
execute pathogen#infect()

"""""""""""""""""Ruby""""""""""'"""""""""""""""""""""""
autocmd FileType ruby compiler ruby

"""""""""""""""javascript plugin"""""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()

"""""""""""""""""""""Autocommand"""""""""""""""""""
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                    \   if &omnifunc == "" |
                    \           setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
endif
