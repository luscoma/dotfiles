set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()       

" Base Configuration
filetype plugin indent on
syntax on
set shell=/bin/bash  " I use fish so use bash from vim
set number
colorscheme dracula
set fo+=j  " remove comment leader when joining comments

" 80 character wrap and marker
set wrap linebreak
set colorcolumn=80
set textwidth=80
