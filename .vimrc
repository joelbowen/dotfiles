set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'

call plug#end()

autocmd BufNewFile,BufRead *.mjs,*.jsx,*.tsx set filetype=javascript
autocmd BufWritePre,InsertLeave *.ts,*.js,*.jsx,*.mjs,*.html,*.md Neoformat
autocmd BufRead,BufNewFile *.md setlocal spell

:set number
:syntax enable

