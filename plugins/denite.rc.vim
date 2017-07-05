"Unite prefix key.
nmap [unite] <Nop>
xmap [unite] <Nop>
nmap <C-f> [unite]
xmap <C-f> [unite]

"バッファ一覧
nmap <silent> fs :<C-u>Denite -refresh -highlight-mode-insert=Search buffer<CR>
nmap <silent> fv :<C-u>Denite -refresh -highlight-mode-insert=Search file_rec:
nmap <silent> fo :<C-u>Denite -refresh -highlight-mode-insert=Search outline<CR>

call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:quit>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)
