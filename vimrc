"-=-=-=-=-=-=-=-=-=-
"четверг,  9 января 2020 г. 18:54:40
"-=-=-=-=-=-=-=-=-=-

 map <F2> <S-O>"-=-=-=-=-=-=-=-=-=-<C-m>"<C-R>=strftime("%c")<CR><C-m>"-=-=-=-=-=-=-=-=-=-<Esc>
 map <F3> :!git add -A; git commit -m "777 - стабильный код."<CR>
 map !git :!git ?
 set nocp "Режим совместимости с vi (отключение) ystm
 set expandtab
 set autoindent

 set laststatus=2
 set statusline=%f%m%r%h%w\ \  
 set statusline +=%{FugitiveStatusline()}
 set statusline +=\ \ b\%n
 set statusline +=%=
 set statusline +=\ Olhovka-90\ ряд:%2l\ %=место:%2c\ [%2p%%]

 set list
 set lcs=tab:>-,trail:_
 " set showbreak=\ \ \ 

 set encoding=utf-8
 set keymap=russian-jcukenmac
 " set spell
 " set spelllang=en,ru
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
 set autowriteall 


    "my map
 let mapleader=" "
 map <Leader> <Plug>(easymotion-prefix)
 noremap <Leader>w :w<cr>
 map <C-n> :NERDTreeToggle<cr>
 inoremap <C-j> <C-c>
 map <leader>§ :so%<cr>
 map <leader><Space> :
 nmap gm :LivedownToggle<CR>

 " -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 call plug#begin('~/.vim/plugged')
 "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 Plug 'tpope/vim-fugitive'
 " Plug 'vim-scripts/vim-auto-save'
 Plug 'airblade/vim-gitgutter'
 Plug 'nanotech/jellybeans.vim'
 Plug 'shime/vim-livedown'
 Plug 'easymotion/vim-easymotion'
 Plug 'leafgarland/typescript-vim'
 Plug 'tpope/vim-sensible'
 Plug 'tpope/vim-surround'
 " Plug 'scrooloose/nerdtree'
 Plug 'tpope/vim-commentary'
 Plug 'apple/swift'
 Plug 'mhartington/oceanic-next'
 Plug 'arcticicestudio/nord-vim'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 " Plug 'brooth/far.vim'
 " Plug 'mileszs/ack.vim'

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
        aug ystm
                au BufRead *.ystm 0 r /Users/ibo7/.ystm/000.ystm
                au BufRead *.ystm normal `[3gcc`]o
                au BufRead *.rux set nu
        aug END
endif
