# Workaround for https://github.com/jwilm/alacritty/issues/471
export WINDOWID=$(xdotool getactivewindow)

source "$HOME/.zprezto/init.zsh"

# Define a better hotkey to edit command in editor
bindkey -M emacs "$key_info[Control]V$key_info[Control]V" edit-command-line

# Load custom configurations
source ~/.zsh/aliases.zsh
source ~/.zsh/environment.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/git.zsh

# Load machine-specific configurations
if [[ "$(hostname)" == "maximbaz-x1" ]]; then
  source ~/.zsh/mse.zsh
  source ~/.zsh/autorun-tmux.zsh
fi

if [[ "$(hostname)" == "crmdevvm-0037" ]]; then
  source ~/.zsh/mse.zsh
  source ~/.zsh/autorun-same-tmux.zsh
fi
