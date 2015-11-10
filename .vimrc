set runtimepath+=~/.vim/runtime

source ~/.vim/runtime/vimrcs/basic.vim
source ~/.vim/runtime/vimrcs/filetypes.vim
source ~/.vim/runtime/vimrcs/plugins_config.vim
source ~/.vim/runtime/vimrcs/extended.vim

try
	source ~/.vim/runtime/config.vim
catch
endtry