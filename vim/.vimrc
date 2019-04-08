set nocompatible
set backspace=indent,eol,start
if has("vms")
    set nobackup
else
    set backup
    set backupdir=~/.vim/backup
    set dir=~/.vim/swp
    source ~/.vim/autoclose.vim
    "source ~/.vim/pub_indent.vim
endif
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8                     " better default than latin1
    setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif
set history=50
set showcmd
set incsearch   " Show search results as input is added.
set ignorecase  " This is required for smartcase to work
set smartcase   " Search with case only if case is used in search definition
set ruler
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
" Show tabs as >----
set list
set listchars=tab:>-
syntax on
set autoindent
map Q gq

if &t_Co > 2 || has("gui_running")
    syntax on
    set spell spelllang=en_us
    set spellfile=$HOME/.vim/spell/en.utf-8.add
    colorscheme pow
    " Show trailing whitespace and spaces before a tab:
    autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
    set hlsearch    " Search Highlighting
    au BufNewFile,BufRead *.md    setlocal ft=markdown
    au BufNewFile,BufRead *.t     setlocal ft=perl
    au BufNewFile,BufRead *.ts    setlocal filetype=typescript
    au BufNewFile,BufRead *.toml  setlocal ft=toml
endif

if has("autocmd")

    filetype plugin indent on

    augroup vimrcEx
    au!

    autocmd FileType text setlocal textwidth=78

    autocmd BufReadPost *
	\ if line("'\"") <= line("$") |
	\   exe "normal! g'\"" |
        \ endif

    augroup END

    augroup AutoSaveFolds
        autocmd!
        autocmd BufWinLeave * mkview
        autocmd BufWinEnter * silent loadview
    augroup END

else
    set autoindent
endif
