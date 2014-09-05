""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       用 neobundle 来管理插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Configure bundles
if has('vim_starting')
    let &runtimepath = &runtimepath.','.$MYBUNDLEDIR.'/neobundle.vim'
endif
call neobundle#rc(expand($MYBUNDLEDIR))

"Let NeoBundle manage NeoBundle (让 Neobundle 管理 Neobundle)
NeoBundleFetch 'Shougo/neobundle.vim'

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


 "My Bundle here (自己安装的插件 Bundle 管理) 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 托管插件示例
"代码在 github 上，使用 'github账号/项目名' ,例如
"Bundle 'tpope/vim-fugitive'
"代码在 vimscript 上，使用插件名称，插件名字可以再 http://vim-scripts.org/vim/scripts.html 页面中查看,例如
"Bundle 'vimwiki'
"非 github 插件，使用其 git 地址，例如
"Bundle 'git://git.wincent.co/command-t.git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin list
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"为了防止使用自动补全时不卡
NeoBundle 'Shougo/vimproc.vim'

"在 vim 中能使用 shell 脚本
NeoBundle 'Shougo/vimshell.vim'

"vim 状态栏，显示编辑模式，文件名/类型，光标所在行/列,所在位置
NeoBundle 'bling/vim-airline'

"中文帮助文档(简体)
NeoBundle 'foursking/vim-doc-cn'

NeoBundle 'SirVer/ultisnips'                        "自动补全(要使用这个插件，就必须有 snipets 代码片段 (可以用 'honza/vim-snippets' 插件来获取 snipets))

"NeoBundle 'honza/vim-snippets'                     "代码片段(如果不想自己管理代码片段设置的，可以使用这个插件省事。不然就要在bundle文件夹中生成的vim-snippets中的UltiSnips文件夹独立复制出来到.vim/vimfiles文件夹中，然后删除bundle文件夹中的vim-snipets文件夹，即可自己设置代码片段)

NeoBundle 'WolfgangMehner/vim-plugins'              " C/C++ 辅助插件(也就是 c.vim 插件)
NeoBundle 'Shougo/neocomplete.vim'                  "代码自动补全

"显示缩进对齐线
NeoBundle 'Yggdroot/indentLine'

NeoBundle 'kien/rainbow_parentheses.vim'            "高亮括号
NeoBundle 'Raimondi/delimitMate'                    "括号自动补全
NeoBundle 'scrooloose/nerdcommenter'                "快捷注释
NeoBundle 'scrooloose/syntastic'                    "语法自动分析

"目录树
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'majutsushi/tagbar'                       "源代码浏览器窗口
NeoBundle 'bronson/vim-trailing-whitespace'         "去行尾空格，将代码行最后无效的空格标红
NeoBundle 'Rykka/colorv.vim'                        "css 颜色可视化配置(调色板)
NeoBundle 'mattn/emmet-vim'                         "html/css 代码块/片段自动补全

"文件重命名/权限/。。。设置，在 Linux 中很管用
NeoBundle 'tpope/vim-eunuch'
