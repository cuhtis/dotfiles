alias ls='ls -GFh'
export PS1="\[\033[35m\]\u:\[\033[37m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export GOPATH="$HOME/Projects/golang"
export PATH="$PATH:$GOPATH/bin:$HOME/Projects/tools:$HOME/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Projects/depot_tools"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
function umountAndroid() { hdiutil detach /Volumes/android; }

##
# Your previous /Users/curtis-li/.bash_profile file was backed up as /Users/curtis-li/.bash_profile.macports-saved_2016-05-25_at_21:37:16
##

# MacPorts Installer addition on 2016-05-25_at_21:37:16: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# set the number of open files to be 1024
ulimit -S -n 1024

export USE_CCACHE=1

export ANDROID_HOME=/Users/curtis-li/Library/Android/sdk/
