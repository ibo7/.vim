"-=-=-=-=-=-=-=-=-=-
"пятница, 27 декабря 2019 г. 01:43:39
"-=-=-=-=-=-=-=-=-=-
 map <F2> <S-O>"-=-=-=-=-=-=-=-=-=-<C-m>"<C-R>=strftime("%c")<CR><C-m>"-=-=-=-=-=-=-=-=-=-<Esc>
 map <F3> :!git add -A; git commit -m "777 - стабильный код."<CR>
 map !git :!git ?
 set nocp "Режим совместимости с vi (отключение) ystm
 set expandtab
 set autoindent

 set laststatus=2   " всегда показывать строку статуса
 set statusline=%f%m%r%h%w\ \  
 set statusline +=%{FugitiveStatusline()}
 set statusline +=\ \ b\%n
 set statusline +=%=
 set statusline +=\ Ольховка-90,\ ряд:%2l\ %=место:%2c\ [%2p%%]

 set list
 set lcs=tab:>-,trail:_
 " set showbreak=\ \ \ 

 set encoding=utf-8
 set keymap=russian-jcukenmac
 set spell
 set spelllang=en,ru
 setlocal spellfile=~/.vim/spell/ru.utf-8.add
 " setlocal spellfile+=~/.vim/spell/term.utf-8.add
 set helplang=ru,en
 set number
 set textwidth=80
 set wrap
 set guifont=Menlo:h22
 set lines=28
 set columns=100
 set linebreak

 set hidden
 set ruler

 " my map
 " inoremap <C-j> <ESC>
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


if !exists("autocommands_loaded")
        let autocommands_loaded = 1
        au BufRead *.ystm r /Users/ibo7/.ystm/000.ystm
endif
