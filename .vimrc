set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,cp932,sjis,utf-16le
set fileformats=unix,dos

" プラグインを無効化する場合に指定する
" let g:pathogen_disabled = [
"         \ "mru.vim",
"         \ "riv.vim"
"         \ ]

execute pathogen#infect()
execute pathogen#helptags()

syntax enable
filetype plugin indent on

colorscheme slate
set laststatus=2
set ruler
set showmode
set showcmd
set number
set hidden
set wildmenu
set iminsert=0
set hlsearch
set autoindent

set noundofile
set backup
set noswapfile
if ( has('win32') || has('win64') )
	set backupdir=$TEMP
else
	set backupdir=/tmp
endif

set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
let g:vim_indent_cont=8
set textwidth=0

set clipboard^=unnamedplus

augroup vimrc
	autocmd!
	autocmd FileType vim setlocal keywordprg=:help
augroup END

"----------------------------------------
" helpfile
"----------------------------------------
set helplang=ja,en

"----------------------------------------
" qfixhowm
"----------------------------------------

" qfixappにruntimepathを通す(パスは環境に合わせてください)
set runtimepath+=$HOME/.vim/bundle/qfixapp.vim

" キーマップリーダー
let QFixHowm_Key = 'g'

" howm_dirはファイルを保存したいディレクトリを設定
let howm_dir             = '$HOME/howm'
"let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.rst'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
"let howm_fileformat      = 'dos'

let QFixHowm_FileType    = 'rst'

" キーコードやマッピングされたキー列が完了するのを待つ時間(ミリ秒)
set timeout timeoutlen=3000 ttimeoutlen=100

" プレビューや絞り込みをQuickFix/ロケーションリストの両方で有効化(デフォルト:2)
let QFixWin_EnableMode = 1


nnoremap <Leader>ev :e ~/dotfiles/.vimrc<CR>
" nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.txt<CR>
nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.rst<CR>
" nnoremap q: <Nop>
