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

# https://github.com/seebi/dircolors-solarized
eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

# macOS

alias rsync_options 'rsync -chavzP'

alias bssid "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I"

# Utilities

alias prettyjson 'python -m json.tool'
alias ipython "python -c 'from IPython.frontend.terminal.ipapp import launch_new_insta
nce; launch_new_instance()'"

function xxdc --description "xxdc <file-to-hexstringdump>"
  od -A n -v  -t x1 "$argv[1]" | sed -e 's/ /\\x/g' | tr -d '\n'
end

function md5name
  mv -f "$argv[1]" (md5sum "$argv[1]" |cut -b-32)
end

function sha1name
  mv -f "$argv[1]" (sha1sum "$argv[1]" |cut -b-40)
end

function ff
  find . -iname '*'$argv[1]'*'
end
