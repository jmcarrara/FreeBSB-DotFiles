:"Instalação vim Plug 
"*****************************************************************************
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"*****************************************************************************

"Configuração básica
"*****************************************************************************
syntax on "habilita processamento de sintaxe.
set ruler "Mostra linhas e colunas.
set tabstop=2 "Número de espacos por TAB.
set softtabstop=2 "Número de espacos por TAB quando editando.
set shiftwidth=2 "Numero de espaços quando da enter.
set noexpandtab " Não transforma TABs em espacos.
"set number "Mostra o numero de linhas.
set relativenumber "Mostra o numero relativo de linhas.
set showcmd "Mostra barra de comandos.
"filetype indent on "habilita identificação e identação por extensão de arquivo
set wildmenu "Habilita o autocomplete de pastas grafico.
set lazyredraw "Redraw apenas quando necessario.
set showmatch "Faz highlight de () {} []
set incsearch "Marca palavra conforme digita na busca.
set hlsearch "Marca todas as palavras localizadas na busca.
set ignorecase "ignora case sensitive.
set smartcase "Se comecar uma busca em maiusculo ele habilita o case.
set encoding=utf-8 "Encode para visualizacao do arquivo.
set fileencoding=utf-8 "Encode para gravacao do arquivo.
set fileformats=unix,dos,mac
set binary
set ttyfast
set nobackup "Nao faz backup de arquivos temporarios.
set noswapfile "Nao faz aquivos temporarios.
set noshowmode "tira o indidador de modo padrão do vim
set laststatus=2
"set colorcolumn=60
"let python_highlight_all=1
set backspace=indent,eol,start

"Limpar o highlight após uma busca com o /
autocmd InsertEnter * :let @/=""

"*****************************************************************************

"Plugins a serem instalados
"*****************************************************************************
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
"*****************************************************************************

"Configurações de Plugins
"*****************************************************************************
"

"" Vim-ColorSchemes configuration
colorscheme molokai
"colorscheme tango
