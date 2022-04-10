# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Use vim as the default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Creating alias
alias ll='ls --all --color=auto -l --human-readable'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'


# Disable ZSH autocorect
unsetopt correct
