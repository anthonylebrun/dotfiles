call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'terryma/vim-multiple-cursors'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-smooth-scroll'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive'
call plug#end()

" ---------- VIM Settings ---------- "

" Tabs tabs tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Set Leader key
map <Space> <Leader>

" Splits and split navigation
nnoremap <Up> <C-w><C-k>
nnoremap <Leader><Up> :leftabove new<CR>
nnoremap <Down> <C-w><C-j>
nnoremap <Leader><Down> :rightbelow new<CR>
nnoremap <Right> <C-w><C-l>
nnoremap <Leader><Right> :rightbelow vnew<CR>
nnoremap <Left> <C-w><C-h>
nnoremap <Leader><Left> :leftabove vnew<CR>

" Line Numbers
nnoremap <C-l> :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>
let [&nu, &rnu] = [1, 1]

" Smooth Scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>

" ---------- Configure Plugins ---------- "

" Theme - Nord Vim
colorscheme nord

" Toggle Nerdtree
map <Tab> :NERDTreeToggle<CR>

" File search (fzf)
"
map <C-p> :Files<CR>

" Multicursor plugin
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Status bar - Lightline
set laststatus=2
