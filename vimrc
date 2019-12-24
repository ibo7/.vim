"-=-=-=-=-=-=-=-=-=-
"вторник, 24 декабря 2019 г. 19:04:57
"-=-=-=-=-=-=-=-=-=-
 map <F2> <S-O>"-=-=-=-=-=-=-=-=-=-<C-m>"<C-R>=strftime("%c")<CR><C-m>"-=-=-=-=-=-=-=-=-=-<Esc>
 map <F3> :!git add -A; git commit -m "777 - стабильный код."<CR>
 map !git :!git ?
 set nocp "Режим совместимости с vi (отключение)
 set expandtab
 set autoindent
 
 set laststatus=2   " всегда показывать строку статуса
 set statusline=%f%m%r%h%w\ \  
 set statusline +=%{FugitiveStatusline()}
 set statusline +=\ \ b\%n
 set statusline +=%=
 set statusline +=\ Ольховка-90,\ ряд:%2l\ %=место:%2c\ [%2p%%]

 set lcs=tab:>-,trail:_
 set showbreak=\ \ \ 

 set encoding=utf-8
 set keymap=russian-jcukenmac 
 set helplang=ru,en
 set number
 " set textwidth=80
 set guifont=Menlo:h22
 set lines=28
 set columns=100


 set hidden
 set ruler
 
 set hidden
 set ruler
 
 " my map
 inoremap <C-j> <ESC>
 let mapleader=';'
 map <Leader> <Plug>(easymotion-prefix)
 noremap <Leader>w :w<cr>
 map <C-n> :NERDTreeToggle<cr>
 map <leader>§ :so%<cr>
 map <leader>; :
 nmap gm :LivedownToggle<CR>

 " -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 call plug#begin('~/.vim/plugged')
 "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 Plug 'tpope/vim-fugitive'
 Plug 'vim-scripts/vim-auto-save'
 Plug 'airblade/vim-gitgutter'
 Plug 'nanotech/jellybeans.vim'
 Plug 'shime/vim-livedown'
 Plug 'easymotion/vim-easymotion'
 Plug 'leafgarland/typescript-vim'
 Plug 'tpope/vim-sensible'
 Plug 'tpope/vim-surround'
 Plug 'scrooloose/nerdtree'
 Plug 'tpope/vim-commentary'
 Plug 'mhartington/oceanic-next'
 Plug 'arcticicestudio/nord-vim'

 
 "Plug 'google/vim-maktaba'
 "Plug 'google/vim-codefmt'
 "Plug 'google/vim-glaive'
 "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
 call plug#end()

" colorscheme wombat256mod
" colorscheme jellybeans
colorscheme OceanicNext

 let g:jellybeans_overrides = {
 \    'Todo': { 'guifg': 'cccccc', 'guibg': 'f0f000',
 \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
 \              'attr': 'bold' },
 \    'Comment': { 'guifg': '666666' },
 \}

 " Настройка автосохранения плагина vim-auto-save
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0


