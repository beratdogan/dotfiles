" http://vim.wikia.com/wiki/Mac_OS_X_clipboard_sharing

" Make vim incompatbile to vi.
set nocompatible

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:

NeoBundle 'tpope/vim-sensible'

" Sublime Text style multiple selections for Vim
" https://github.com/terryma/vim-multiple-cursors
NeoBundle 'terryma/vim-multiple-cursors'

" Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
" https://github.com/joonty/vdebug
" NeoBundle 'joonty/vdebug'

" A tree explorer plugin for vim.
" https://github.com/scrooloose/nerdtree
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'bling/vim-airline'

NeoBundle 'Shougo/neocomplcache'

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'trusktr/seti.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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

" set markdown syntax highlighting for md files
au BufRead,BufNewFile *.md set filetype=markdown
" set column color for py files at 79
au BufRead,BufNewFile *.py set colorcolumn=79

let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'solarized'

" set backspace=indent,eol,start – Already set by sensible


inoremap jj <ESC>
inoremap JJ <Esc>A
