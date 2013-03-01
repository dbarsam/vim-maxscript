" Vim indent file
" Language:           MAXscript
" Maintainer:         D Barsam
" Version:            0.1
" Project Repository: https://github.com/dbarsam/vim-maxscript
" Vim Script Page:    See readme at https://github.com/dbarsam/vim-maxscript

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal smartindent

let b:undo_indent = "setl si<"

