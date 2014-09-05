""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       My Vim Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       路径初始化
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('unix')
  let $MYVIMFILES = '~/.vim'
elseif has('win32')
  let $MYVIMFILES = $VIM.'/vimfiles'
endif

"利用 bundle 管理插件，此处是设置 bundle 所在路径
let $MYBUNDLEDIR = $MYVIMFILES . '/bundle'
"执行 base.vim 基本的设置
execute 'source ' . $MYVIMFILES . '/base.vim'
