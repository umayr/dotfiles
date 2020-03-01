function git-alias -d "show all git aliases registered in global .gitconfig"
    cat ~/.gitconfig | awk '/\[alias\]/,/^$/' | cat -l toml --plain
end
