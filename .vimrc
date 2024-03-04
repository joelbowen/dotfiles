set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

function! ValidateCoCExtensions()
	let l:cocExtensions = ['coc-tsserver']
	let l:installedExtensions = CocAction('extensionStats')
	echo l:installedExtensions
	for l:extension in l:cocExtensions
		if l:installedExtensions !~ l:extension
			execute 'CocInstall -sync' l:extension
		endif
	endfor
endfunction

call plug#end()

autocmd BufNewFile,BufRead *.mjs,*.jsx,*.tsx set filetype=javascript
autocmd BufWritePre,InsertLeave *.ts,*.js,*.jsx,*.mjs,*.html,*.md Neoformat
" autocmd VimEnter * call timer_start(500, { -> ValidateCoCExtensions() })

:set number
:syntax enable

nmap <C-p> <Plug>MarkdownPreviewToggle
