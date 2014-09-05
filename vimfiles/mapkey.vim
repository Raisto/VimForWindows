""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"编译，运行，调试
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"按 F5 编译
map <F5> :call Compile()<CR>
func! Compile()
    exec "w"
    "C 程序
    if &filetype=='c'
        if has("win32") || has("win64")
            exec "!gcc % -g -o %<.exe"
        else
            exec "!gcc % -g -o %<.o"
        endif
        "C++ 程序
    elseif &filetype=='cpp'
        if has("win32") || has("win64")
            exec "!gcc % -g -o %<.exe"
        else
            exec "!gcc % -g -o %<.o"
        endif
    endif
endfunc


"按 F6 运行
map <F6> :call Run()<CR>
func! Run()
    if has("win32") || has("win64")
        "在 windows 下要去掉 ./ 这两字符
        exec "! %<.exe"
    else
        exec "! ./%<.o"
    endif
    exec'pause'
endfunc


"按 F7 调试
"定义 Debug函数，用来调试小程序
map <F7> :call Debug()<CR>
func! Debug()
    exec "w"
    "C 程序
    if &filetype=='c'
        if has("win32") || has("win64")
            exec "!rm %<.exe"
            exec "!gcc % -g -o %<.exe"
            exec "gdb %<.exe"
        else
            exec "!rm %<.o"
            exec "!gcc % -g -o %<.o"
            exec "gdb %<.o"
        endif
        "C++ 程序
    elseif &filetype=='cpp'
        if has("win32") || has("win64")
            exec "!rm %<.exe"
            exec "!gcc % -g -o %<.exe"
            exec "gdb %<.exe"
        else
            exec "!rm %<.o"
            exec "!gcc % -g -o %<.o"
            exec "gdb %<.o"
        endif
        "Java 程序
        "elseif &filetype=='java'
        "	exec"rm %<.class"
        "	exec"!javac %"
        "	exec"!jdb %<"
    endif
endfunc


"Alt-x 剪切
map <A-x> "+x
"Alt-c 复制
map <A-c> "+y
"Alt-x 粘贴
map <A-v> "+p


"窗口切换(光标在窗口内上下左右跳跃)('inoremap' 表示设定的快捷键不再映射到其他的快捷方式中)
map <c-k> <c-w>k
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-l> <c-w>l

"使用 '==' 对代码进行格式化(即进行缩进/对齐格式化)
map == gg<c-v>G=
