set -x PATH $HOME/Homebrew/bin $PATH
set -x PATH $HOME/Homebrew/opt/coreutils/libexec/gnubin $PATH
set -x MANPATH $HOME/Homebrew/share/man $MANPATH
set -x MANPATH $HOME/Homebrew/opt/coreutils/libexec/gnuman $MANPATH

set -x EDITOR 'vim'
set -x PAGER 'less'

set -x IDALIC_HOST ''
set -x LINUX_HOST ''

alias .. 'cd ..'
alias l 'ls'
alias ll 'ls -lah'
alias glog 'git log --graph --oneline --decorate --all'
alias prettyjson 'python -m json.tool'
alias rsync_options 'rsync -chavzP'
alias bssid "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I"

alias idatun "ssh -f -N -L localhost:9100:$IDALIC_HOST:9100 $LINUX_HOST"
alias gssh "ssh -t $LINUX_HOST 'tmx2 attach || tmx2 new'"

alias grep 'grep --color=auto'
set -x GREP_COLORS 'sl=0:cx=1;36:mt=1;31:ms=4;1;31:mc=1;31:fn=1;36:ln=34:bn=36:se=0;30'

eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

set hilite (which highlight)
set -x LESSOPEN "| $hilite %s --out-format xterm256 --quiet --force --style solarized-light"

function less
  command less -i --underline-special -R -F -X --SILENT $argv
end

function md5rename
  mv -f "$argv[1]" (md5sum "$argv[1]" |cut -b-32)
end

function sha1rename
  mv -f "$argv[1]" (sha1sum "$argv[1]" |cut -b-40)
end

function ff
  find . -iname '*'$argv[1]'*'
end

function sshmount --description "sshmount <remote_dir> <local_dir>"
  set remote_dir $argv[1]
  set local_dir $argv[2]

  echo "[ ] Mounting $LINUX_HOST:$remote_dir to $local_dir"

  sshfs $USER@$LINUX_HOST:$remote_dir $local_dir -ofollow_symlinks -ovolname=$local_dir -oauto_cache -oiosize=65536 -oallow_recursion -oreconnect -oworkaround=rename:nodelaysrv:buflimit -onoappledouble
end

function fish_title
  if [ $PWD = $HOME ]
    set dir "~"
  else
    set dir (basename (echo $PWD))
  end

  if [ "fish" = $_ ]
    printf "\033]2;$PWD\033\\"
    tmux rename-window (echo "→ $dir" | cut -b-16) 2> /dev/null
  else if [ "vim" = $_ ]
    printf "\033]2;$argv\033\\"
    tmux rename-window (echo "∴ $dir" | cut -b-16) 2> /dev/null
  else
    printf "\033]2;$argv\033\\"
    tmux rename-window (echo "$argv" | cut -b-16) 2> /dev/null
  end
end

source ~/.config/fish/solarized.fish
