" http://vim.wikia.com/wiki/Mac_OS_X_clipboard_sharing

" Make vim incompatbile to vi.
set nocompatible

" Required:
filetype plugin indent on

" syntax enable – Already set by sensible
set background=dark

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" set mouse enabled
set mouse=a

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

set cursorline
syntax on

" set markdown syntax highlighting for md files
au BufRead,BufNewFile *.md set filetype=markdown
" set column color for py files at 79
au BufRead,BufNewFile *.py set colorcolumn=79


set backspace=indent,eol,start


inoremap jj <ESC>
inoremap JJ <Esc>A
