" Use C-Space to Esc out of any mode
nnoremap <C-Space> <Esc>:noh<CR>
vnoremap <C-Space> <Esc>gV
onoremap <C-Space> <Esc>
cnoremap <C-Space> <C-c>
inoremap <C-Space> <Esc>`^
" Terminal sees <C-@> as <C-space>
nnoremap <C-@> <Esc>:noh<CR>
vnoremap <C-@> <Esc>gV
onoremap <C-@> <Esc>
cnoremap <C-@> <C-c>
inoremap <C-@> <Esc>`^

" Mappings for quick search & replace.
" Do a / search first, then leave pattern empty in :s// to use last
map <Leader>sra :%s///g<Left><Left>
map <Leader>src :%s///gc<Left><Left><Left>

" Press ; and then start typing to fzf search the whole project for a word or string
command! -bang -nargs=* Fg call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap ; :Fg<CR>

" " Run Ag, show results in quickfix
command! -nargs=+ -complete=file -bar StaticAg
      \ silent! grep! <args>|cwindow|redraw!

" Bind K to grep word under cursor
nnoremap K :set nois<CR> :StaticAg <C-R><C-W><CR>
