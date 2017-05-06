set -x PATH $HOME/Homebrew/bin $PATH
#set -x MANPATH $HOME/Homebrew/opt/coreutils/libexec/gnuman $MANPATH

set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '3;33'

set -x LESS '--ignore-case --raw-control-chars'
set -x PAGER 'less'
set -x EDITOR 'vim'

alias .. 'cd ..'
alias l 'ls -lah'
alias vim 'vim -p'

source ~/.config/fish/solarized.fish

# macOS

alias rsync_options 'rsync -chavzP'

alias bssid "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I"


