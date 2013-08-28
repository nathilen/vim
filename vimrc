colorscheme vividchalk
set shell=/bin/sh
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set number
set autoindent
set smartindent
set scrolloff=3
set ai

set showcmd
set ruler
set paste
set incsearch
set showmatch
set dictionary=/usr/share/dict/words
set hlsearch


syntax on
filetype on
filetype indent on
filetype indent plugin on

nmap K i<cr><esc>k$
nmap z :w <enter>
nnoremap <F5> :GundoToggle<CR>

imap ;so System.out.println(); <left><left>
imap ;ne <esc>/;<cr>a
imap <S-CR> <CR><CR>end<Esc>-cc

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map <F2>  :NERDTree<CR>

execute pathogen#infect()

autocmd BufEnter * Rvm

autocmd FileType ruby compiler ruby
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                    \   if &omnifunc == "" |
                    \           setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
endif
