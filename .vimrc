""""""""""""""""" Configuración global"""""""""""""""""""""""
"Establece el fondo transparente al arrancar
autocmd VimEnter * :NoBackground
"font
"set hidden
set hidden
"pestañas
set showtabline=2

" Establece la codificación de script en UTF-8
scriptencoding utf-8
" Desactiva el modo de compatibilidad con versiones antiguas de Vim
set nocompatible
" Habilita la modificación del buffer actual
set modifiable
" Muestra los números de línea (y/o en orden relativo)
set relativenumber
set number 
" Habilita la funcionalidad del mouse (seleccionar, hacer clic, etc.)
set mouse=a
" Establece el ancho de la columna de números de línea en 1
set numberwidth=1
" Habilita el portapapeles integrado con el sistema operativo
set clipboard=unnamedplus
" Habilita la detección automática del tipo de archivo y activa los plugins correspondientes
filetype plugin on
" Habilita el resaltado de sintaxis
syntax on
" Muestra el comando actual en la línea de comandos
set showcmd
" Muestra la regla en la parte superior de la ventana
set ruler
" Resalta la línea actual con un fondo diferente
set cursorline
" Resalta la columna actual con un fondo diferente
set cursorcolumn
" Establece la codificación de caracteres en UTF-8
set encoding=utf-8
" Resalta el carácter de cierre correspondiente cuando se coloca el cursor sobre un paréntesis, corchete, etc.
set showmatch
" Establece el ancho de tabulación en 2 espacios
set sw=2
" Establece el tamaño de tabulación en 4 espacios
set ts=4
" Muestra el estado en la última línea de la ventana
set laststatus=2
" Desactiva el modo de visualización actual
set noshowmode
" Resalta los resultados de búsqueda mientras escribes
set hlsearch
" Divide nuevas ventanas debajo de la ventana actual
set splitbelow
" Divide nuevas ventanas a la derecha de la ventana actual
set splitright
" Configura los caracteres de relleno para las líneas verticales en NERDTree│
set fillchars=vert:\|



"""""""""""""""" archivo de configuración de plugins """"""""""""""
"source ~/.vim/plugins.vim

"""""""""" Archivo de configuración de teclas de acceso rápido """"""
"source ~/.vim/keybindings.vim


let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<cr>
nnoremap <Leader>f m'gg=G`'
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>l :LiveServer start<CR>
nmap <Leader>j :bnext<CR>
nmap <Leader>k :bprev<CR>
nmap <Leader>md <Plug>MarkdownPreview
nmap <Leader>b :NoBackground<CR>
nnoremap <leader>g :set background=dark<CR>
iab arrf () => {} <left><left> <BS>
nnoremap <leader>ff :Files!<CR>
nnoremap <leader>fl :BLines!<CR>

""""""""""""""""""""""""""""""""""""""""""""


" Configuración de plugins con Plug
call plug#begin('~/.vim/plugged')

" Command line Fuzzy Finder FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autocompletado y autocompletado avanzado para Vim y Neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Esquema de colores retro y atractivo para Vim
Plug 'morhetz/gruvbox'


" Mejora el resaltado de sintaxis para archivos JavaScript
Plug 'jelera/vim-javascript-syntax'

" Barra de estado atractiva y personalizable en la parte inferior de la ventana
Plug 'vim-airline/vim-airline'

" Temas adicionales para la barra de estado de Airline
Plug 'vim-airline/vim-airline-themes'

" Facilita la navegación rápida dentro del archivo
Plug 'easymotion/vim-easymotion'

" Explorador de archivos en forma de árbol
Plug 'scrooloose/nerdtree'

" Navegación fluida entre ventanas de Vim y ventanas de Tmux
Plug 'christoomey/vim-tmux-navigator'

" Íconos de alta calidad para mejorar la apariencia visual
Plug 'ryanoasis/vim-devicons'

" Resaltado de sintaxis para nombres de archivo y directorio en NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Facilita la manipulación de pares de delimitadores alrededor de selecciones de texto
Plug 'tpope/vim-surround'

" Extiende la capacidad de repetición de acciones con el comando '.'
Plug 'tpope/vim-repeat'

" Integración de Git en Vim
Plug 'tpope/vim-fugitive'

" Inserta automáticamente pares de delimitadores y funciones útiles
Plug 'jiangmiao/auto-pairs'

" Autocompletado automático de etiquetas HTML y XML
Plug 'alvan/vim-closetag'

" Muestra líneas verticales en la columna de indentación actual
Plug 'Yggdroot/indentLine'

" Resalta bloques de código anidados con colores diferentes
Plug 'luochen1990/rainbow'

" Resaltado de sintaxis mejorado para archivos JavaScript
Plug 'yuezk/vim-js'

" Formateo y resaltado de sintaxis para archivos JSX (React)
Plug 'maxmellon/vim-jsx-pretty'

" Facilita la realización de comentarios en bloques de texto seleccionados
Plug 'tpope/vim-commentary'

" Resalta valores de colores CSS/SCSS y muestra el color real
Plug 'ap/vim-css-color'

" Previsualización de archivos Markdown en el navegador
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Extiende la funcionalidad de Emmet para crear y expandir rápido código HTML/CSS
Plug 'mattn/emmet-vim'

" Sistema de wiki en Vim para tomar notas y organizar información
Plug 'vimwiki/vimwiki'

" Previsualización y actualización automática de archivos HTML/CSS/JS en el navegador
"Plug 'manzeloth/live-server'

" Previsualización y depuración de aplicaciones web en tiempo real
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" " Autocompletado y soporte de sintaxis para el lenguaje de plantillas Pug
" Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }

" " Soporte de sintaxis mejorado para el lenguaje de plantillas Pug
" Plug 'digitaltoad/vim-pug'

" " Soporte de sintaxis para HTML5 y comandos útiles
" Plug 'othree/html5.vim'

" Snippets para agilizar la escritura de código en React
" Plug 'SirVer/ultisnips' 
Plug 'mlaursen/vim-react-snippets'
Plug 'mlaursen/mlaursen-vim-snippets'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"snippets

"Este código configura el comportamiento del autocompletado y la expansión de snippets en coc.nvim. Define cómo se manejará la tecla <TAB> durante la inserción y cómo se expandirán los snippets en función de ciertas condiciones. También define el atajo para avanzar al siguiente punto de inserción de un snippet utilizando la tecla <TAB>.

inoremap <silent><expr> <TAB>
	  \ coc#pum#visible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ CheckBackspace() ? "\<TAB>" :
	  \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_disable_startup_warning = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Proporciona funciones de recarga automática y actualización del árbol de archivos en NERDTree cuando se detectan cambios en los directorios o cuando el cursor permanece inactivo durante un tiempo.

"nerdtree autoreload
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

"nerdtree Enabling Autorefresh for change in the current directory
augroup DIRCHANGE
  au!
  autocmd DirChanged global :NERDTreeCWD
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


colorscheme gruvbox
set background=dark
let g:rainbow_active = 1
let g:gruvbox_contrast_dark = "hard"
command! NoBackground highlight Normal ctermbg=NONE

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let NERDTreeQuitONOpen=1
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
"emmet shortcuts
"let g:user_emmet_mode='n' "only enable normal mode fuctions.
let g:user_emmet_leader_key=','
let g:vimwiki_list = [{'path': '~/vimwiki/',
	  \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown'}

"indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_term =169


