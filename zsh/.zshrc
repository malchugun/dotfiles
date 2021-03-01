# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="malchugun"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
ENABLE_CORRECTION="true"

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
plugins=(
  git
  kubectl
  docker
)

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

# Traditional fd forwarding style
unsetopt MULTIOS

# Support ~... and file completion after = in args
setopt MAGIC_EQUAL_SUBST

# Not processing escape sequence in echo without -e
setopt BSD_ECHO

# Support comments in command line
setopt INTERACTIVE_COMMENTS

# Support $(cmd) in $PS1 etc.
setopt PROMPT_SUBST

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias p="pwd"
alias l="ls --group-directories-first -aX"
alias server="ssh 192.168.22.3"
alias openstack='docker run -it --rm -e OS_AUTH_URL=$OS_AUTH_URL -e OS_PROJECT_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID -e OS_REGION_NAME=$OS_REGION_NAME -e OS_PROJECT_NAME=$OS_PROJECT_NAME -e OS_USER_DOMAIN_NAME=$OS_USER_DOMAIN_NAME -e OS_IDENTITY_API_VERSION=$OS_IDENTITY_API_VERSION -e OS_INTERFACE=$OS_INTERFACE -e OS_PASSWORD=$OS_PASSWORD -e OS_USERNAME=$OS_USERNAME -e OS_PROJECT_ID=$OS_PROJECT_ID ullbergm/openstack-client:latest openstack'
alias brewi="/usr/local/Homebrew/bin/brew"

# Pathes
# Golang
export GOPATH=$HOME/Projects/Go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
# Brew
export PATH=/opt/homebrew/bin:$PATH

# Docker for m1
source .docker_host
