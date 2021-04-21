"=================================================================
"
" init-basic.vim - basic config
"
" Created by You-know-who on 04/19/2021
" Last Modified:
"
"=================================================================

"-----------------------------------------------------------------
" Basic config
"-----------------------------------------------------------------

" 自动缩进
set autoindent

" 智能缩进
set smartindent

" 打开 C/C++ 语言缩进优化
set cindent

" 关闭自动换行
set nowrap

" 打开功能键超时检测
set ttimeout

" 功能键超时检测 50 ms
set ttimeoutlen=50

" Show cursor positiona
set ruler

"-----------------------------------------------------------------
" Search settings
"-----------------------------------------------------------------

" 搜索时忽略大小写
set ignorecase

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" Highlight search content
set hlsearch

" 查找输入时动态增量显示查找结果
set incsearch


"-----------------------------------------------------------------
" Coding settings
"-----------------------------------------------------------------
if has('multi_byte')
    " Internal work encoding
    set encoding=utf-8

    " File default encoding
    set fileencoding=utf-8
endif


"-----------------------------------------------------------------
" 允许VIM自己的脚本根据文件类型自动设置缩进等
"-----------------------------------------------------------------
if has('autocmd')
    filetype plugin indent on
endif


"-----------------------------------------------------------------
" Syntax highlight settings
"-----------------------------------------------------------------
if has('syntax')
    syntax enable
    syntax on
endif


"-----------------------------------------------------------------
" Other settings
"-----------------------------------------------------------------

" 显示匹配的括号
set showmatch

" 显示括号匹配的时间
set matchtime=2

" 显示最后一行
set display=lastline

" 允许下方显示目录
set wildmenu

" 延迟绘制（提升性能）
set lazyredraw

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac

"-----------------------------------------------------------------
" 设置代码折叠
"-----------------------------------------------------------------
if has('folding')
    " Allow code collapse
    set foldenable

    " Code collapse uses indentation by default
    set fdm=indent

    " All indents are opened by default
    set foldlevel=99
endif
