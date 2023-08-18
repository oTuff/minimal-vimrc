if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/seoul256.vim'
call plug#end()

let g:coc_global_extensions = [ 'coc-clangd', 'coc-csharp-ls', 'coc-css', 'coc-eslint', 'coc-highlight', 'coc-html', 'coc-java', 'coc-json', 'coc-markdownlint', 'coc-pairs', 'coc-prettier', 'coc-pyright', 'coc-sh', 'coc-snippets', 'coc-tsserver', 'coc-vimlsp' , 'coc-yaml']
let g:coc_user_config = {"coc.preferences.formatOnSave": "true"}

set linebreak 
set number 
set relativenumber
set scrolloff=8
set termguicolors
set termwinsize=12x

set background=dark
color retrobox
" let g:seoul256_background = 233
" color seoul256

" Netrw
let g:netrw_banner= 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

" Binds
let mapleader = " "
nnoremap <silent> <leader>e :Lexplore<CR>
nnoremap <silent> <c-h> :bel term<CR>
tnoremap <C-h> <cmd>:q!<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <silent> <leader>rn <Plug>(coc-rename)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>
" nnoremap <silent> <s-h> :call CocActionAsync('doHover')<cr>
" nnoremap <silent> <s-k> :bn<CR> 
" nnoremap <silent> <s-j> :bn<CR> 
" nnoremap <silent> <leader>n :bn<CR>
" nnoremap <silent> <leader>p :bp<CR> 
" inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()
"             \: "\<C-g>u\<TAB>\<c-r>=coc#on_enter()\<CR>"