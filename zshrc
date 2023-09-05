# Aliases
alias ls='ls -lAFh'
alias vim='nvim'
alias lgit='lazygit'
# Prompt
PROMPT='%F{green}%~%f %# '
# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Syntax highlight for man/help start
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Syntax highlight for man/help ends

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Native script start
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# Native script ends

