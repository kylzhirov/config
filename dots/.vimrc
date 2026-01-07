call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
" Plug 'tpope/vim-sensible'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <ALT-y> "+y
vnoremap <ALT-y> "+y
vmap <silent> y y:call system('wl-copy', @@)<CR>

nnoremap <Esc> :nohlsearch<CR>

nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz

set encoding=utf-8
set fileencodings=utf-8

filetype plugin indent on 
set relativenumber
set numberwidth=1
set number

" Disable compatibility with vi
set nocompatible

" Disable color for line numbers and cur line
highlight LineNr ctermfg=NONE guifg=NONE
highlight CursorLineNr ctermfg=NONE guifg=NONE

" syntax on/off is overriden by vim-sensible
" create another config with syntax off
" in ~/.vim/after/plugin/custom.conf
syntax on
colorscheme catppuccin_mocha
set termguicolors

set scrolloff=5
set background=dark

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab
set smartindent

" Disable CVE-2007-2438 vulnerability
set modelines=0

set backspace=indent,eol,start
set nowrap
set ruler
set mouse=a

" Disable backup for crontab and chpass
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Search settings
set hlsearch
set incsearch
set ic
set smartcase

" Next/prev tab binds
" nnoremap <Tab> :tabn<CR>
" nnoremap <S-Tab> :tabp<CR>


"" Coc settings

" codeaction
nmap <leader>ca <Plug>(coc-codeaction)
xmap <leader>ca <Plug>(coc-codeaction-selected)

" CoC hover
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" <CR> autocompletion confirm behavior
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



