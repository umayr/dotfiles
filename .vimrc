set runtimepath+=~/.vim/runtime

source ~/.vim/runtime/config/basic.vim
source ~/.vim/runtime/config/languages.vim
source ~/.vim/runtime/config/plugins.vim
source ~/.vim/runtime/config/extended.vim
try
	source ~/.vim/config.vim
catch
endtry
