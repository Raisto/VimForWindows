""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       载入设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"显示设置
execute "source ".$MYVIMFILES."/display.vim"
"键盘映射
execute "source ".$MYVIMFILES."/mapkey.vim"
"插件脚本设置
execute "source ".$MYVIMFILES."/plugin.vim"
"插件配置
execute "source ".$MYVIMFILES."/configuration_plugin.vim"

"背景主题颜色设置
let $MYCOLORS = $MYVIMFILES."/colors"
execute "source ".$MYCOLORS."/manuscript.vim"
"execute "source ".$MYCOLORS."/molokai.vim"
"execute "source ".$MYCOLORS."/desert.vim"
"execute "source ".$MYCOLORS."/evening.vim"
"execute "source ".$MYCOLORS."/koehler.vim"
"color Monokai   "设置gvim 的主题
"打开文件类型检测，加了这句才可以用智能补全
set completeopt=preview,menu

"开启语法高亮
syntax on
syntax enable

"检测文件类型并开启相关插件
filetype on

"载入相应文件类型插件
filetype plugin on

"为特定文件类型载入相关缩进文件
filetype plugin indent on

"设置帮助文档为中文类型
"set helplang=tw  "繁体
"set helplang=cn  "简体

"将 <leader> 定义为 "," 键
let mapleader=","

" 忽略编译的文件
set wildignore=*.o,*~,*.pyc,*.class
