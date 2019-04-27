set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-surround'
Plugin 'eapache/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'Tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'thinca/vim-visualstar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 't9md/vim-choosewin'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" python-mode settings
let g:pymode_rope_completion = 0
let g:pymode_options_max_line_length = 120

let g:ultisnips_python_style = 'google'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_server_python_interpreter = '/usr/bin/python'  
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" invoke choose win with '-'
nmap  -  <Plug>(choosewin)
" to use overlay feature
let g:choosewin_overlay_enable = 1
" for vim mouse support in tmux/screen

set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

set hlsearch
set incsearch
set cursorline
set number relativenumber

"scroll down with space
nmap <Space>  

colorscheme koehler
