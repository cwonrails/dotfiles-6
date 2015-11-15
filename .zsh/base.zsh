# 10 second wait if you do something that will delete everything.
setopt RM_STAR_WAIT

# Set LS colors
eval `dircolors ~/dircolors.256dark`

# Some environment variables
export VISUAL='vim'
export EDITOR='vim'
export XDG_CONFIG_HOME="$HOME/.config"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Better Up and Down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search

# Edit command in vim
autoload edit-command-line
zle -N edit-command-line
bindkey "^X^V" edit-command-line

# Toggle sudo
bindkey "^X^S" sudo-command-line

# Haskell configuration
export PATH="$HOME/.cabal/bin:$PATH"

# Ruby configuration
export GEM_HOME="$(ruby -e 'print Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
