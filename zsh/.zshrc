# Created by Jake Allen for 5.4.2

# This provides compatibility with custom bash completions
autoload -U bashcompinit
bashcompinit

# zsh specific bits
export LANG=en_US.UTF-8
export SHELL=zsh
fpath=(~/.profile-modules $fpath)

# Load prompt theme engine
autoload -Uz promptinit
promptinit
setopt PROMPT_SUBST
# Sets custom theme defined in fpath
prompt pow
# TMOUT and TRAPALRM cause the prompt to refresh every second making my clock tick.
TMOUT=1

TRAPALRM()
{
    zle reset-prompt
}

# History Bits
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_VERIFY
setopt HIST_IGNORE_ALL_DUPS

# Tab Completion
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings'     format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:default'      list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*'     menu yes select
zstyle ':completion:*:kill:*'       force-list always

# Command Correction
setopt correctall

# key bindings
bindkey "[H" beginning-of-line # Home
bindkey "[F" end-of-line       # End
bindkey "[3~" delete-char      # Del
# Set the Editor mode to vim explicitly
bindkey -v
# History search
bindkey "" history-incremental-search-backward

source ~/.profile-modules/aliases.sh
source ~/.profile-modules/exports.sh
source ~/.profile-modules/sith.sh
#source ~/.profile-modules/fortune.sh
# Pyenv says I should run this init towards the end of my login scripts, this is the end...
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
