set rtp+='"${vim_powerline}"'
set laststatus=2 
set t_Co=256"
set nu
set relativenumber
set cursorline
" set cursorline cursorlineopt=number " highlight number only
set colorcolumn=80
set mouse+=a
set tw=80
syntax on
" set pastetoggle=<F12>
set termguicolors

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" autoclose brackets and quotes
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>

" unset last search pattern highlight and reset guicursor highlight
" by hitting escape
nnoremap <Esc> :noh<CR><Esc>

if exists("g:neovide")
	" reset cursor highlight when entering insert mode
	nnoremap i :set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor<CR>i
	nnoremap a :set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor<CR>a
	nnoremap o :set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor<CR>o
endif

set list
" set listchars=eol:$,tab:\ \,trail:.,extends:>,precedes:<
"set listchars=eol:$,tab:>\ ,trail:.,extends:>,precedes:<
" set listchars=tab:│\ ,trail:.
" set listchars=eol:$,tab:│\ ,trail:.

nnoremap <c-s> :w<cr>

" convert blocks of empty lines into one empty line
map s--        :g/^$/,/./-j<cr>
" reformat a paragraph
map p--        gqip

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" set .launch files to use xml syntax
autocmd BufNewFile,BufRead *.launch set syntax=xml
