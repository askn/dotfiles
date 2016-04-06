call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'vim-scripts/tComment'
Plug 'vim-scripts/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'rhysd/vim-crystal'
Plug 'thoughtbot/vim-rspec'
Plug 'mileszs/ack.vim'
Plug 'ngmy/vim-rubocop'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'unblevable/quick-scope'

call plug#end()

let mapleader = "-"

set backspace=indent,eol,start
set number
set relativenumber

syntax on
filetype plugin indent on

set t_Co=256
let g:rehash256 = 1

set background=dark
colorscheme Tomorrow-Night-Eighties
" colorscheme molokai

let g:go_fmt_command = "gofmt"
" let g:go_fmt_fail_silently = 1
let g:go_disable_autoinstall = 1

" Remove trailing spaces.
command! -nargs=0 WS %s/\s\+$//gce

" convert hash for ruby
command! -nargs=0 CH :%s/:\([^ ]*\)\(\s*\)=>/\1:/g

command! -nargs=0 JSON %!python -m json.tool

set laststatus=2
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1

set autoindent          " automatically indent new line
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd FileType sh setlocal ai sts=8 sw=8 noet
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=80 et si ai
autocmd Filetype ruby,eruby,yaml setlocal ts=2 sw=2 ai et expandtab

" Daima düzenlenen dosyanın bulunduğu dizine geç.
" autocmd BufEnter * lcd %:p:h

" Dosyayı düzenlerken kursörü en son bilinen konuma al.
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \	execute "normal g`\"" |
            \ endif

" Aşağıdaki kelimeleri daima renklendir.
autocmd BufRead,BufNewFile * syntax keyword Todo TODO XXX FIXME

nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Leader><Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

let g:gitgutter_sign_added = 'a'
let g:gitgutter_sign_modified = 'm'
let g:gitgutter_sign_removed = 'd'

highlight clear SignColumn

let g:syntastic_ruby_checkers = ['rubocop']

let g:multi_cursor_next_key='<C-d>'

map <C-n> :Explore<cr>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <Leader>e :e .<CR>

let g:rspec_command = ":term\ bundle\ exec\ rspec\ -f d -c {spec}"

" map <silent> <Leader>pp :rightbelow vs term://bundle\ exec\ rspec\ %<CR>

set incsearch
set hlsearch " highlight the search

" clear search
map <silent> <space><space> :nohlsearch<CR>

" buffer
set autoread

set clipboard+=unnamed
" explore level
" let g:netrw_liststyle=3

" keep blocks selected when indenting
vnoremap < <gv
vnoremap > >gv

set wildmenu
set wildmode=full
set scrolloff=3
set cursorline

let g:vimrubocop_config = '~/_/dotfiles/rubocop.yml'

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

set fillchars="vert:"

hi VertSplit ctermbg=136 guibg=None
hi Split ctermbg=136 guibg=None

" let g:airline#extensions#tabline#enabled = 1
nmap <Tab><Tab> :CtrlPBuffer <CR>

" Enable mouse events
if has("mouse")
    set mouse=a
endif
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
set wrap!

set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,*.jpg,*.jpeg,*.png,*.gif,vendor/**,db/sphinx,log/**,tmp/**,public/uploads,coverage/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=vendor/gems/*,vendor/ruby/*,node_modules/*,coverage/*

" Better Completion
set complete=.,b,u,]
set completeopt=menu,preview

" Highlight EOL whitespace, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight default ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufRead * match ExtraWhitespace /\s\+$/

" The above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

set noerrorbells visualbell t_vb=

set lazyredraw
set ttyfast
