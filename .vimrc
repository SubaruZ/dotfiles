"Vi互換しない
set nocompatible

"Bundleファイルの読み込み
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle/
	call neobundle#rc(expand('~/.vim/bundle/neobundle/'))
endif
NeoBundle 'vcscommand.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/neosnippet-snippets'

filetype on
filetype plugin on
filetype indent on
NeoBundleCheck


"保存するコマンドライン履歴数
set history=50

"色設定
set term=builtin_linux
set ttytype=builtin_linux
syntax on
"colorscheme solarized

"検索設定
""ファイル末尾まで進んだら、ファイル先頭から再検索する
set wrapscan
""インクリメンタルサーチ
set incsearch
""検索結果をハイライト表示する
set hlsearch
""大文字と小文字を区別せず検索する
set ignorecase

"入力設定
""自動的にインデントする
"set autoindent
"補完
set wildmenu wildmode=list:full
"表示設定

""タイトルを表示する
set title
""行番号を表示しない
set number
"set list
"set listchars=tab:^\ ,trail:~
""タブ表示幅
set tabstop=4
""自動インデントでずれるタブ幅
set shiftwidth=4
""ステータスラインの設定
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
highlight statusline	term=NONE cterm=NONE guifg=blue ctermfg=white ctermbg=blue

"警告設定
set errorbells
set novisualbell
set visualbell t_vb=


"VimFiler
let g:vimfiler_as_default_explorer=1
command VF VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit

"Ctags
set tags=./tags;

