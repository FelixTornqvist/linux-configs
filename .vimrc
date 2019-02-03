version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
map Q gq
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
map <S-Insert> <MiddleMouse>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Monospace\ 13
set helplang=en
set hlsearch
set incsearch
set langnoremap
set mouse=a
set printoptions=paper:a4
set ruler
"set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vim74/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set runtimepath+=~/.fzf
set showcmd
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set undofile
set window=53
" vim: set ft=vim :
" colors peachpuff

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" type \s for easy substituting
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

let g:airline_powerline_fonts = 1
set number
set nowrap
set textwidth=80
set colorcolumn=80
set scrolloff=5
highlight ColorColumn ctermbg=0
highlight LineNr ctermfg=lightblue ctermbg=8
"^^ background color for line numbers: ctermbg=darkblue
highlight clear SpellBad
highlight SpellBad cterm=underline,bold ctermfg=red
map ' ^
hi Search ctermbg=cyan ctermfg=black
