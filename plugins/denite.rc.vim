"Unite prefix key.
nmap [unite] <Nop>
xmap [unite] <Nop>
nmap <C-f> [unite]
xmap <C-f> [unite]

"バッファ一覧
nmap <silent> fs :<C-u>Denite -refresh -highlight-mode-insert=Search buffer file_rec<CR>
nmap <silent> fo :<C-u>Denite -refresh -highlight-mode-insert=Search outline<CR>

call denite#custom#map(
	      \ 'insert',
	      \ '<C-k>',
	      \ '<denite:quit>',
	      \ 'noremap'
	      \)

