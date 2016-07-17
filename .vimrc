" Disable 256 colors
set t_Co=16

" Enable filetype plugin
filetype plugin on

" Set syntax highlighting by default
syntax on

" Set tab size to 4 spaces
set ts=4 sw=4

" Enable mouse
set mouse=a

" Navigate with jkl; instead of hjkl
noremap ; l
noremap l k
noremap k j
noremap j h

" Show line numbers
set number

" Set relative line numbers
set relativenumber

" Set line number color
highlight LineNr ctermfg=grey

" Visual autocomplete
set wildmenu

" Highlight matching [{()}]
set showmatch

" Search as characters are entered
set incsearch

" Highlight search matches
set hlsearch

" Show current command
set showcmd
