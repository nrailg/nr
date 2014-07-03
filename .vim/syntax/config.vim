function! RenewConfigure()
  ! autoconf; sh configure;
endfunction

nnoremap <buffer> <F5>    :w<CR>:call RenewConfigure()<CR>
