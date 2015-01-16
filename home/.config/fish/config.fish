# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set fish_config_path $HOME/.config/fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Set PATH variable
set PATH /usr/local/bin /Users/$USER/.bin /usr/local/mysql/bin /usr/local/php5/bin /Users/$USER/.composer/packages/vendor/bin $PATH

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
. $fish_config_path/.exports
. $fish_config_path/.aliases

source "$HOME/.homesick/repos/homeshick/homeshick.fish"
