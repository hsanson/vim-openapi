function! DetectYamlOpenapi()
  let linenr = 0
  while linenr < 30
    let linenr += 1
    if getline(linenr) =~ 'openapi:\s\+.*\d\+\.\d\+\.\d\+.*'
      set filetype=openapi.yaml
      break
    endif
  endwhile
endfunction

function! DetectJsonOpenapi()
  let linenr = 0
  while linenr < 30
    let linenr += 1
    if getline(linenr) =~ '"swagger":\s\+"\d\+\.\d\+"'
      set filetype=openapi.json
      break
    endif
  endwhile
endfunction

augroup filetypedetect
  au BufRead *.{yml,yaml} call DetectYamlOpenapi()
  au BufRead *.json call DetectJsonOpenapi()
augroup END
