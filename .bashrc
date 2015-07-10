source /env/envyrc

set -x

if [[ -f /usr/share/bash-completion/bash_completion ]]; then
  source /usr/share/bash-completion/bash_completion
fi

if [ "$TERM" = "xterm-color" ] || \
  ([ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null); then
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='\u@\h:\w\$ '
fi
