""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           这是对安装的插件的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       'Shougo/vimproc.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"若 vimproc_win32.dll/vimproc_win64.dll 放 在vimproc 插件的 autoload
"目录下，可以不要这个设置，否则就要自行设置 vimproc_win32.dll/vimproc_win64.dll 的路径
"let g:vimproc_dll_path=$VIMRUNTIME."/vimproc_win64.dll"
"在 vim 退出时结束 gocode 进程
autocmd VimLeavePre * VimProcBand taskkill -F -IM gocode.exe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       vim状态栏显示 'bling/vim-airline' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enable = 1
"一启动 vim 总是显示 airline 栏
set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       缩进对齐线 'Yggdroot/indentLine' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置缩进对齐线样式 (tab 用|；空格则用~)
set list listchars=tab:\|\ ,nbsp:~        "set list 设置默认打开缩进对齐线  关闭是 set nolist

"启用智能对齐方式
set smartindent

"这个是显示 Tab 的设置
set expandtab "tab use spaces(用空格替代 tab)

"加!是用于处理非空白字符之后的tab，即所有的tab，若不加!，则只处理行首的tab。
%retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       高亮括号 'kien/rainbow_parentheses.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开括号高亮(自启动)
au VimEnter * RainbowParenthesesToggle
"高亮圆括号()
au VimEnter * RainbowParenthesesLoadRound
"高亮方括号[]
au VimEnter * RainbowParenthesesLoadSquare
"高亮花括号{}
au VimEnter * RainbowParenthesesLoadBraces
"高亮尖括号<>
au VimEnter * RainbowParenthesesLoadChevrons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       目录树 'scrooloose/nerdtree' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用 <F11> 键就可以打开/关闭 NERDTree (目录树)
map <silent> <F11> :NERDTreeToggle<CR>
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
"设置 NERETree 窗口宽度
let NERDTreeWinSize=25
"打开文件时关闭树
let NERDTreeQuitOnOpen=1

"如果 NERDTee 窗口时最后一个窗口，则推出 vim
"let NERDTree_Eixt_OnlyWindow = 1
"
"控制当光标移动超过一定距离时，自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
"默认显示隐藏文件
let NERDTreeShowHidden=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       代码浏览器 'majutsushi/tagbar' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用 <F10> 键打开/关闭 tagbar 窗口
nmap <silent> <F10> :TagbarToggle<CR>
"设置 tagbar 窗口宽度
let g:tagbar_width = 25

let g:tagbar_type_cpp = {
        \ 'ctagstype' : 'c++',
        \ 'kinds'     : [
            \ 'd:macros:1',
            \ 'p:prototypes:1',
            \ 'g:enums',
            \ 'e:enumerators',
            \ 't:typedefs',
            \ 'n:namespaces',
            \ 'c:classes',
            \ 's:structs',
            \ 'u:unions',
            \ 'f:functions',
            \ 'm:members',
            \ 'v:variables'
        \ ],
        \ 'sro'        : '::',
        \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
        \ },
        \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
        \ }
    \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       语法自动分析 'scrooloose/syntastic' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       自动补全 'Shougo/neocomplete.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1                 "默认启动自动补全
 let g:neocomplete#enable_auto_select = 1               "默认选择下拉表第一个选项
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'css' : $MYVIMFILES.'/dict/cssColorName.dict',
      \ 'less' : $MYVIMFILES.'/dict/cssColorName.dict'
      \ }
let g:neocomplete#same_filetypes = {
      \ 'c': 'cpp',
      \ 'cpp': 'c',
      \ 'html': 'css,javascript',
      \ 'php': 'html',
      \ 'jsp': 'html',
      \ 'xhtml': 'html',
      \ 'zsh': 'sh'
      \ }

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"解决 completefunc=eclim#java#complete#CodeComplete 冲突（即避免与其他自动补全-eclim 冲突）
let g:neocomplete#force_overwrite_completefunc=1
"let g:neocomplete#enable_force_overwrite_completefunc=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       自动补全 'SirVer/ultisnips' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"            "代码片段补全快捷键
let g:UltiSnipsJumpForwardTrigger="<c-n>"       "代码片段参数移动(下一个)
let g:UltiSnipsJumpBackwardTrigger="<c-p>"      "代码片段参数移动(上一个)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           c/c++辅助 'WolfgangMehner/vim-plugins' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"把热键里的<leader> "\" 改成vim里的<leader> ";" 相同
let g:C_MapLeader=';'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           css 颜色可视化配置(调色板) 'Rykka/colorv.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"在哪些类型的文件上高亮
let g:colorv_preview_ftype = 'css,html,javascript,htm,less'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
