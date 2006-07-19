" .vimrc by Tobias Schlitt <toby@php.net>.
" No copyright, feel free to use this, as you like.
" 
" General VIM settings file. Optimized for coding PHP can be found in 
" ~/vim/ftdetect/php.vim.
"
" v1.1pl1
"
" Changelog:
" 
" v1.1:
" --------------
"  - Added versioning and changelog
"  - Added auto-completion using <TAB>
"  - Added auto-reload command, when .vimrc changes
"  - Deactivated <CTRL>-p => "pear package" in favor of 
"  - Mapped <CTRL>-p => "run through CLI"
"  - Added fold markers for better overview
"  - Added for mapping for wrapping visual selections into chars (like '/(/...)
"  - Added scrolljump=5 and scrolloff=3 for better moving around with folds
"  - Added mapping <CTRL>-h to search for the word under the cursor (should be
"  a funcion) using phpm
"  - Replaced map/imap with noremap/inoremap for clearer mappings
"
" v1.1pl1:
" --------------
"  - Fixed issue with <CTRL>-p for running PHP CLI (missing <cr>)
"  - Remapped PHP compile check to ; (in command mode only)
"
" v1.2:
" -----
"  - Remapped PHP compile check to . (in command mode only)
"  - Mapped ; to (add ; at the end of line, when missing - command mode only)
"  - Added make facilities (:make, jump to error).
"  - Added setting for not highlighting every search result (nohlsearch).
"  - Added laststatus=2 (tipp by Derick)
"  - Tip by Jakob (UG): Visual, <z>, <f> == foldmarkers for area
"  - Moved PHP specific settings to .vim/ftdetect/php.vim
"  - Activated sourcing of ftplugins
"  - Added file type setting for .phps files
"  - Created PDV (phpDocumentor for VIM) and added mapping (ATTENTION! BC
"  break!)
"  - Fixed bug with cover char mapping of "" in visual mode
"  - Added possible alternatives for other coding standards
"
"  - Replace grepprg to remove SVN results
"  - Add mapping for VIM7 spell checks to <F5>
"  - Added autocommand to highlight the current line in insert mode.

set grepprg=/usr/bin/vimgrep\ $*\ /dev/null

map <F5> :setlocal spell! spelllang=en_us<cr>

" Highlight current line in insert mode.
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul 

" {{{ .phps files handled like .php

au BufRead,BufNewFile *.phps		set filetype=php

" }}}

" {{{  Settings   

" Use filetype plugins, e.g. for PHP
filetype plugin on

" Show nice info in ruler
set ruler
set laststatus=2

" Set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4

" Show line numbers by default
set number

" Enable folding by fold markers
set foldmethod=marker 

" Autoclose folds, when moving out of them
set foldclose=all

" Use incremental searching
set incsearch

" Do not highlight search results
set nohlsearch

" Jump 5 lines when running out of the screen
set scrolljump=5

" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=3

" Repair wired terminal/vim settings
set backspace=start,eol,indent

" Allow file inline modelines to provide settings
set modeline

" }}}
