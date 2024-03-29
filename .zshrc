# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set FZF config
export FZF_DEFAULT_OPTS="--height 100% --layout=reverse --border --preview 'bat {} --color=always --theme=base16'"

# Go shit
export GO111MODULE=on
export GOPROXY=direct
export GOSUMDB=off

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitgo zsh-syntax-highlighting z)

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

# Function to search files and open in new vim tabs
vimgrep() {
    vim -p $(grep -Rl $1 | fzf -m)
}

# Function to open firefox with given url
firefoxurl() {
    firefox $1
}

# Function to run phpunit from vendor
upunittestdox() {
    /usr/bin/php74 ./vendor/bin/phpunit --testdox $1
}

# Function to open Go's cover profile on browser
gocover() {
    go tool cover -html=$1
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# My Aliases

# Bluetooth
# alias btedf='coproc bluetoothctl;echo connect 5C:C6:E9:1E:A9:61 >&p'
alias btctl='bluetoothctl'
alias btedf="echo -e 'connect 5C:C6:E9:1E:A9:61\nexit' | bluetoothctl"
alias btap="echo -e 'connect 4C:24:98:5A:DE:BB\nexit' | bluetoothctl"
alias btoff="echo -e 'power off\nexit' | bluetoothctl"
alias bton="echo -e 'power on\nexit' | bluetoothctl"
alias btrfk="sudo rfkill unblock bluetooth"
alias btedf='coproc bluetoothctl;echo connect 5C:C6:E9:1E:A9:61 >&p'
alias curlweather='curl v2.wttr.in'
alias qew="~/git-repositories/q-engine-worker"
alias mev2="~/git-repositories/melhor-envio-v2"
alias qeh="~GOPATH/src/bitbucket.org/melhor-envio/q-engine-hub"
alias qeb="~GOPATH/src/bitbucket.org/melhor-envio/q-engine-base"
alias qebr="~GOPATH/src/bitbucket.org/melhor-envio/q-engine-bridge"
alias lzg="lazygit"
alias lzd="lazydocker"
alias fzfs="vimgrep"
alias ff="firefoxurl"
alias bee='$GOPATH/bin/bee'
alias dep='$GOPATH/bin/dep'
alias mongoup="sudo service mongod start"
alias mongodown="sudo service mongod stop"
alias fucking=sudo
alias php=/bin/php74 # this replaces the latest php for php72
alias phpunit=upunittestdox
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# Run tmux
# if [[ $DISPLAY ]]; then
# # If not running interactively, do not do anything
#    [[ $- != *i* ]] && return
#    [[ -z "$TMUX" ]] && exec tmux
# fi

## PATHS
export GOPATH=$HOME/go
export PATH=$GOPATH:$PATH
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
export LARAVELPATH=$HOME/.config/composer/vendor/bin
export PATH=$LARAVELPATH:$PATH
export PHPPATH=php=/bin/php74
export PATH=$PHPPATH:$PATH
export GEMSPATH=$HOME/.gem/ruby/2.7.0/bin
export PATH=$GEMSPATH:$PATH
