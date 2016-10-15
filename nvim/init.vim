" ========================================================================
" Plugin Manager Configuration
" ========================================================================
call plug#begin()

" general
" --------------------------------------------------------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'benekastah/neomake'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'benekastah/neomake'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" syntax
" --------------------------------------------------------------------
Plug 'leafgarland/typescript-vim'
Plug 'lambdatoast/elm.vim'
Plug 'plasticboy/vim-markdown'
Plug 'raichoo/purescript-vim'

" colors
" --------------------------------------------------------------------
Plug 'flazz/vim-colorschemes'

call plug#end()

" ========================================================================
" General Settings
" ========================================================================
set ls=2                     " allways show status line
set ruler                    " show the cursor position
set number                   " show line numbers
set relativenumber           " relative numbers are more useful
set nowrap                   " don't wrap lines
set title                    " show title in console title bar
set showtabline=2            " 0 = never, 1 = 2 or more windows, 2 = always
set splitright               " splitting windows starts right of current
set cursorline               " highlights the current line
set cursorcolumn             " highlights the current column
set nobackup                 " do not keep a backup file
set noswapfile               " do not create a swap file (annoying)
set clipboard=unnamedplus    " tells vim to use * register for yanks/puts

" tab options
" --------------------------------------------------------------------
set tabstop=2                " numbers of spaces of tab characters
set shiftwidth=2             " number of spaces to (auto) indent
set expandtab                " use soft tabs

" visible character options
" --------------------------------------------------------------------
set list                     " show whitespace characters
set listchars+=trail:·       " trailing whitespace
set listchars+=eol:¬         " end of line character
set listchars+=tab:▸\        " tab characters

" conceal options
" --------------------------------------------------------------------
set conceallevel=0           " default to no concealling
set concealcursor=n          " show conceal text when in insert mode

" folding
" --------------------------------------------------------------------
set foldenable               "turn on folding
set foldmethod=indent        "folding based on syntax file
set foldlevel=2              "default fold level
set foldopen=search,hor      "what movements open folds

" color
" --------------------------------------------------------------------
set background=dark
colorscheme PaperColor

" max width
" --------------------------------------------------------------------
set colorcolumn=90
autocmd VimEnter * :hi ColorColumn guibg=black ctermbg=black

" ========================================================================
" General Mappings
" ========================================================================
let mapleader=","

" quickly move between tabs
" --------------------------------------------------------------------
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
" --------------------------------------------------------------------
nnoremap <silent> <leader>/ :nohlsearch<CR>

" select all while in normal mode
" --------------------------------------------------------------------
nnoremap <Leader>a ggVG

" Substitution for word under cursor
" --------------------------------------------------------------------
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<left><left>

" Substitution for visualy selected phrase
" --------------------------------------------------------------------
vnoremap <leader>s "hy:%s/<C-r>h//gc<left><left><left>

" hotkey to vimgrep command
" --------------------------------------------------------------------
nnoremap <leader>gr :vimgrep // src/**/*<left><left><left><left><left><left><left><left><left><left>

" simple saving
" --------------------------------------------------------------------
nnoremap <leader>u :update<CR>

" ========================================================================
" Plugin Settings
" ========================================================================

" ctrlp settings
" --------------------------------------------------------------------
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|tmp)$'

" neomake settings
" --------------------------------------------------------------------
let g:neomake_javascript_enabled_makers = ['eslint']

" vim-indent-guides settings
" --------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

