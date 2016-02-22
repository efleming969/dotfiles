" neobundle setup
" ====================================================================
set nocompatible

set rtp+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" build configuration
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" plugins
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ap/vim-css-color'
NeoBundle 'thinca/vim-fontzoom'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Quramy/tsuquyomi'

" colors
NeoBundle 'junegunn/jellybeans.vim'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'endel/vim-github-colorscheme'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'chriskempson/base16-vim'

" syntaxes
NeoBundle 'pangloss/vim-javascript'

call neobundle#end()

filetype plugin indent on

"NeoBundle 'vim-pandoc/vim-pandoc'
"NeoBundle 'vim-pandoc/vim-pandoc-syntax'
"Bundle 'gmarik/vundle'                      
"Bundle 'bkad/CamelCaseMotion'
"Bundle 'tpope/vim-repeat'
"Bundle 'tpope/vim-fugitive'
"Bundle 'scrooloose/syntastic'
"Bundle 'mutewinter/vim-markdown'
"Bundle 'derekwyatt/vim-scala'
"Bundle 'kchmck/vim-coffee-script'
"NeoBundle 'leafgarland/typescript-vim'
"Bundle 'gkz/vim-ls'
"Bundle 'kongo2002/fsharp-vim'
"Bundle 'L9'
"Bundle 'thinca/vim-fontzoom'
"Bundle 'vim-scripts/argtextobj.vim'
"Bundle 'vim-scripts/camelcasemotion'
"Bundle 'vim-scripts/VisIncr'

"call vundle#end()

" tab settings
" ====================================================================
set tabstop=2      " numbers of spaces of tab characters
set shiftwidth=2   " number of spaces to (auto) indent
set expandtab      " use soft tabs
set smarttab

" indention settings (choose only one)
" ====================================================================
set noautoindent   " simple setting for controlling indenting
set nosmartindent  " adds increase/decreasing indent to autoindent feature
set nocindent      " adds c-style goodness to smartindent feature 

" misc settings
" ====================================================================
set ls=2                     " allways show status line
set showmode                 " show current mode in statubar
set showcmd                  " show partial command in statusbar
set gdefault                 " assume /g flag on :s substitutions
set incsearch                " incremental searching
set hlsearch                 " highlight searching
set ruler                    " show the cursor position
set novisualbell             " no visual bell
set errorbells               " disable bell for errors
set nobackup                 " do not keep a backup file
set noswapfile               " do not create a swap file (annoying)
set relativenumber           " relative numbers are more useful
set number                   " show line numbers
set ignorecase               " ignore case when searching
set smartcase                " this enable case sensitivity when use case in search
set title                    " show title in console title bar
set ttyfast                  " smoother changes
set showtabline=2            " 0 = never, 1 = 2 or more windows, 2 = always
set nowrap                   " don't wrap lines
set wildmenu                 " enables the completion options in the status line
set wildignore+=*.class      " ignore class files in wildmenu
set cursorline               " highlights the cursor location
set nolist                     " show whitespace characters
set listchars+=trail:·       " trailing whitespace
set listchars+=precedes:«    " don't know what this does
set listchars+=extends:»     " don't know what this does
set listchars+=eol:¬         " end of line character
set listchars+=tab:▸\        " tab characters
set clipboard=unnamedplus    " tells vim to use * register for yanks/puts
set colorcolumn=75           " puts a vertical column at specific characters
set splitbelow               " splitting windows starts below of current
set splitright               " splitting windows starts right of current

" ====================================================================
let mapleader=','

" ctrlp settings
" ====================================================================
"let g:ctrlp_map = '<c-s-n>'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'git ls-files %s --cached --exclude-standard --others'

" javascript TODO: don't know what these do
" ====================================================================
"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1  = "inc"

" general plugin settings
" ====================================================================
filetype on
filetype plugin on         " ensure plugins work for filetypes
"filetype plugin indent on  " ensure custom indent scripts work for filetype

" Folding
"====================================================================================
set foldenable               "turn on folding
set foldmethod=syntax        "folding based on syntax file
set foldlevel=2              "default fold level
set foldopen=search,hor      "what movements open folds

" sytastic settings
"====================================================================================
" let g:syntastic_typescript_tsc_args='--module commonjs --outDir ./target/lib'
" let g:syntastic_typescript_tsc_exe='./node_modules/.bin/tsc'
" let g:syntastic_mode_map = { 'mode': 'active' , 'active_filetypes': ["javascript"] , 'passive_filetypes': ["typescript"] }

"nnoremap <C-w>E :SyntasticCheck<CR>

let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_jscs_args="--esnext"
let g:syntastic_ignore_files = ['package.json']

" typescript-tools
"====================================================================================
"au BufRead,BufNewFile *.ts        setlocal filetype=typescript
"set rtp+=~/.npm-packages/lib/node_modules/typescript-tools

" ejs template files
"====================================================================================
au BufNewFile,BufRead *.ejs set filetype=html

" indent-guides settings
"====================================================================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 2
let g:indent_guides_start_level = 1
" let g:indent_guides_color_change_percent = 30
" let g:indent_guides_auto_colors = 1

" indentLine settings
"====================================================================================
let g:indentLine_enabled = 0

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#ffffff ctermbg=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#f5f5f5 ctermbg=2

" make sure syntax highlighting is one
"====================================================================================
syntax on

" color settings
"====================================================================================
set t_Co=256
colorscheme PaperColor

" This function makes it convienent to switch between relative and normal
" numbering
"==================================================================================== 
function! ToggleRelativeNumber()
  let &relativenumber = &relativenumber?0:1
  let &number = &relativenumber? 0:1
endfunction

nnoremap <silent> <Leader>nu :call ToggleRelativeNumber()<cr>

" general key bindings
"==================================================================================== 

"select all
map  <C-a> ggVG

"replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" standardized tab switching
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

" Clears the search register
nmap <silent> <leader>/ :nohlsearch<CR>

" after selecting a phrase, then execute substitute on that phrase
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" tab navigation like chrome
:nmap  <C-S-tab> :tabprevious<cr>
:nmap  <C-tab>   :tabnext<cr>
:map   <C-S-tab> :tabprevious<cr>
:map   <C-tab>   :tabnext<cr>
:imap  <C-S-tab> <ESC>:tabprevious<cr>i
:imap  <C-tab>   <ESC>:tabnext<cr>i

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // src/**/*<left><left><left><left><left><left><left><left><left><left>

" buffer rename function for variables
" ====================================================================
" cword is the word under cursor and expand is used to expand that atom
"fun! Refactor_Name()
    "let newword = input("Name: ")
    "execute "%s/\\<".expand("<cword>")."\\>/".expand(newword)."/gce"
"endfun

"map ,rn :call Refactor_Name()<CR>
:vmap <leader>c <esc>:'<,'>:w !command<cr>
:nmap <F5> :vertical resize 84<CR>

" simple saving
" ====================================================================
nnoremap <Leader>s :update<CR>

nmap <c-s> :w<cr>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" disable folding when editing
" ====================================================================
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

" neocomplete configuration
" ====================================================================
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 0
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3

" neosnippet configration
" ====================================================================
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" date sortcut
" ====================================================================
:iab <expr> dts strftime("%Y-%m-%d")

