set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:gruvbox_italic=0
set t_Co=256
set background=dark
syntax enable " enable syntax processing
colorscheme gruvbox

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set noet ci pi sts=0 sw=4 ts=4
" set expandtab " tabs are spaces

set number " show line numbers
set showcmd " show command in bottom bar
set autoread " automatically reload unchanged files


set cursorline          " highlight current line
" Set cursorline colors
" highlight CursorLine ctermbg=blue
" Set color of number column on cursorline
" highlight CursorLineNR ctermbg=235 ctermfg=white
" hi cursorlinenr ctermfg=red

filetype indent on " load filetype-specific indent files
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch

" Split config
nnoremap <C-j> <C-w><c-j>
nnoremap <C-k> <C-w><c-k>
nnoremap <C-l> <C-w><c-l>
nnoremap <C-h> <C-w><c-h>

set laststatus=2
set statusline=%f

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent

set splitbelow
set splitright

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader="," " leader is comma

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>

" turn off search highlight
" nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader><space> :noh<CR>

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Breaking the habbit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
