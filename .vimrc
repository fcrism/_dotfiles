syntax on

" Default settings

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu 
set ic
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set so=7
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Tab manager
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

" Spellcheck

map <F3> :set spell<cr>
map <F4> :set spelllang=pt_BR<cr>

" Git gutter

let g:gitgutter_enabled=1

" vim-plug plugins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'tpope/vim-commentary'
"Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'jaredgorski/spacecamp'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'


call plug#end()


colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

" Emmet Trigger

let g:user_emmet_leader_key=','

" Key mappings

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u  :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>ps :rg<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>no :noh <CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>h :wincmd h<CR>

map <F8> : !gcc % && ./a.out <CR>
map <F9> : !g++ % && ./a.out <CR>


" use <tab> for trigger completion and navigate to the next complete item

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" close preview window

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:SuperTabClosePreviewOnPopupClose = 1
let g:jedi#auto_close_doc = 0
