"=================================================================
" init-style.vim - Display style settings
"
" Created by You-know-who on 04/30/2021
" Last Modified: 04/30/2021
"
"=================================================================

"-----------------------------------------------------------------
" Display settings
"-----------------------------------------------------------------

" Always show status bar
set laststatus=2

" Always show line number
set number

" Always show sidebar
set signcolumn=yes

" Always show tab bar
set showtabline=2

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 水平切割窗口时，默认在右边显示新窗口
set splitright

"-----------------------------------------------------------------
" Color theme - See /colors directory
"-----------------------------------------------------------------

" 256 colors allowed
set t_Co=256

" Set color theme
color gruvbox

"-----------------------------------------------------------------
" Status bar settings
"-----------------------------------------------------------------
set statusline=                              " 清空状态了
set statusline+=\ %F                         " file name
set statusline+=\ [%1*%M%*%n%R%H]            " Number and status of the buffer
set statusline+=%=                           " Align right
set statusline+=\ %y                         " file type

" 最右边显示文件编码和行号信息，并且固定在一个 group 中，优先占位
set statusline+=\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %v:%l/%L%)

"-----------------------------------------------------------------
" Change style
"-----------------------------------------------------------------

" 更清晰的错误标注：默认一片红色背景，无语法高亮
" 只显示红色或蓝色的下划线或波浪线
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! clear SpellLocal

" 去除行号左边的白色背景
hi! SignColumn guibg=NONE ctermbg=NONE

" 设置行号为浅灰色，更换主题仿照这里修改
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
  \ gui=NONE guifg=DarkGrey guibg=NONE

"-----------------------------------------------------------------
" Terminal settings, hide line number and sidebar.
"-----------------------------------------------------------------
if has('terminal') && exists(':terminal') == 2
    if exists('##TerminalOpen')
  augroup VimUnixTerminalGroup
      au!
      au TerminalOpen * setlocal nonumber signcolumn=no
  augroup END
    endif
endif

