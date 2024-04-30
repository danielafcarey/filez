execute pathogen#infect()
syntax on
filetype plugin indent on
:imap jj <Esc>
set clipboard=unnamed
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|__pycache__'

" ignore search case
nnoremap / /\c
nnoremap ? ?\c

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" save and go back into normal mode
imap jwj <Esc>:w<ENTER>

" set autosave on focus lost
:au FocusLost * silent! wa

" doesn't show 'visual' or 'normal' or 'insert'
set noshowmode

" show line numbers
set nu

" toggle numbers view
function! NumberToggle()
  :exec &nu==0? "se nu!" : "se rnu!"
endfunction
nnoremap <C-n> :call NumberToggle()<CR>

" copy/paste from external apps
set mouse=n

" solarized colorscheme
syntax enable
set background=dark
colorscheme solarized

map <C-b> :NERDTreeToggle<CR>ll NetrwToggle()<CR>

" map split navigation from <c-w-direction> to <c-direction>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" split resizing with arrow keys
nmap <Right> <C-w>>
nmap <Left> <C-w><
nmap <Up> <C-w>+
nmap <Down> <C-w>-

" shortcut for django logging in insert mode
iabbrev logg import logging<cr>logging.getLogger('django').info()<ESC>i

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.py,*.ts,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.py'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" configure vim to save the swapfiles to a separate location

set backupdir=$TMPDIR//
set directory=$TMPDIR//
