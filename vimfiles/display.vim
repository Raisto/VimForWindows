""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           UI 界面
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"隐藏工具栏
if has("gui_running")
    set guioptions-=m	"隐藏菜单栏
    set guioptions-=T	"隐藏工具栏
    set guioptions-=L	"隐藏左侧滚动条
    set guioptions-=r	"隐藏右侧滚动条
    set guioptions-=b	"隐藏底部滚动条
    set guioptions-=0	"隐藏 Tab 栏
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           启动设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"启动位置
winpos 0 0
"窗口大小，行X列
set lines=38 columns=73
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"设置主题颜色
"colorscheme koehler
"colorscheme desert
"colorscheme evening
"colorscheme manuscript

"设置字体
if has("unix")
    set guifont=Lucida_Console:h11:cANSI
elseif has("win32") || has("win64")
    set guifont=Courier_new:h11       "h11 是字体的大小
endif

"显示行号
set number
"显示光标行
set cursorline
"显示光标列
set cursorcolumn
"高亮显示括号配对
set showmatch
"搜索时高亮显示被找到的文本
set hlsearch

"搜索时忽略大小写
set ignorecase

"设置(软)制表符宽度为 4
set tabstop=4
"设置 Backspace 可以一次删除 4 个空格
set softtabstop=4
"设置 << 和 >> 移动的宽度(缩进的空格数)为 4
set shiftwidth=4
"使用 >> 或 << 时，依 shiftwidth 调整宽度
set shiftround

"设置自动缩进：即每行的缩进值与上一行相等，特别适用与多行注释
set autoindent

"光标移动到 buffer 的顶部和底部是保持 2 行距离
set scrolloff=2

"在命令模式下使用 Tab 补全是，将补全内容用一个单行菜单显示出来
set wildmenu

"设置文件默认编码
set fileencoding=utf-8
set fileencodings=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"设置不适用 vi 键盘模式，而是使用 vim 自己的
set nocompatible

"在处理未保存或只读文件时，弹出确认窗口
set confirm

"与 windows 公用剪切板
"set clipboard+=unnamed


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"backspace 退格键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
" indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置文件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"不要备份文件
set nobackup

"不要生成 swap 文件，当 buffer 被丢弃时隐藏它
"set noswapfile
"set bufhidden=hide

"设置命令行的高度，默认为1 ，这里设为 2
"set cmdheight=2

"设定文件浏览器目录为当前目录
set bsdir=buffer

"当文件在外部被修改时，自动获取修改后的内容
set autoread
