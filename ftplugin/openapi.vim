" OpenApi/YAML filetype plugin
"
" Language:     YAML (with openapi)
" Maintainer:   Horacio Sanson
" URL:          https://github.com/hsanson/vim-openapi
"
" Mostly taken from https://github.com/chase/vim-ansible-yaml

" Only do this when not done yet for this buffer.
if exists("b:did_ftplugin")
  finish
endif

" Avoid problems if running in 'compatible' mode.
let s:save_cpo = &cpo
set cpo&vim

let b:undo_ftplugin = "setl comments< commentstring<"

setlocal comments=:#
setlocal commentstring=#\ %s

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:sts=2:sw=2:
