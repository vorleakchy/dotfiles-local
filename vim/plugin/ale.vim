let g:ale_emit_conflict_warnings = 0
let g:ale_linters = {
       \ 'javascript': ['eslint']
       \ }
let g:ale_set_quickfix = 0
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = '⚠ '
let g:ale_sign_warning = '⨉'
let g:ale_echo_msg_format = '[%linter%] %s'

highlight clear ALEErrorSign
highlight clear ALEWarningSign

set updatetime=1000

autocmd BufEnter * set conceallevel=0
autocmd CursorHold * call ale#Lint()
autocmd CursorHoldI * call ale#Lint()
autocmd InsertLeave * call ale#Lint()
autocmd TextChanged * call ale#Lint()

let g:ale_lint_on_text_changed = 0

