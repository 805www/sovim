" ============================================
" 项目入口
" ============================================


" --------------------------------------------
" 防止重复加载
" --------------------------------------------
if get(s:, "loaded", 0) != 0
	finish
else
	let s:loaded = 1
endif	


" --------------------------------------------
"  
" --------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec "set rtp+=".s:home


" --------------------------------------------
" 
" --------------------------------------------
command! -nargs=1 LoadScript exec "so ".s:home.'/'.'<args>'


LoadScript init/basic.vim
LoadScript init/keymap.vim
LoadScript init/plugin.vim

