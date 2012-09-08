# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="bitboxer"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(heroku git brew bundler gem git github osx rails3 dirhelper screen npm rake forklift tmuxinator)

source $ZSH/oh-my-zsh.sh

# My config files for zsh
if [[ -f $HOME/.dotfiles/zsh/aliases ]] ; then . $HOME/.dotfiles/zsh/aliases ; fi
if [[ -f $HOME/.dotfiles/zsh/local_aliases ]] ; then . $HOME/.dotfiles/zsh/local_aliases ; fi

# Delete-Key has to work :)
bindkey "^[[3~" delete-char

alias glog="git log"
alias trst="touch tmp/restart"

if  { [ "$TERM" != "screen" ] && ! [ -n "$TMUX" ] } then
  cat ~/.dotfiles/logo.ascii
fi

# Trying vim mode
bindkey -v

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
