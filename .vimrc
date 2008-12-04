set t_Co=256
set ai sw=2 sts=2 et      " Default 2 spaces indentation, soft tabs
set nocompatible          " We're running Vim, not Vi!
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
set hlsearch

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

"Personal Settings
colorscheme railscasts
set nowrap

"OSX Copy/Paste

command Copy .w !pbcopy
command Paste r !pbpaste
