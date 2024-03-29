set nocompatible

if has('nvim')
  if empty(glob("$XDG_DATA_HOME/nvim/site/autoload/plug.vim"))
    silent !curl -fLo "$XDG_DATA_HOME/nvim/site/autoload/plug.vim" --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC | UpdateRemotePlugins
  endif
  call plug#begin("$XDG_DATA_HOME/nvim/plugged")
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  call plug#begin('~/.vim/plugged')
endif

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'

" IDE
Plug 'airblade/vim-gitgutter' " Show git status in gutter
Plug 'vim-scripts/bufkill.vim', {'on': 'BD'}  " Kill buffer but not window
Plug 'tpope/vim-fugitive'
Plug 'git@github.com:github/copilot.vim.git'

Plug 'ledger/vim-ledger'
Plug 'hashivim/vim-terraform'

call plug#end()

set ignorecase
set smartcase
set number

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" ledger
au FileType ledger noremap { ?^\d<CR>
au FileType ledger noremap } /^\d<CR>
let g:ledger_align_at = 58
