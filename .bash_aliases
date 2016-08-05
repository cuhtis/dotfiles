#!/bin/sh

export TMUX_SESSION="session"

alias tmx="tmux new -s $TMUX_SESSION 2> /dev/null || tmux attach -t $TMUX_SESSION"
alias murder='killall -9'

# fun
alias fun='clear && fortune -o | cowsay'
alias composer="php /usr/local/bin/composer.phar"
alias get_paper="scp boa:~/doc/paper/paper.pdf ."
alias weather="curl http://wttr.in/New_York"

# android
alias mkrom="zip image-hammerhead-ktu84p.zip boot.img recovery.img system.img android-info.txt"
alias remount="adb shell su -c mount -o remount,rw /system"

# ls
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
