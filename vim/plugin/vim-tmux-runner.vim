" vim-tmux-runner mappings
nnoremap <silent> <Leader>ro :VtrOpenRunner<CR>
nnoremap <silent> <leader>ra :VtrAttachToPane<CR>
nnoremap <silent> <leader>rs :VtrSendLinesToRunner<CR>
nnoremap <silent> <leader>rf :VtrFocusRunner<CR>

" vim-test strategy
let g:test#strategy = 'vtr'
