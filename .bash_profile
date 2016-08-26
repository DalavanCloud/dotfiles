export PATH=${HOME}/.homebrew/bin:${PATH}
export PATH="/Users/groebert/.homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH=$HOME/bin:$PATH
export MANPATH="/Users/groebert/.homebrew/opt/coreutils/libexec/gnuman:$MANPATH"

WHITE='\[\033[00m\]'
COLORHN='\[\033[0;32m\]'
PS1="$COLORHN\W>$WHITE "
eval "$(dircolors -b)"

export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='ms=01;33:mc=01;33:sl=:cx=:fn=31:ln=32:bn=32:se=36'

alias ..='cd ..'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

alias la='ls -lAhF'
alias ll='la'
alias l='ls -CF'
alias ls='ls -CF --color=auto'

alias vim='vim -p'

function oc() {
  open -a Google\ Chrome\ Canary --args --disable-xss-auditor --proxy-server=localhost:10020
  java -jar -Xmx1024m /Applications/burp/current.jar &
  exit
}
