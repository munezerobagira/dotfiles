export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh





#
# Example aliases
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# App development configurations

export GPG_TTY=$(tty)
export PATH="$PATH:/Users/mac/mac-apps/cmdline-tools/bin"
export PATH="$PATH:/Users/mac/mac-apps/flutter/bin"
ANDROID_HOME=/Users/mac/Library/Android
ANDROID_SDK_ROOT=/Users/mac/Library/Android/sdk


export PATH="$PATH:/usr/local/bin/code"
# Theme configuration


source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# pulgins
plugins=(
    git 
    zsh-autosuggestion
)
autoload -U compinit && compinit

#Postgress database
export PATH="/usr/local/sbin:$PATH"
export PATH="/Library/PostgreSQL/15/bin/:$PATH"
export PGDATA='/Library/PostgreSQL/15/data'
export PGHOST=localhost

# Alias

alias pg-start='pg_ctl -l $PGDATA/server.log start'
alias code='open -a "Visual Studio Code"' 
alias pg-stop='pg_ctl stop -m fast'
alias pg-show-status='pg_ctl status'
alias pg-restart='pg_ctl reload'
alias python='python3'
alias pip='pip3'
alias ku='kubectl'
alias vi=nvim
alias vim=nvim
alias vi=nvim

# history setup

setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# bun completions
[ -s "/Users/mac/.bun/_bun" ] && source "/Users/mac/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=~/Library/Android/sdk/tools:$PATH
export PATH=~/.docker/bin:$PATH


# Herd injected PHP binary.
export PATH="/Users/mac/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/mac/Library/Application Support/Herd/config/php/82/"
export PATH=$PATH:~/Library/Android/sdk/emulator
export PATH=$PATH:~/Library/Android/sdk/platform-tools
