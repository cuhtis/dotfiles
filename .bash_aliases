#!/bin/sh

export TMUX_SESSION="session"

alias tmx="tmux new -s $TMUX_SESSION 2> /dev/null || tmux attach -t $TMUX_SESSION"
alias murder='killall -9'
function gvim {
  find . -name "$1" -exec vim {} \;
}

# fun
alias fun='clear && fortune -o | cowsay'
alias composer="php /usr/local/bin/composer.phar"
alias get_paper="scp boa:~/doc/paper/paper.pdf ."
alias weather="curl http://wttr.in/New_York"

# android
alias mkrom="zip image-hammerhead-ktu84p.zip boot.img recovery.img system.img android-info.txt"
alias remount="adb shell su -c mount -o remount,rw /system"
alias cross='\
	export ARCH="arm";\
	export SUBARCH="arm";\
	export CROSS_COMPILE="arm-eabi-"'
alias ddmp='dexdump -d *.dex | less' 

function mkdex {
  DIR=$*
  OPTIONS=""

  if [ "$#" -lt 1 ]
  then
    DIR=$(basename $PWD)
  fi

  if [ "$1" = "no-opt" ]
  then
    OPTIONS="--no-optimize"
    if [ "$#" -lt 2 ]
    then
      DIR=$(basename $PWD)
    fi
  fi

  for FD in $DIR
  do
    javac $FD.java && dx --dex $OPTIONS --output=$FD.dex *.class
  done
}

# ls
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
