export PS1="\[\033[35m\]\u:\[\033[37m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
function umountAndroid() { hdiutil detach /Volumes/android; }

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# set the number of open files to be 1024
ulimit -S -n 1024

export USE_CCACHE=1

export ANDROID_HOME=/Users/curtis-li/Library/Android/sdk/
