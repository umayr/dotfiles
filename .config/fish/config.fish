# Path to Oh My Fish install.
set -gx OMF_PATH /home/umayr/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/umayr/.config/omf

# Telmate Environment Variables
set -gx JAVA_OPTS "-Djsse.enableSNIExtension=false"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
rvm default

# Path to global npm packages.
set -gx NPM_PATH $HOME/.npm/bin

# Append NPM_PATH to PATH
set -gx PATH $PATH $NPM_PATH

# Variables for golang
set -gx GOROOT /usr/lib/go
set -gx GOPATH $HOME/.go
set -gx GO15VENDOREXPERIMENT 1 # Turn on go 1.5 vendor experiment

# Append GOPATH to PATH
set -gx PATH $PATH $GOPATH/bin

if [ $COLORTERM = "gnome-terminal"]
    set -gx TERM xterm-256color
end

source ~/.config/fish/aliases.fish
