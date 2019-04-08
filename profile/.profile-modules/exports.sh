export LANG=en_US.UTF-8

#Custom filetype coloring for ls (This also requires a 256 color capable terminal)
#eval `dircolors ~/.dir_colors`

#Some shell variables that are nice to have set for various reasons.
export EDITOR=vim
export VISUAL=vim
#We're pre-pending these, so the last one defined will be the first one searched
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.toolchain/sbin:$PATH
export PATH=$HOME/.toolchain/bin:$PATH
export MANPATH=$HOME/.toolchain/share/man:$MANPATH
export MANPATH=$MANPATH:$HOME/.man
# GNU stow
export STOW_DIR="$HOME/.toolchain/tools/"
#pyenv bits
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export GREP_OPTIONS='--color=auto'
