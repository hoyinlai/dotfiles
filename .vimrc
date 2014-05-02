" .vimrc

set nocompatible " Be iMproved

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoBundle Scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('vim_starting')
  " Required:
  set runtimepath+=/Users/hoyinlai/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/hoyinlai/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'fs111/pydoc.vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'klen/rope-vim'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'pgilad/neobundle-packages'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'vim-scripts/TaskList.vim'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/scratch.vim'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'wincent/Command-T'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', {'rev': '3787e5'}

" Bundles with arguments
NeoBundle 'Shougo/vimproc', {'build': {'mac': 'make -f make_mac.mak'}}

" Optional:
NeoBundle 'honza/vim-snippets'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End NeoBundle Script
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Global
syntax on
colorscheme zenburn

" General
set history=1000 " lines of history to remember
set clipboard+=unnamed " sharing with windows clipboard
set fileformats=unix,mac,dos " the order of file format support
set viminfo+=! " make sure it can save viminfo
set iskeyword+=_,$,@,%,# " none of these characters should be word dividers, so ensure that they are not
set nostartofline " leave my cursor where it was
set nomodeline " do not have files trying to overwrite .vimrc
set nobackup " do not make backup file

" Vim User Interface
set popt+=syntax:y " syntax when printing
set showcmd " show the command being typed
set linespace=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set wildmode=list:longest " turn on wild menu in special format (long format)
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.swp,*.jpg,*.gif,*.png " ignore some formats
set ruler " always show current positions along the bottom
set cmdheight=1 " the command bar is 1 high
set number " turn on line numbers
"set numberwidth=4 " if we have over 9999 lines, ohh, boo-hoo
set lazyredraw " do not redraw while running macros (much faster) (LazyRedraw)
set hidden " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,[,],h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:>-,trail:- " show tabs and trailing whitespace

" Visual Cues
set showmatch " show matching brackets
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " do highlight as you type you search phrase
set scrolloff=5 " keep 5 lines (top/bottom) for scope
set sidescrolloff=5 " keep 5 lines at the size
set novisualbell " don't blink
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2 " always show the status line

" Text Formatting/Layout
set formatoptions=tcrq " See Help (complex)
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set expandtab " tab characters turn into spaces
set nowrap " do not wrap line
set preserveindent " but above all -- follow the conventions laid before us
set ignorecase " case insensitive by default
set smartcase " if there are caps, go case-sensitive
set completeopt=menu,longest,preview " improve the way autocomplete works

" Mappings
noremap <space> <c-f> " Make <space> in normal mode go down a page rather than left a character
map <F12> ggVGg? " apply rot13 for people snooping over shoulder, good fun
map <leader>g :GundoToggle<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" GUI Settings
if has('gui')
    set guioptions=acg " advanced, try help 'go
    set nomousehide " don't hide the mouse
    set cursorline " highlight current line
    set lines=60 " perfect size for me
    set columns=240 " perfect size for me

    " Always show syntax select menu
    let do_syntax_sel_menu = 1|runtime! synmenu.vim
endif
