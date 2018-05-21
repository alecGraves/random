" Note, to set this up, run ':PluginInstall' in vim
" Then to set up autocomplete,
"
" cd ~/.vim/bundle/YouCompleteMe && python install.py
"

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" color schemes
Plugin 'jnurmine/Zenburn'

" make python look pretty
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" display files
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'

" git visualization and commands from vim
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" autocompletion
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar (normal command is za)
nnoremap <space> za

" Add the proper PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" indentation for web
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" use unicode
set encoding=utf-8

" make code look pretty
let python_highlight_all=1
syntax on
colorscheme zenburn

" nuber the lines
set nu

" use unix style line endings (file-format)
set ff=unix
