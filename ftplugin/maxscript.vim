" Vim filetype plugin file
" Language:           MAXscript
" Maintainer:         D Barsam
" Version:            0.1
" Project Repository: https://github.com/dbarsam/vim-maxscript
" Vim Script Page:    See readme at https://github.com/dbarsam/vim-maxscript

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif

" Don't load another plug-in for this buffer
let b:did_ftplugin = 1

setlocal tw=0
setlocal commentstring=--%s
setlocal formatoptions=tcqro

" Change the browse dialog on Win32 to show mainly MAXScript-related files
if has("gui_win32")
	let b:browsefilter =
				\ "All MAXScript Files (*.ms, *.mse, *.mcr, *.mzp, *.ds)\t*.ms,;*.mse,;*.mcr,;*.mzp\n" .
				\ "MAXScript Files (*.ms)\t*.ms\n" .
				\ "Encrypted MAXScript Files (*.mse)\t*.mse;\n" .
				\ "Macroscript Files (*.mcr)\t*.mcr\n" .
				\ "MAXScript Zip Package (*.mzp)\t*.mzp\n" .
				\ "All Files (*.*)\t*.*\n"
endif

" Undo the stuff we changed
let b:undo_ftplugin = "setlocal tw< cms< fo<" .
			\ " | unlet! b:browsefilter"

