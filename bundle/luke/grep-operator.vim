nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<CR>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<CR>

function! s:GrepOperator(type)
  let saved_unnamed_reg = @@
  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  silent! execute "grep! -R " . shellescape(@@) . " ."
  copen

  let @@ = saved_unnamed_reg
endfunction
