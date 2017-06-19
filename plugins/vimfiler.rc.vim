"Setting the vimfiler"
let g:vimfiler_trashbox_directory = '~/.cache/.vimfiler_trashbox'
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer = 1
set modifiable
"VimFiler 起動
nmap <silent> fv :<C-u>VimFilerBufferDir -buffer-name=explorer -force-quit<CR>
"vimfilerを開いている間のキーマッピング
autocmd FileType vimfiler call s:vimfiler_my_settings()
function! s:vimfiler_my_settings()"{{{
  nmap <buffer> q <Plug>(vimfiler_exit)
endfunction"}}}

if executable('grep')
  let g:unite_source_grep_command = 'grep'
  "let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  "let g:unite_source_grep_recursive_opt = ''
endif
