set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tomtom/tcomment_vim'
call vundle#end()       

" Base Configuration
filetype plugin indent on
syntax on
set shell=/bin/bash  " I use fish so use bash from vim
set number
colorscheme dracula
set fo+=j  " remove comment leader when joining comments
set incsearch
set ruler

" 80 character wrap and marker
set wrap linebreak
set colorcolumn=80
set textwidth=80

" Use spaces instead of tabs
set expandtab		" Expand tabs to spaces
set tabstop=8		" Tab characters display as 8 spaces
set softtabstop=2       " Pressing tab inserts 2 spaces
set shiftwidth=2	" shifing << and >> insert 2 spaces

