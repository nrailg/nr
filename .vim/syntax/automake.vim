function! RenewAutomake()
  ! aclocal; automake --add-missing; autoconf; sh configure;
endfunction

nnoremap <buffer> <F5>    :w<CR>:call RenewAutomake()<CR>
