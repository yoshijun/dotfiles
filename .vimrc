"エンコード
set encoding=utf8
"ファイルエンコード
set fileencoding=utf-8
"拡張子に応じて色を付ける
syntax on
"行数を表示
set number
"右下に表示される行・列の番号を表示する
set ruler
"編集結果非保存のバッファから、新しいバッファを開くときに警告を出さない
set hidden
"ヒストリの保存数
set history=50
"検索時にファイルの最後まで行ったら最初に戻る
set wrapscan
"インクリメンタルサーチ
set incsearch
"検索文字の強調表示
set hlsearch
"自動的にインデントする
set autoindent
"インデントをスペース4つ分に設定
set tabstop=4
"オートインデント
set smartindent
"タイトルを表示
set title
"コマンドをステータス行に表示
set showcmd
"画面最後の行をできる限り表示する
set display=lastline
"括弧入力時の対応する括弧を表示
set showmatch
"対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
"対応括弧をハイライト表示する
set showmatch
"対応括弧の表示秒数を3秒にする
set matchtime=3
"ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
"コマンドを画面最下部に表示する
set showcmd

"全角スペースのハイライトを設定
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction
 
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif
