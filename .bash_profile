# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]> '
    ;;
*)
    PS1='\u@\h:\w\$ '
    ;;
esac

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    alias ls='ls -G'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export EDITOR='vi'

# update path to all homebrew executables before the system-wide executables
export PATH=/usr/local/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)

export HISTSIZE=10000

# COMMAND ALIASES
alias ll='ls -Al'
alias wipe_pyc='find ./ -name "*.pyc" | xargs -n 1 -I {} rm -v {}'
