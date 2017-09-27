
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

Plugin 'rdnetto/YCM-Generator'

Plugin 'junegunn/fzf' 
 
Plugin 'derekwyatt/vim-fswitch'

Plugin 'majutsushi/tagbar'

Plugin 'crucerucalin/qml.vim'

Plugin 'joshdick/onedark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
set number
set numberwidth=5

set mouse=a
 
syntax on
colorscheme onedark
 
set laststatus=2 "statusline
set noshowmode

" Преобразование Таба в пробелы
set expandtab
" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" отключаем бэкапы и своп-файлы
set nobackup 	     " no backup files
set noundofile       " no new format backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" по умолчанию, окно с тэгами отображается справа, что не привычно.
let g:tagbar_left = 1

" переназначение

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" назначение новых сочетаний

map <F6> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>
map <C-w> :bn<CR>
map <C-x> :bd<CR>

" Переключение между файлом с прототипами <-> реализацией (например: .h <-> .cpp)
nmap <F2> :FSHere<CR>

" Tagbar
nmap <F8> :Tagbar<CR>

" HexView
nmap <F9> :%!xxd<CR>

" vsplit
nmap <F10> :vsplit<CR>

" YouComleteMe
nmap <leader>d :YcmCompleter GoTo<CR>

