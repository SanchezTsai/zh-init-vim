"=================================================================
"
" init-config.vim - The configuration in normal mode and is called
" after init-basic.vim.
"
" Created by You-know-who on 04/19/2021
" Last Modified: 04/19/2021 
"=================================================================

"-----------------------------------------------------------------
" Backup settings
"-----------------------------------------------------------------

" 允许备份
set backup

" 保存时备份
set writebackup

" 备份文件地址
set backupdir=~/.config/nvim/tmp

" 备份文件扩展名
set backupext=.bak

" 禁用交换文件
set noswapfile

" 禁用 undo 文件
set noundofile

" 创建目录，并且忽略可能出现的警告
silent! call mkdir(expand('~/.config/nvim/tmp'), "p", 0755)
