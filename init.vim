" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
set clipboard=unnamed
set noswapfile
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

filetype indent on
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set ambiwidth=double

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
set incsearch
set showmode

set visualbell

" 256色
" set t_Co=256
" truecolor
" set termguicolors
" 背景色
set background=dark
colorscheme molokai
set hlsearch

" netrwで新しいウィンドウを下に分割する
let g:netrw_alto = 1
" netrwで新しいウィンドウを右に分割する
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 10
let g:netrw_liststyle = 0
let g:netrw_browse_split = 4

" 行番号を非表示 (number:表示)
set number
" 120桁目
set colorcolumn=120
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title

set fileformats=unix,dos,mac
set fenc=utf-8
set fileencodings=utf-8,cp932,iso-2022-jp,euc-jp,ucs2le,ucs-2
set encoding=utf-8

set autoread
set hidden

" javaの設定
au BufRead,BufNewFile,BufReadPre *.java   set filetype=java
autocmd FileType java    setlocal sw=2 sts=2 ts=2 noexpandtab

" javaの設定
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 expandtab

"Setting the keymap
noremap <C-k> <ESC>
noremap! <C-k> <ESC>
nnoremap <C-j> :w<CR>
noremap! <C-j> <Nop>
noremap! <C-c> <Nop>
nmap f <Nop>

syntax on
hi IndentGuidesOdd  ctermbg=24
hi IndentGuidesEven ctermbg=22
hi Normal         ctermbg=none
hi Visual         ctermfg=224 ctermbg=60
hi MatchParen cterm=bold ctermfg=208 ctermbg=233
