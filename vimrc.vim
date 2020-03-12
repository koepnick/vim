" This should be loadable on any newly commissioned server without
" ANY bells and whistles outside of what's definable in this file
" This is VIM, not NeoVim. This is NOT your IDE.

" Set our config files and directories
let $VIMHOME=expand('~/.vim/')


" Set our undo, backup, and swap files
" Create if necessary
call system('mkdir -p ' . $VIMHOME . 'backup')
call system('mkdir -p ' . $VIMHOME . 'swap')
call system('mkdir -p ' . $VIMHOME . 'undo')

set backupdir=$VIMHOME/backup
set directory=$VIMHOME/swap
set undodir=$VIMHOME/undo

set t_Co=256

set number
syntax on

let mapleader=","
let maplocalleader=","

inoremap jk <ESC>

nnoremap j gj
nnoremap k gk

set undofile
set undolevels=10000
set undoreload=10000

set expandtab
set tabstop=2
set shiftwidth=4

set showcmd         " Show partial commands in status line
set showmatch       " Show matching braces
set modeline        " Allow the use of modelines
set modelines=2     "  But only for the first two lines
scriptencoding utf-8

set foldlevel=9     " No folds on load

set expandtab       " Use spaces versus tabs
set tabstop=2       " Spaces to use for a tab stop
set shiftwidth=4    " Spaces to use for a shift

set laststatus=2    " Make sure the status line is always the last line
set showtabline=1   " Show the tab bar when more than one tab

set nospell         " Spell checking is off by default
set nowrap          " Wrapping is off by default
set history=10000   " Keep lots of history

set smartindent
set backspace=2     " Allow backspacing over indents, eol, and starts
set ignorecase      " Ignore case when searching
set magic           " Allow extended regular expressions
set smartcase       " ... unless there's a mixed string

set splitbelow      " Windows split below the active window
set splitright      " Windows split to the right of the active window

set timeout
set timeoutlen=500  " Set key map waiting time

set nojoinspaces    " Prevents double-spacing after a sentence.on a join
                    "   Primarily for prose composition

if !&scrolloff
  set scrolloff=3   " Show next 3 lines when vertically scrolling unless already set
endif
if !&sidescrolloff
  set scrolloff=5   " Show next 5 columns when horizontally scrolling unless already set
endif

set nostartofline   " Prevent jumping to first character when paging

set number          " Turn on line numbering
" set relativenumber  " Use relative numbers
" set number relativenumber " Use hybrid numbering

set formatoptions+=j " Smarter Joining, where it makes sense, remove a comment leader when joining lines
set formatoptions+=l " Do not break long lines automatically
set formatoptions+=n " Recognize a numbered list. Possibly move this into YAML/Markdown/Pandoc configs
                     " h: fo-table for the entire set of options

try
    colorscheme codedark
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
