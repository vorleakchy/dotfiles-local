let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
nnoremap <C-p> :Files<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'

let branch_files_options = { 'source': '( git status --porcelain | awk ''{print $2}''; git diff --name-only HEAD $(git merge-base HEAD master) ) | sort | uniq'}
let branch_files_options_develop = { 'source': '( git status --porcelain | awk ''{print $2}''; git diff --name-only HEAD $(git merge-base HEAD develop) ) | sort | uniq'}
command! BranchFiles call fzf#run(fzf#wrap('BranchFiles',
      \ extend(branch_files_options, { 'options': g:fzf_files_options }), 0))
command! BranchFilesDevelop call fzf#run(fzf#wrap('BranchFilesDevelop',
      \ extend(branch_files_options_develop, { 'options': g:fzf_files_options }), 0))
nnoremap <silent> <leader>gp :BranchFiles<cr>


nnoremap <leader>gm :Files app/models/<cr>
nnoremap <leader>gv :Files app/views/<cr>
nnoremap <leader>gc :Files app/controllers/<cr>
nnoremap <leader>gy :Files app/assets/stylesheets/<cr>
nnoremap <leader>gj :Files app/assets/javascripts/<cr>
nnoremap <leader>gs :Files spec/<cr>
nnoremap <leader>gb :Buffers<cr>

function! s:all_help_files()
  return join(map(split(&runtimepath, ','), 'v:val ."\/doc\/tags"'), ' ')
endfunction
let full_help_cmd = "cat ". s:all_help_files() ." 2> /dev/null \| grep -i '^[a-z]' \| awk '{print $1}' \| sort"

nnoremap <silent> <leader>he :Helptags<cr>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

