"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

colorscheme murphy

set background=dark
syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set matchpairs=(:),{:},[:],<:>
set autoread
set showmatch
set title

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

let g:syntastic_python_python_exec = '/path/to/python3'

let g:django_projects = '~/devel/django_projects' "Sets all projects under project"
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv"
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root."

let g:syntastic_error_symbol = "☛"
let g:syntastic_warning_symbol = "☞"


inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i
nnoremap <silent> sn :lnext<CR>

let g:jedi#use_tabs_not_buffers = 1

map <C-o> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'tomasr/molokai'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tmhedberg/SimpylFold'
Plug 'sudar/vim-arduino-syntax'
Plug 'mjbrownie/vim-htmldjango_omnicomplete'
Plug 'scrooloose/syntastic'
Plug 'jmcantrell/vim-virtualenv'
Plug 'cwood/vim-django'
Plug 'mattn/calendar-vim'
Plug 'junegunn/vim-github-dashboard'
call plug#end()

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1



autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
