" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> Searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" General---------------{{{
  Plugin 'gmarik/Vundle.vim'
  Plugin 'tpope/vim-sensible'
"}}}

" Syntax----------------{{{
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'elixir-lang/vim-elixir'
  Plugin 'neomake/neomake'
  Plugin 'jaawerth/neomake-local-eslint-first'
  Plugin 'tpope/vim-haml'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'pangloss/vim-javascript'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'mxw/vim-jsx'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'slim-template/vim-slim'
"}}}

" Notes----------------{{{
  Plugin 'vimwiki/vimwiki'
"}}}

" Tags---------------- {{{
  Plugin 'xolox/vim-misc'
  Plugin 'ramitos/jsctags'
  Plugin 'majutsushi/tagbar'
"}}}

" Node specific--------{{{
  Plugin 'moll/vim-node'
"}}}

" Search---------------{{{
  Plugin 'rking/ag.vim'
  Plugin 'skwp/greplace.vim'
  Plugin 'dkprice/vim-easygrep'
"}}}

" Git helpers-----------{{{
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
"}}}

" Rails specific--------{{{
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-bundler'
  Plugin 'nelstrom/vim-textobj-rubyblock'
"}}}

" Themes----------------{{{
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'sickill/vim-monokai'
  Plugin 'tomasr/molokai'
  Plugin 'jacoborus/tender'
  Plugin 'gertjanreynaert/cobalt2-vim-theme'
  Plugin 'dracula/vim'
  Plugin 'atelierbram/Base2Tone-vim'
"}}}

" Completion------------{{{
  Plugin '1995eaton/vim-better-javascript-completion'
  Plugin 'othree/csscomplete.vim'
  Plugin 'Shougo/deoplete.nvim'
"}}}

" Snippets--------------{{{
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
"}}}

" Code Navigation----- {{{
  Plugin 'scrooloose/nerdtree'
"}}}
"
" Closure specific ----{{{
  Plugin 'guns/vim-clojure-static'
  Plugin 'tpope/vim-fireplace'
  Plugin 'vim-scripts/paredit.vim'
" }}}

" Utils-----------------{{{
  Plugin 'Shougo/denite.nvim'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'blarghmatey/split-expander'
  Plugin 'tpope/vim-projectionist'
  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'tmhedberg/matchit'
  Plugin 'kana/vim-textobj-user'
  Plugin 'vim-scripts/tComment'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'myusuf3/numbers.vim'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'rbgrouleff/bclose.vim'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'mattn/emmet-vim'
  Plugin 'vim-scripts/BufOnly.vim'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'Yggdroot/indentLine'
  Plugin 'csscomb/vim-csscomb'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'sickill/vim-pasta'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'Valloric/MatchTagAlways'
"}}}

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backpacevndew/supertab'so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Numbers
set number
set numberwidth=5

" Go with moves on empty space
set virtualedit=all

" Set cursor line
set cursorline

" " Folding settings
" set foldmethod=indent   "fold based on indent
" set foldnestmax=10      "deepest fold is 10 levels
"  Set nofoldenable        "dont fold by default
" set foldlevel=1         "this is just what i use

" Fix escape timeout
set timeoutlen=1000 ttimeoutlen=0

" Set indentation
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
filetype on

set nocompatible
set background=dark

colorscheme cobalt2
let g:airline_theme='powerlineish'

"}}}

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" !!!! Important to properly show colors in terminal
let g:solarized_termcolors=256

" These are the basic settings to get the font to work (required):
set guifont=Droid\ Sans\ Mono\ Fira\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>t :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Close all buffers except one
map <leader>bo :BufOnly<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize window
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

ino jj <esc>
cno jj <c-c>
vno v <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_symbols.space = "\ua0"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Sorting
map <leader>z :sort<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Up> <Esc>:m-2<CR>
vnoremap <S-Down> <Esc>:m+<CR>

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd FileWritePre    * :call DeleteTrailingWS()
autocmd FileAppendPre   * :call DeleteTrailingWS()
autocmd FilterWritePre  * :call DeleteTrailingWS()
autocmd BufWritePre     * :call DeleteTrailingWS()

" Visualize tabs, trailing whitespaces and funny characters
set list
set listchars=tab:»·,trail:·

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nospell

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Additional Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Jump out of parantises
inoremap <C-e> <C-o>A

" Edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>et :vsp ~/.tmux.conf<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Copy & paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Quickly select text you just pasted
noremap gV `[v`]

" Jump from parantesis
inoremap <C-e> <C-o>A

" Execut in terminal
nnoremap <leader>ex :!

" `G` skips to bottom of file and places line in middle of screen
nnoremap G :norm! Gzz<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins specific settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" UltiSnipsExpandTrigger---------{{{
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"}}}

" Css----------------------------{{{
  " Map bc to run CSScomb. bc stands for beautify css
  autocmd FileType css noremap <buffer> <leader>bc :CSScomb<CR>
  " Automatically comb your CSS on save
  " autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

  augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
  augroup END
"}}}

" IndentLine-------------------{{{
  let g:indentLine_char = '|'
  let g:indentLine_color_term = 239
"}}}

" NERDTree----------------------{{{
  map <leader><space> :NERDTreeToggle<cr>
  nmap ,c :NERDTreeFind<CR>
"}}}

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#auto_complete_delay = 0
  let g:echodoc_enable_at_startup=1
  set splitbelow
  set completeopt+=noselect,menuone
  set completeopt-=preview
  autocmd CompleteDone * pclose

  function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=2
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction
  let g:deoplete#file#enable_buffer_path=1
  call deoplete#custom#source('buffer', 'mark', 'ℬ')
  call deoplete#custom#source('tern', 'mark', '')
  call deoplete#custom#source('omni', 'mark', '⌾')
  call deoplete#custom#source('file', 'mark', '')
  call deoplete#custom#source('jedi', 'mark', '')
  call deoplete#custom#source('neosnippet', 'mark', '')
  call deoplete#custom#source('typescript',  'rank', 630)
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.html = ''
  let g:deoplete#omni_patterns.css = ''
  function! Preview_func()
    if &pvw
      setlocal nonumber norelativenumber
     endif
  endfunction
  autocmd WinEnter * call Preview_func()
  let g:deoplete#ignore_sources = {}
  let g:deoplete#ignore_sources._ = ['around']

  " let g:deoplete#enable_debug = 1
  " let g:deoplete#enable_profile = 1
  " let g:deoplete#enable_logging = {'level': 'DEBUG','logfile': 'deoplete.log'}
  " call deoplete#enable_logging('DEBUG', 'deoplete.log')
  " call deoplete#custom#source('typescript', 'debug_enabled', 1)
"}}}

" Emmet customization -------------------------------------------------------{{{

" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return emmet#expandAbbrIntelligent("\<tab>")
    " return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction
  " let g:user_emmet_expandabbr_key='<Tab>'
  " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

  autocmd FileType html,css,scss,jsx imap <silent><buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,scss,jsx EmmetInstall
"}}}

" Denite --------------------------------------------------------------------{{{

  let s:menus = {}
  call denite#custom#option('_', {
        \ 'prompt': '❯',
        \ 'winheight': 10,
        \ 'updatetime': 1,
        \ 'auto_resize': 0,
        \ 'highlight_matched_char': 'Underlined',
        \ 'highlight_mode_normal': 'CursorLine',
        \ 'reversed': 1,
        \})
  call denite#custom#source('file_rec', 'vars', {
          \ 'command': [
          \ 'ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'node_modules'
          \] })
  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('file_rec', 'matchers', ['matcher_cpsm'])

  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'default_opts', ['-i'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  nnoremap <silent> <c-p> :Denite file_rec<CR>
  nnoremap <silent> <leader>c :Denite colorscheme<CR>
  nnoremap <silent> <leader>b :Denite buffer<CR>
  nnoremap <silent> <leader>me :Denite menu<CR>
  nnoremap <silent> <leader>\ :Denite grep<CR>
  call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
  call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')
  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
  call denite#custom#var('menu', 'menus', s:menus)
"}}}

" Git from denite...ERMERGERD -----------------------------------------------{{{
  let s:menus.git = {
    \ 'description' : 'Fugitive interface',
    \}
  let s:menus.git.command_candidates = [
    \[' git status', 'Gstatus'],
    \[' git diff', 'Gvdiff'],
    \[' git commit', 'Gcommit'],
    \[' git stage/add', 'Gwrite'],
    \[' git checkout', 'Gread'],
    \[' git rm', 'Gremove'],
    \[' git cd', 'Gcd'],
    \[' git push', 'exe "Git! push " input("remote/branch: ")'],
    \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
    \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
    \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
    \[' git fetch', 'Gfetch'],
    \[' git merge', 'Gmerge'],
    \[' git browse', 'Gbrowse'],
    \[' git head', 'Gedit HEAD^'],
    \[' git parent', 'edit %:h'],
    \[' git log commit buffers', 'Glog --'],
    \[' git log current file', 'Glog -- %'],
    \[' git log last n commits', 'exe "Glog -" input("num: ")'],
    \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
    \[' git log until date', 'exe "Glog --until=" input("day: ")'],
    \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
    \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
    \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
    \[' git mv', 'exe "Gmove " input("destination: ")'],
    \[' git grep',  'exe "Ggrep " input("string: ")'],
    \[' git prompt', 'exe "Git! " input("command: ")'],
    \] " Append ' --' after log to get commit info commit buffers
"}}}

" Menu edit init---------------------------------------------------------{{{
  let s:menus.nvim = {
      \ 'description': 'Edit neovim init'
      \}
  let s:menus.nvim.file_candidates = [
      \ ['init.vim', '~/.config/nvim/init.vim'],
      \]
" }}}

"  Linting -------------------------------------------------------------------{{{
  let g:neomake_javascript_enabled_makers = ['eslint']
  call neomake#configure#automake('w')

  " \ 'BufWinEnter': {},
  " \ 'TextChanged': {},
  " \ 'InsertLeave': { },
  let g:ale_sign_error = '•'
  let g:ale_sign_warning = '•'
  let g:airline#extensions#ale#error_symbol='• '
  let g:airline#extensions#ale#warning_symbol='•  '

  let g:neomake_warning_sign = {'text': '•'}
  let g:neomake_error_sign = {'text': '•'}
  let g:airline#extensions#neomake#error_symbol='• '
  let g:airline#extensions#neomake#warning_symbol='•  '

  hi link ALEError SpellBad
  hi link ALEWarning SpellBad
  " Write this in your vimrc file
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  " let g:neomake_verbose = 3
"}}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '⋯'. repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  " autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,jsx,html,css,scss,typescript setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,jsx,typescript,json setl foldmethod=syntax

" }}}

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Force the cursor onto a new line after 80 characters
set textwidth=80

" However, in Git commit messages, let's make it 72 characters
autocmd FileType gitcommit set textwidth=72

" Colour the 81st (or 73rd) column so that we don't type over our limit
set colorcolumn=+1

" Syntax
autocmd BufRead,BufNewFile *.slim set filetype=slim
autocmd BufRead,BufNewFile *.pug set filetype=pug

:tnoremap jj <C-\><C-n>
:set guicursor=

nmap <F8> :TagbarToggle<CR>

" To trevel in undo history
" :erlier 10s
" :later 5m
