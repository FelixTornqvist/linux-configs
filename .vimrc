"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  else
    call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
  endif
  call dein#add('Shougo/neco-syntax')
  call dein#add('Shougo/echodoc.vim')
  call dein#add('HerringtonDarkholme/yats.vim')
  "call dein#add('mattn/emmet-vim')
  call dein#add('othree/html5.vim')
  call dein#add('othree/csscomplete.vim')
 " For Denite features
  call dein#add('Shougo/denite.nvim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
"End dein Scripts-------------------------


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
map <c-s> :w<CR>
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

" cursor movements for wrapping lines
map j gj
map k gk

nmap <C-h> gT
nmap <C-l> gt

" TAB cycles through autocomplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
map <F12> :TSDef<CR>
map <F11> :TSRefs<CR>
map <c-k><c-i> :TSDoc<CR>

set noshowmode
set number
set relativenumber
"set nowrap
"set textwidth=80
set colorcolumn=80
set scrolloff=5
highlight ColorColumn ctermbg=0
highlight LineNr ctermfg=lightblue ctermbg=8
highlight clear SpellBad
highlight SpellBad cterm=underline,bold ctermfg=red
map ' ^
hi Search ctermbg=cyan ctermfg=black


let $FZF_DEFAULT_COMMAND='find .'
let g:airline_powerline_fonts = 1
let deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:echodoc#enable_at_startup = 1
let g:nvim_typescript#javascript_support = 1

" omnifunc
aug omnicomplete
  au!
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
"  au FileType css,sass,scss,stylus,less setl omnifunc=csscomplete#CompleteCSS
"  au FileType html,htmldjango,jinja,markdown setl omnifunc=emmet#completeTag
"  au FileType javascript,jsx,javascript.jsx setl omnifunc=tern#Complete
"  au FileType python setl omnifunc=pythoncomplete#Complete
"  au FileType xml setl omnifunc=xmlcomplete#CompleteTags
aug END

if !exists('g:deoplete#omni#input_patterns')
	let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#omni#input_patterns.cpp = [
" 			\ '[^. *\t]\.\w*',
" 			\ '[^. *\t]->\w*',
" 			\ '[\w>]*::\w*',
" 			\ ]
" 
" let g:deoplete#omni#input_patterns.html = [
" 			\ '<',
" 			\ ]

call deoplete#custom#option('omni_patterns', {
\ 'java': '[^. *\t]\.\w*',
\  'html': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
\  'xhtml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
\  'xml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
\  'css': ['.*\w'],
\})

