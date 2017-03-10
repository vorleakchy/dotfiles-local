" Override thoughtbot completion direction
inoremap <S-Tab> <C-P>

function! s:check_back_space()
  let col = col('.') - 1
  return !col || getline('.')[col - 1] !~ '\k'
endfunction

" Override thoughtbot tab wrapper to move in opposite direction
function! InsertTabWrapper()
  if s:check_back_space()
    return "\<Tab>"
  else
    return "\<C-n>"
  endif
endfunction
