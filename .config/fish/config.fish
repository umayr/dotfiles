# Go configurations
set -x GOPATH $HOME/Code/go
set -x GOBIN $GOPATH/bin
set -x PATH $PATH $GOBIN

# Rust configurations
set -x PATH $PATH $HOME/.cargo/bin
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# PyENV configurations
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PATH $PYENV_ROOT/bin
# pyenv-virtualenv configurations (https://github.com/pyenv/pyenv-virtualenv)
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# N configurations
set -x N_PREFIX $HOME/n
set -x PATH $PATH $N_PREFIX/bin

set -x PATH $PATH /usr/local/opt/openssl/bin

# Because of ads in npm post-install script
set -x ADBLOCK true

# fzf configurations
set -x FZF_DEFAULT_OPTS '--color fg:#F8F8F2,hl:#50FA7B,hl+:#FF79C6,bg+:#282A36,info:#BD93F9,prompt:#50FA7B,spinner:#FF79C6,pointer:#FF79C6,marker:#FF79C6'
set -x FZF_DEFAULT_COMMAND 'fd --type file'

# brew installs executable in /usr/local/sbin
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# pip3 binaries path
set -x PATH $PATH $HOME/Library/Python/3.7/bin/

# User Keybindings
bind \ch "eval (history | fzf)"

# Fish Dracula theme colours
set -x COMMENT 6272a4
set -x CYAN 8be9fd
set -x GREEN 50fa7b
set -x ORANGE ffb86c
set -x PINK ff79c6
set -x PURPLE bd93f9
set -x RED ff5555
set -x YELLOW f1fa8c

# Fish Dracula Theme Setup
set -U fish_color_autosuggestion $COMMENT
set -U fish_color_command $PINK
set -U fish_color_comment $COMMENT
set -U fish_color_cwd $CYAN
set -U fish_color_cwd_root $RED
set -U fish_color_end normal
set -U fish_color_error $RED
set -U fish_color_escape $CYAN
set -U fish_color_history_current $CYAN
set -U fish_color_host normal
set -U fish_color_match $GREEN
set -U fish_color_normal normal
set -U fish_color_operator $CYAN
set -U fish_color_param normal
set -U fish_color_quote $YELLOW
set -U fish_color_redirection $PURPLE
set -U fish_color_search_match \x2d\x2dbackground\x3d$PURPLE
set -U fish_color_selection \x2d\x2dbackground\x3d$PURPLE
set -U fish_color_user $PURPLE
set -U fish_color_valid_path \x2d\x2dunderline
