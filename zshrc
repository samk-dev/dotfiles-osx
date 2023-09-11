# Prompt
PROMPT='%F{green}%~%f %# '
# Syntax highlight for man/help start
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Set Homebrew cask option to disable mac gatekeeper
# Set bat as a default instead of cat
export NULLCMD=bat
# Add Visual Studio Code 
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Add n node version manager
export PATH="$PATH:$N_PREFIX/bin/"
# Native script 
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
# Aliases
alias bdump='brew bundle dump --force --describe'
alias ls='exa -laFh --git'
alias vim='nvim'
alias lgit='lazygit'
alias trail='<<<${(F)path}'
