set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
set rtp+=~/.fzf

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://vimawesome.com/plugin/nerdtree-red
Plugin 'scrooloose/nerdtree'

" git versioning
Plugin 'airblade/vim-gitgutter'

" status display
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" solarized theme
Plugin 'altercation/vim-colors-solarized'

" fuzzy finder
Plugin 'junegunn/fzf'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" settings
set relativenumber
set number
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='cobalt2'
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" solarized theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" nerd tree
autocmd VimEnter *  NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p
" ctrl p ignore .gitignore files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" key map
" toggle NERDTree
nmap <C-b> :NERDTreeToggle<Enter>
" Esc easily
imap jj <Esc>
" surf around easily
nmap k gk
nmap j gj
" save
nmap <Space>w <Esc>:w<Enter>
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <C-q> :bdelete<CR>
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
" fuzzy finder
nnoremap <Leader>f :FZF<CR>
