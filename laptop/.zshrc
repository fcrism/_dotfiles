export HISTSIZE=100000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space
  /home/cris/Scripts/invaders.sh
# Path to your oh-my-zsh installation.
  export ZSH=/home/cris/.oh-my-zsh
  export EDITOR=vim

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="duellj"
#ZSH_THEME="random"
#ZSH_THEME="aussiegeek"
ZSH_THEME="miloshadzic"
#ZSH_THEME="mortalscumbag"
# colors for ls
if [[ -f ~/.dir_colors ]] ; then
    eval $(dircolors -b ~/.dir_colors)
elif [[ -f /etc/DIR_COLORS ]] ; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias Suspend='sudo pm-suspend'
alias Shutdown='sudo shutdown -P now'

#vim mode

bindkey -v
bindkey -a u undo 

# Local shortcut

alias chgkey1='setxkbmap -layout us -variant intl'
alias chgkey='setxkbmap -layout us'
alias singleScreen='/home/cris/.screenlayout/laptop.sh'
alias dualScreen='/home/cris/.screenlayout/dual.sh'
alias Staruml='/home/cris/Downloads/StarUML-3.0.2-x86_64.AppImage'
alias lamp='sudo /opt/lampp/manager-linux-x64.run'
alias battery='cat /sys/class/power_supply/BAT0/uevent'
alias fatecSamba='sudo mount -t cifs //172.16.0.5/Alunos -o username=2760481721008 /media/samba'
alias ps-mem='sudo ~/Scripts/ps-mem.sh'

#asdf plugin path

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export HAXE_STD_PATH="/home/cris/Downloads/haxe/haxe_20191104114013_fcb00541a/std"
export HAXE_HOME="/home/cris/Downloads/haxe/haxe_20191104114013_fcb00541a/haxe"
export PATH=$PATH":"$HAXE_HOME
export PATH=$PATH:/home/cris/.config/composer/vendor/bin
