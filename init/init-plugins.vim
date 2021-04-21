"=================================================================
"
" init-plugins.vim - plug-in management
"
" Created by You-know-who on 04/19/2021
" Last Modified: 04/19/2021 16:20
"
"=================================================================

"-----------------------------------------------------------------
" Default grouping
"-----------------------------------------------------------------
if !exists('g:plug_group')
   let g:plug_group  = ['basic', 'syntax', 'airline']
   let g:plug_group += ['nerdtree', 'ale']
endif


"-----------------------------------------------------------------
" 计算当前 vim-init 的子路径
"-----------------------------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:path(path)
   let path = expand(s:home . '/' . a:path)
   return substitute(path, '\\', '/', 'g')
endfunc


"-----------------------------------------------------------------
" vim-plug
" Install the plug-in under ~/.config/nvim/plugged
"-----------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')


"-----------------------------------------------------------------
" Basic plug-in
"-----------------------------------------------------------------
if index(g:plug_group, 'basic') >= 0
    " 一键注释或反注释
    Plug 'preservim/nerdcommenter'
    " 默认情况下注释后面添加空格键
    let g:NERDSpaceDelims = 1

    " 对紧凑的多行注释使用紧凑语法
    let g:NERDCompactSexyComs = 1

    " 将行注释向左对齐，非跟随代码缩进
    let g:NERDDefaultAlign = 'left'
    " 允许注释或反转空行（注释区域时非常有用）
    let g:NERDCommentEmptyLines = 1

endif


"-----------------------------------------------------------------
" Syntax highlighting
"-----------------------------------------------------------------
if index(g:plug_group, 'syntax') >= 0
   
   " C++ highlighting
   Plug 'octol/vim-cpp-enhanced-highlight' , { 'for': ['c', 'cpp'] }
endif


"-----------------------------------------------------------------
" NERDTree
"-----------------------------------------------------------------
if index(g:plug_group, 'nerdtree') >= 0
   Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind'] }
   Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
   let g:NERDTreeMinimalUI = 1
   let g:NERDTreeDirArrows = 1
   let g:NERDTreeHijackNetrw = 0
   noremap <space>nn :NERDTree<cr>
   noremap <space>no :NERDTreeFocus<cr>
   noremap <space>nm :NERDTreeMirror<cr>
   noremap <space>nt :NERDTreeToggle<cr>
endif


"-----------------------------------------------------------------
" airline
"-----------------------------------------------------------------
if index(g:plug_group, 'airline') >= 0
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   let g:airline_left_sep = ''
   let g:airline_left_alt_sep = ''
   let g:airline_right_sep = ''
   let g:airline_right_alt_sep = ''
   let g:airline_powerline_fonts = 0
   let g:airline_exclude_preview = 1
   let g:airline_section_b = '%n'
   let g:airline_theme='deus'
   let g:airline#extensions#branch#enabled = 0
   let g:airline#extensions#syntastic#enabled = 0
   let g:airline#extensions#fugitiveline#enabled = 0
   let g:airline#extensions#csv#enabled = 0
   let g:airline#extensions#vimagit#enabled = 0
endif


"-----------------------------------------------------------------
" ale: 
"-----------------------------------------------------------------
if index(g:plug_group, 'ale') >= 0
   Plug 'dense-analysis/ale'

   " 设定延迟和提示信息
   let g:ale_completion_delay = 500
   let g:ale_echo_delay = 20
   let g:ale_lint_delay = 500
   let g:ale_echo_msg_format = '[%linter%] %code: %%s'

   " 设定检测时机
   " 禁用默认 INSERT 模式下改变文字的触发
   let g:ale_lint_on_text_changed = 'normal'
   let g:ale_lint_on_insert_leave = 1

   " 降低 linux/mac 下语法检查程序的优先级
   if has('win32') == 0 && has('win64') == 0 && has('win32unix') == 0
      "let g:ale_command_wrapper = 'nice -n5'
   endif

   " 允许 airline 集成
   let g:airline#extensions#ale#enabled = 1

   " 编辑不同文件类型需要的语法检查器
   let g:ale_linters = {
                         \ 'c': ['gcc', 'cppcheck'],
                         \ 'cpp': ['gcc', 'cppcheck'],
                         \ }
endif


"-----------------------------------------------------------------
" End of plug-in change
"-----------------------------------------------------------------
call plug#end()
