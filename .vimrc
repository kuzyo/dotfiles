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
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-haml'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'pangloss/vim-javascript'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'jsx/jsx.vim'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'slim-template/vim-slim'
"}}}

" Notes----------------{{{
  Plugin 'vimwiki/vimwiki'
"}}}

" Tags---------------- {{{
  Plugin 'xolox/vim-misc'
  Plugin 'tsukkee/unite-tag'
  Plugin 'ramitos/jsctags'
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
"}}}

" Completion------------{{{
  Plugin '1995eaton/vim-better-javascript-completion'
  Plugin 'othree/csscomplete.vim'
  Plugin 'Shougo/neocomplete.vim'
"}}}

" Snippets--------------{{{
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
"}}}

" Code Navigation (Unite/NerdTree)--- {{{
  Plugin 'Shougo/unite.vim'
  Plugin 'Shougo/neomru.vim'
  Plugin 'Shougo/vimproc.vim'

  Plugin 'scrooloose/nerdtree'
"}}}

" Utils-----------------{{{
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
  Plugin 'guns/vim-clojure-static'
  Plugin 'tpope/vim-fireplace'
  Plugin 'vim-scripts/paredit.vim'
  Plugin 'luochen1990/rainbow'
  Plugin 'csscomb/vim-csscomb'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'sickill/vim-pasta'
  Plugin 'miyakogi/conoline.vim'
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

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

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
" colorscheme solarized
" colorscheme tender
" colorscheme spacegray
" colorscheme monokai
" colorscheme molokai
" colorscheme tomorrow
 colorscheme dracula
" colorscheme cobalt2
set background=dark

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" !!!! Important to properly show colors in terminal
let g:solarized_termcolors=256

" These are the basic settings to get the font to work (required):
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8

" required if using https://github.com/bling/vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

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
let g:airline_symbols.space = "\ua0"
"let g:airline_theme = "tomorrow"
let g:airline_theme = "solarized"
" let g:airline_theme = "powerlineish"
" let g:airline_theme = "tender"

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
" => Searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>  **/*.<left><left><left><left><left><left><left>

map <leader>co :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>
map <leader>cl :cclose<cr>

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

" Search tag using CntrP
nnoremap <leader>. :CtrlPTag<cr>

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

" Synatstic-----------------------{{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_loc_list_height = 5
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 1
  let g:syntastic_javascript_checkers = ['eslint']

  let g:syntastic_error_symbol = '❌'
  let g:syntastic_style_error_symbol = '⁉️'
  let g:syntastic_warning_symbol = '⚠️'
  let g:syntastic_style_warning_symbol = '⚠️'

  highlight link SyntasticErrorSign SignColumn
  highlight link SyntasticWarningSign SignColumn
  highlight link SyntasticStyleErrorSign SignColumn
  highlight link SyntasticStyleWarningSign SignColumn
"}}}

" Neocomplete---------------------{{{
  "Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3

  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"}}}

" Unite --------------------------------{{{
  let g:unite_source_history_yank_enable = 1
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
  nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
  nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
  nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
  nnoremap <leader>t :<C-u>:Unite -no-split -start-insert tag<cr>
" }}}

" Emmet customization ---------------------------{{{
  " Enable Emmet in all modes
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
    return "\<C-y>,"
  endif
  " return a regular tab character
  return "\<tab>"
  endfunction
  autocmd FileType html,markdown imap <buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 1
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
"}}}

" Tags ----------------------{{{
" }}}

" Conoline--------------------{{{
  let g:conoline_auto_enable = 1
  let g:conoline_use_colorscheme_default_normal=1
  let g:conoline_use_colorscheme_default_insert=1
"}}}

" IndentLine-------------------{{{
  let g:indentLine_char = '|'
  let g:indentLine_color_term = 239
"}}}

" Rainbow activation
let g:rainbow_active = 1

" NERDTreeToggle
map <leader><space> :NERDTreeToggle<cr>

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" 80 line
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="120,".join(range(400,999),",")

" Syntax
autocmd BufRead,BufNewFile *.slim set filetype=slim
autocmd BufRead,BufNewFile *.pug set filetype=pug




" To trevel in undo history
" :erlier 10s
" :later 5m
