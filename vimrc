" Modified: Fri 09 May 2014 10:21 am

set nocompatible

" Pathogen Setup {{{ ----------------------------------------------------------

"filetype off " Pathogen needs to run before plugin indent on
"call pathogen#infect()
"call pathogen#helptags() " generate helptags for everything in 'runtimepath'
"filetype plugin indent on

" }}}
" Vundle Setup {{{ ------------------------------------------------------------

"let VundleInstalled=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"
"if !filereadable(vundle_readme)
"	echo "Installing Vundle.."
"	echo ""
"	silent !mkdir -p ~/.vim/bundle
"	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
"	let VundleInstalled=0
"endif
"
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" " let Vundle manage Vundle
" Bundle 'gmarik/vundle'

" if has('vim_starting')
"    set nocompatible               " Be iMproved

"    " Required:
"    set runtimepath+=~/.vim/bundle/neobundle.vim/
" endif
" call neobundle#rc(expand('~/.vim/bundle/'))
" BundleFetch 'Shougo/neobundle.vim'

" }}}
" NeoBundle Setup {{{ --------------------------------------------------------

let NeoBundleInstalled=1
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
    let NeoBundleInstalled=0
endif

" Call NeoBundle
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin()

" is better if NeoBundle rules NeoBundle (needed!)
NeoBundle 'Shougo/neobundle.vim'

" }}}
" NeoBundle Bundles {{{ -------------------------------------------------------

" Appearance Utilities {{{
" Vimproc to asynchronously run commands (NeoBundle, Unite)
NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
	\     'windows' : 'make -f make_mingw32.mak',
	\     'cygwin' : 'make -f make_cygwin.mak',
	\     'mac' : 'make -f make_mac.mak',
	\     'unix' : 'make -f make_unix.mak',
	\    },
	\ }
NeoBundle 'Shougo/unite.vim'
"Lightweight status bar with colors and info
NeoBundleLazy 'bling/vim-airline.git'
"Code tag view and navigation with ctags tags
NeoBundle 'majutsushi/tagbar', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\     'commands' : ['TagbarToggle']
	\    },
	\ }
"Filesystem explorer
" NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'Shougo/vimfiler.vim', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\     'commands' : ['VimFiler']
	\    },
	\ }
"Interactive calculator in vim
NeoBundle 'gregsexton/VimCalc', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\     'commands' : ['Calc']
	\    },
	\ }

" }}}

" Git Related {{{
"Git management from withing vim
NeoBundleLazy 'tpope/vim-fugitive'
"Vim implementation of gitk
NeoBundle 'gregsexton/gitv', {
	\ 'depends' : ['tpope/vim-fugitive'],
	\ 'autoload' : {
	\     'commands':'Gitv'
	\    },
	\ }

" }}}

"Snippet management
NeoBundle 'SirVer/ultisnips.git'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Valloric/YouCompleteMe'
"Super tab completion
" NeoBundle 'ervandew/supertab.git', { 'lazy' : 1, 'autoload' : { 'insert' : 1}}
NeoBundle 'ervandew/supertab.git'
"Easy changing, adding and removing of surround objects
NeoBundle 'tpope/vim-surround', { 'lazy' : 1, 'autoload' : { 'insert' : 1}}
"Closing of brackets, tags, quotes etc.
NeoBundle 'Raimondi/delimitMate', { 'lazy' : 1, 'autoload' : { 'insert' : 1}}
"Syntax checking for a wide range of languages
NeoBundleLazy 'scrooloose/syntastic'
"Easy commenting/uncommenting of code.
NeoBundle 'tpope/vim-commentary'
"Swap selection or movement between two locations
NeoBundle 'tommcdo/vim-exchange'
"Simple alignment of lines
NeoBundle 'tommcdo/vim-lion'
"Multiple useful keybindings
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'jamessan/vim-gnupg'

" Filetype specific {{{
"Override detection of .md files to markdown
NeoBundle 'tpope/vim-markdown', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\     'filetypes' : ['markdown']
	\    },
	\ }
"Outline files for notes and bits of info.
NeoBundle 'vimoutliner/vimoutliner', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\     'filetypes' : ['otl', 'votl']
	\    },
	\ }

call neobundle#end()
" }}}

" }}} -------------------------------------------------------------------------

filetype off

" Plugin Settings {{{

" YCM settings
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1

"""" UltiSnips Plugin
set runtimepath^=~/.vim/custom
let g:UltiSnipsSnippetsDir        = "~/.vim/custom/mysnippets"
let g:UltiSnipsSnippetDirectories =["UltiSnips","mysnippets"]
let g:UltiSnipsEditSplit          = "vertical"

" let g:UltiSnipsExpandTrigger      ="<tab>"
" let g:UltiSnipsJumpForwardTrigger ="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"""" Airline Status
let g:airline_right_sep=''
let g:airline_left_sep =''
autocmd VimEnter * if index(['markdown'], &ft) < 0 | NeoBundleSource vim-airline
let g:airline_theme="molokai"

"""" Molokai Theme
let g:molokai_original = 1

"""" TagList
let Tlist_Use_Right_Window     = 1
let Tlist_Enable_Fold_Column   = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type            = "order"
let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
                \ 'h:headings',
                \ 'l:links',
                \ 'i:images'
            \ ],
    \ "sort" : 0
\ }

"""" Netrw
let g:netrw_liststyle = 1
let g:netrw_sort_options = 'i'
let g:netrw_list_hide= '.*\.class$'

""" Supertab
let g:SuperTabCrMapping = 0 "Needed to allow delimitMate_expand_cr
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

	" make YCM compatible with UltiSnips (using supertab)
	let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
	let g:SuperTabDefaultCompletionType = '<C-n>'

	" better key bindings for UltiSnipsExpandTrigger
	let g:UltiSnipsExpandTrigger = "<tab>"
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"""" delimitMate
let delimitMate_jump_expansion = 0
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" }}}
" Functions {{{

" from an idea by michael naumann
function! VisualSearch(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" View the difference between the buffer and the file the last time it was saved
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" }}}
" Settings {{{

filetype plugin on
filetype indent on
syntax on

" Code Formatting
set autoindent " copy indent from current when starting new line
set copyindent
set encoding=utf-8
set ffs=unix,dos,mac
set formatoptions=tcroqln
silent! set formatoptions+=j
set noeol
set noexpandtab
set preserveindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=0
set tabstop=4
set wrap
set textwidth=79

"Code view
set listchars=tab:·\ ,trail:▸,nbsp:#
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

"External Prgs
set path+=../**
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
else
	set grepprg=grep\ -RinH\ $*
endif
set keywordprg=""
set makeprg=make

"Search
set hlsearch
set ignorecase
set incsearch
set magic
set matchtime=8
set showmatch
set smartcase

"History, Backup and Undo Files
set history=700
set backup
set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp
set writebackup
if exists("&undofile")
	set undofile
	set undodir=~/.vim/undodir
	augroup undo
		autocmd!
		autocmd BufWritePre /tmp/* setlocal noundofile
	augroup END
endif

"Editor Setup
set autoread      " Auto read when a file changes from the outside
set autowrite     " Auto write before make etc.
set linebreak     " Don't break across words
set modeline      " Check for modelines to set files specific settings
set hidden        " Hide buffer when abandoning rather than unloading
set lazyredraw    " Don't redraw the screen for macros and registers
set nostartofline " Dont' move cursor to start of line for gg,G etc.

"Editor Styling
set switchbuf=usetab " Method to use when switching buffers
set scrolloff=5      " Number of lines to keep above and below cursor
set showcmd          " Show last command in last line of screen
set synmaxcol=1024   " Syntax highlight long lines

"User Controls
set whichwrap+=<,>,h,l         " Keys that wrap onto next line
set backspace=eol,start,indent " Allow backspacing over

"Wild menu
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.class        "Ignore VCS
if exists("&wildignorecase")
	set wildignorecase
endif

"UI
colorscheme molokaiJ

set wrapmargin=0 " Wrap text
set showtabline=1
set cursorline
set cmdheight=1
set ruler
if exists("&relativenumber")
	set relativenumber
endif
set number
set laststatus=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set mouse=a
if $USERNAME == 'jaw097'
	set guifont=DejaVu\ Sans\ Mono\ 10
else
	set guifont=Droid\ Sans\ Mono\ 10
endif
if exists("&colorcolumn")
	set colorcolumn=+1
else
	:mat ErrorMsg '\%81v.\+'
endif
set splitbelow
set splitright

"GUI
if has("gui_running")
	" set guioptions+=P "allow visual selection to be accessed in system paste
	set guioptions+=c "use console dialogues
	set guioptions-=L "left hand toolbar isn't present
	set guioptions-=T "remove tool bar
	set guioptions-=l "remove right scroll
	set guioptions-=m "remove menu bar
	set guioptions-=r "remove left scroll
endif

" }}}
" FileTypes {{{
augroup ft
	autocmd BufEnter,BufNew *.rout,*.Rout set ft=r
	autocmd Filetype markdown NeoBundleSource vim-markdown
augroup END

" }}}
" Keybindings {{{
nnoremap ; :

" Make j and k move to the next row on screen rather
nmap j gj
nmap k gk
nnoremap n nzz
nnoremap N Nzz

nnoremap Q :normal n.<CR>
nnoremap M %

" Easier movement to begining/end of line
" noremap <C-J> G
" noremap <C-K> gg
noremap <C-L> g_
noremap <C-H> ^

" Visually select the last inserted text
nmap gV `[v`]

" Re-indent whole file
nnoremap g+ :call Preserve("normal gg=G")<CR>

" List all buffers and quickly switch to selected
nmap <leader>b :ls<CR>:buffer<Space>

map <leader>rc :e! ~/.vimrc<CR>
augroup Reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC | echo "vimrc is sourced"
augroup END

"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>

" Replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Fast saving
nmap <leader>w :w!<cr>
cabbrev w!! w !sudo tee > /dev/null %
augroup Save
	autocmd!
	au FocusLost * :silent! wa
augroup END

" Save the current file and run the make program
map <F9>   :make<Return>
map <S-F9> :silent make<Return>
map <F10>  :copen<Return>:cprevious<Return>
map <F11>  :copen<Return>:cnext<Return>

" Open the taglist sidebar
nnoremap <silent> <F8> :TagbarToggle<CR>

"Toggle NERDTree sidebar
"nmap <F7>   :NERDTreeToggle<CR>
"imap <F7>   :NERDTreeToggle<CR>
"nmap <S-F7> :NERDTreeFind<CR>
"imap <S-F7> :NERDTreeFind<CR>
nmap <F7>   :VimFiler -split -simple -winwidth=30 -toggle -no-quit<CR>
imap <F7>   :VimFiler -split -simple -winwidth=30 -toggle -no-quit<CR>
nmap <S-F7> :VimFiler -split -simple -winwidth=30 -toggle -no-quit -find<CR>
imap <S-F7> :VimFiler -split -simple -winwidth=30 -toggle -no-quit -find<CR>

" Unset highlighting of a search
nmap <leader>q :nohlsearch<CR>

" Switch to Next and Previous buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap <leader>v "+gP
imap <leader>v <ESC>"+gpa
nmap <leader>ay ggVG"+y

" Jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"           Scroll Wheel = Up/Down 4 lines
"   Shift + Scroll Wheel = Up/Down 1 page
" Control + Scroll Wheel = Up/Down 1/2 page
noremap  <ScrollWheelUp>    6<C-Y>
noremap  <ScrollWheelDown>  6<C-E>
noremap  <S-ScrollWheelUp>   <C-Y>
noremap  <S-ScrollWheelDown> <C-E>
noremap  <C-ScrollWheelUp>   <C-U>
noremap  <C-ScrollWheelDown> <C-D>
inoremap <ScrollWheelUp>     <C-O>4<C-Y>
inoremap <ScrollWheelDown>   <C-O>4<C-E>
inoremap <S-ScrollWheelUp>   <C-O><C-Y>
inoremap <S-ScrollWheelDown> <C-O><C-E>
inoremap <C-ScrollWheelUp>   <C-O><C-U>
inoremap <C-ScrollWheelDown> <C-O><C-D>
map      <MiddleMouse>       <LeftMouse>
imap     <MiddleMouse>       <LeftMouse>
map      <2-MiddleMouse>     <LeftMouse>
imap     <2-MiddleMouse>     <LeftMouse>
map      <3-MiddleMouse>     <LeftMouse>
imap     <3-MiddleMouse>     <LeftMouse>
map      <4-MiddleMouse>     <LeftMouse>
imap     <4-MiddleMouse>     <LeftMouse>

" }}}

" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction
exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" vim: fdm=marker
