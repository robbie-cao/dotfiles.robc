# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Set a default prompt of: user@host and current_directory
# !!! IT OVERWRITE PS1 SETTINGS ABOVE !!!
PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h:\[\e[33m\]\w\[\e[0m\]\n\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Lynx, to display Chinese character
alias lynx='lynx -display_charset=gb2312 -accept_all_cookies'

# Set grep options
# To exclude .git .svn
export GREP_OPTIONS="--exclude-dir=\.svn --exclude-dir=\.git"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Path

if [ "$(uname)" == "Darwin" ]; then
    export PATH=$PATH:/Users/robbie/.bin
    export PATH=$PATH:/Users/robbie/Developments/android-sdk-macosx/tools:/Users/robbie/Developments/android-sdk-macosx/platform-tools

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    export PATH=$PATH:/home/robbie/.bin
    #export PATH=$PATH:/home/robbie/Tools/android-sdk-linux/tools:/home/robbie/Tools/android-sdk-linux/platform-tools
    #export PATH=$PATH:/home/robbie/Tools/eclipse
    #export PATH=$PATH:/home/robbie/Tools/jdk1.6.0_45/bin
    #export JAVA_HOME=/home/robbie/Tools/jdk1.6.0_45
elif [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
    export PATH=$PATH:/home/robbie/.bin
else
    echo
fi


# Setup for vmail
if [ "$(uname)" == "Darwin" ]; then
    export VMAIL_VIM='mvim -v'
fi


#export ARCH=i386

# Setup for minicom
export MINICOM="-c on -D /dev/tty.usbserial-A7044NW4 -C /Users/robbie/Log/minicom.log.`date +%Y%m%d.%H%M`"

# Forward X display to X-Server
# Not need to the following 3 lines if enable X11 forwarding in PuTTY
#if [ "$SSH_CONNECTION" != '' ]; then
#    export DISPLAY=`echo $SSH_CONNECTION | awk '{print $1}' | awk -F: '{if ($1 == "") print $4; else print $1}'`:0
#fi

# Alias for ssh
alias rxp='ssh robc-xp'
alias rit='ssh 120.24.216.37'

# Alias for MacVim in terminal
if [ "$(uname)" == "Darwin" ]; then
    alias v='mvim -v'
fi

# Alias for gist
alias gist='gist -c -o -s'

# Platform specific
if [ "$(uname)" == "Darwin" ]; then
    # brew Command tab-completion
    source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
    # Add brew path
    export PATH=$PATH:$(brew --prefix)/bin
    # Add python path
    export PYTHONPATH="/usr/local/lib/python2.7/site-packages/"
    #python -c 'import sys,pprint;pprint.pprint(sys.path)'

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo
elif [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
    echo
else
    echo
fi


# A funny output when you start a new bash
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    archey
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under Linux platform
    fortune | cowsay -f tux
elif [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
    # Do something under Cygwin platform
    echo
else
    echo
fi

