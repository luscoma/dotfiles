set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'dag/vim-fish'
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tomtom/tcomment_vim'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'chrisbra/csv.vim'
Plugin 'google/vim-jsonnet'
Plugin 'hashivim/vim-terraform'
call vundle#end()       

" Base Configuration
filetype plugin indent on
syntax on
set shell=/bin/bash  " I use fish so use bash from vim
set number
colorscheme dracula
set fo+=j  " remove comment leader when joining comments
set fo-=o  " don't insert the comment symbol on o & O
set incsearch
set ruler
set backspace=indent,eol,start
set laststatus=2
set shortmess+=c  " No idea but autcomplete is much faster
packadd! matchit  " enables fancier movement with %

" 80 character wrap and marker
set wrap linebreak
set colorcolumn=80
set textwidth=80

" Use spaces instead of tabs
set expandtab		" Expand tabs to spaces
set tabstop=8		" Tab characters display as 8 spaces
set softtabstop=2       " Pressing tab inserts 2 spaces
set shiftwidth=2	" shifing << and >> insert 2 spaces

" Custom Key Bindings
nnoremap <Leader>[  :tabprev<CR>
nnoremap <Leader>]  :tabnext<CR>
inoremap <C-k> <ESC>
vnoremap <C-k> <ESC>
inoremap <C-c> <ESC>


" Use \space for trigger completion.
inoremap <silent><expr> <leader><space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for coc functions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
xmap <silent> <leader>f  <Plug>(coc-format-selected)
nmap <silent> <leader>f  <Plug>(coc-format-selected)

" Highlight the symbol and its references when holding the cursor.
set updatetime=500
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
