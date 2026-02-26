" === 系统剪贴板集成 ===
" === Leader 键设置 ===
let mapleader = " "
let maplocalleader = " "

" === 系统剪贴板集成（静默 + 通知） ===

" 可视模式：复制到剪贴板
vnoremap <silent> <Leader>y :<C-u>call system('wl-copy', getline("'<", "''"))

" 普通模式：复制当前行
nnoremap <silent> <Leader>yy :<C-u>call system('wl-copy', getline('.')) 

" 从剪贴板粘贴
nnoremap <silent> <Leader>p :<C-u>execute 'read !wl-paste --no-newline' 
