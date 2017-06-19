" color
autocmd! BufWritePost * Neomake
augroup my_neomake_signs
  au!
  autocmd ColorScheme *
        \ hi NeomakeErrorSign cterm=bold ctermfg=7 ctermbg=9 |
        \ hi NeomakeWarningSign cterm=bold ctermfg=8 ctermbg=216 |
        \ hi NeomakeMessageSign cterm=bold ctermfg=8 ctermbg=150 |
        \ hi NeomakeInfoSign cterm=bold ctermfg=8 ctermbg=110
augroup END
" text
let g:neomake_error_sign = {'text': 'E✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {
    \   'text': 'W➤',
    \   'texthl': 'NeomakeWarningSign',
    \ }
let g:neomake_message_sign = {
     \   'text': 'M➤',
     \   'texthl': 'NeomakeMessageSign',
     \ }
let g:neomake_info_sign = {'text': 'ℹ➤', 'texthl': 'NeomakeInfoSign'}

