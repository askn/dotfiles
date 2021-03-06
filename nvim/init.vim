source ~/.config/nvim/autocorrect.vim

call plug#begin('~/.config/nvim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'unblevable/quick-scope'

Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'janko-m/vim-test'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'morhetz/gruvbox'
Plug 'will133/vim-dirdiff'

Plug 'junegunn/vim-easy-align'
call plug#end()

" colorscheme Tomorrow-Night-Eighties
colorscheme gruvbox
set background=dark
filetype plugin indent on
syntax on
hi VertSplit ctermbg=136 guibg=None
hi Split ctermbg=136 guibg=None
hi clear SignColumn

let mapleader = "-"
let g:rehash256 = 1

set number
set relativenumber
set splitright
set splitbelow
set incsearch
set hlsearch " highlight the search
set wildmenu
set wildmode=full
set scrolloff=3
set cursorline
set noerrorbells visualbell t_vb=
set backspace=indent,eol,start
set fillchars="vert:"
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,*.jpg,*.jpeg,*.png,*.gif,vendor/**,db/sphinx,log/**,tmp/**,public/uploads,coverage/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=vendor/gems/*,vendor/ruby/*,node_modules/*,coverage/*
set wildignore+=rdoc/**
set lazyredraw
set ttyfast
set t_Co=256
set showmatch     " Show matching of: () [] {}
set mouse+=a

set clipboard+=unnamed

" Better Completion
set complete=.,b,u,]
set completeopt=menu,preview

set autoindent          " automatically indent new line
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd FileType sh setlocal ai sts=8 sw=8 noet
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=80 et si ai
autocmd Filetype cr,ruby,eruby,yaml setlocal ts=2 sw=2 ai et expandtab

" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 23
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" Aşağıdaki kelimeleri daima renklendir.
autocmd BufRead,BufNewFile * syntax keyword Todo TODO XXX FIXME
" Dosyayı düzenlerken kursörü en son bilinen konuma al.
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \	execute "normal g`\"" |
            \ endif

" clear search
map <silent> <space><space> :nohlsearch<CR>
" Remove trailing spaces.
command! -nargs=0 WS %s/\s\+$//gce
" convert hash for ruby
command! -nargs=0 CH :%s/:\([^ ]*\)\(\s*\)=>/\1:/g
" keep blocks selected when indenting
vnoremap < <gv
vnoremap > >gv

" Highlight EOL whitespace, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight default ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufRead * match ExtraWhitespace /\s\+$/
" The above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/


" ------------ Eklenti Ayarları -----------------------
" ctrl p
nmap <Tab><Tab> :CtrlPBuffer <CR>

" airline
set laststatus=2
" let g:airline_theme='powerlineish'
let g:airline_theme='gruvbox'

" vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#strategy = "neovim"
let test#ruby#rspec#executable = ":tabnew | term bundle exec rspec -f d -c"

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
let g:ale_fixers = {'ruby': ['rubocop']}

" multi cursor
let g:multi_cursor_next_key='<C-d>'

" deoplete.
let g:deoplete#enable_at_startup = 1

" nerdtree
noremap <Leader><Leader> :NERDTreeToggle<CR>

" tcomment için
" control _ + p paragraf
" control _ + b block
"
" gS gJ splitjoin
" f F sonrası , tekrarlar
"
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Esc yerine jj
imap jj <Esc>
