" tab completion
imap <tab> <C-P>

" various options
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set autochdir
set hlsearch
set incsearch
set ruler
set smartcase

" window stuff
set winminheight=0
nmap w <C-W>
nmap <C-N> <C-W>n<C-W>_:n .<CR>
nmap <C-J> <C-W>j<C-W>_
nmap <C-K> <C-W>k<C-W>_
imap <C-N> <ESC><C-N>
imap <C-J> <ESC><C-J>
imap <C-K> <ESC><C-K>

" fast test reruns
nmap ,t :w<CR>:!<UP><CR>
imap ,t <ESC>,t

" paste toggle
set pastetoggle=<C-O>

" Go syntax
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
