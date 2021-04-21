"=================================================================
"
" init.vim - initialize config
"
" Created by You-know-who on 04/19/2021
" Last Modified: 04/19/2021 
"
"=================================================================

" 防止重复加载
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义命令用于加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将本文件父目录加入 runtimepath
exec 'set rtp+='.s:home

" 将用户 neovim 配置目录加入 runtimepath
set rtp+=~/.config/nvim


"-----------------------------------------------------------------
" Module loading
"-----------------------------------------------------------------

" Load basic config
LoadScript init/init-basic.vim

" Load extension config
LoadScript init/init-config.vim

" Load tab key size
LoadScript init/init-tabsize.vim

" Plug-in loading
LoadScript init/init-plugins.vim

" Interface style
LoadScript init/init-style.vim

" Load key settings
" LoadScript init/init-keymaps.vim
