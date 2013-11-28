colorscheme vividchalk  "set my colorscheme

set shell=/bin/sh  "shell to use
set tabstop=2 
set shiftwidth=2
set expandtab
set smarttab
set number      "show line number
set autoindent  
set smartindent
set scrolloff=3
set ai

set showcmd     "show incomplete command
set ruler
set nopaste
set showmatch
set dictionary=/usr/share/dict/words
set hlsearch    "highlight matches
set incsearch   "incremental searching

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

"navigate through tabs with Ctrl + key
map <C-l> :tabn<CR> 
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

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
autocmd BufEnter * Rvm

"""""""""""""""javascript plugin"""""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()

"""""""""""""""""""""Autocommand"""""""""""""""""""
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                    \   if &omnifunc == "" |
                    \           setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
endif
