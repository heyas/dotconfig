" automatic spellchecking for markdown files
setlocal spell

" Run Goyo automatically on markdown buffers

function! s:auto_goyo()
  if &ft == 'markdown'
    Goyo 100
  elseif exists('#goyo')
    let bufnr = bufnr('%')
    Goyo!
    execute 'b '.bufnr
  endif
endfunction

augroup goyo_markdown
  autocmd!
  autocmd BufEnter * call s:auto_goyo()
augroup END

