# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# Available themes
# 3den
# Soliah
# adben
# af-magic
# afowler
# agnoster
# alanpeabody
# amuse
# apple
# arrow
# aussiegeek
# avit
# awesomepanda
# bira
# blinks
# bureau
# candy-kingdom
# candy
# clean
# cloud
# crcandy
# crunch
# cypher
# dallas
# darkblood
# daveverwer
# dieter
# dogenpunk
# dpoggi
# dst
# dstufft
# duellj
# eastwood
# edvardm
# emotty
# essembeh
# evan
# example
# fino-time
# fino
# fishy
# flazz
# fletcherm
# fox
# frisk
# frontcube
# funky
# fwalch
# gallifrey
# gallois
# garyblessington
# gentoo
# geoffgarside
# gianu
# gnzh
# gozilla
# half-life
# humza
# imajes
# intheloop
# itchy
# jaischeema
# jbergantine
# jispwoso
# jnrowe
# jonathan
# josh
# jreese
# jtriley
# juanghurtado
# junkfood
# kafeitu
# kardan
# kennethreitz
# kiwi
# kolo
# kphoen
# lambda
# linuxonly
# lukerandall
# macovsky-ruby
# macovsky
# maran
# mgutz
# mh
# michelebologna
# mikeh
# miloshadzic
# minimal
# mira
# mortalscumbag
# mrtazz
# murilasso
# muse
# nanotech
# nebirhos
# nicoulaj
# norm
# obraun
# peepcode
# philips
# pmcgee
# pure
# pygmalion
# re5et
# rgm
# risto
# rixius
# rkj-repos
# rkj
# robbyrussell
# sammy
# simonoff
# simple
# skaro
# smt
# sonicradish
# sorin
# sporty_256
# steeef
# strug
# sunaku
# sunrise
# superjarin
# suvash
# takashiyoshida
# terminalparty
# theunraveler
# tjkirch
# tjkirch_mod
# tonotdo
# trapd00r
# wedisagree
# wezm+
# wezm
# wuffers
# xiong-chiamiov-plus
# xiong-chiamiov
# ys
# zhann
#
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras github svn battery autojump common-alias command-not-found colored-man-pages web-search pip bower npm perl python ruby)

# User configuration

export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin
# Path for macos
if [[ "$(uname)" == "Darwin" ]]; then
    export PATH=$PATH:~/Developments/android-sdk-macosx/platform-tools:~/Developments/android-sdk-macosx/tools
    export PATH=$PATH:~/.rvm/bin
    # TeX
    export PATH=$PATH:/Applications/TeX/TeXShop.app/Contents/Resources/TeXShop/bin
    export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin

    # Go
    export PATH=$PATH:/Users/robbie/Developments/go/bin

fi
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Setup for vmail
if [[ "$(uname)" == "Darwin" ]]; then
    export VMAIL_VIM='mvim -v'
fi

# Setup for minicom
if [[ "$(uname)" == "Darwin" ]]; then
    export MINICOM="-c on -C ~/Log/minicom.log.`date +%Y%m%d.%H%M`"
fi

# Forward X display to X-Server
# Not need to the following 3 lines if enable X11 forwarding in PuTTY
#if [ "$SSH_CONNECTION" != '' ]; then
#    export DISPLAY=`echo $SSH_CONNECTION | awk '{print $1}' | awk -F: '{if ($1 == "") print $4; else print $1}'`:0
#fi

# Alias for ssh
alias rxp='ssh robc-xp'
alias rit='ssh 120.24.216.37'

# Alias for MacVim in terminal
if [[ "$(uname)" == "Darwin" ]]; then
    alias v='mvim -v'
fi

# Alias for gist
alias gist='gist -c -o -s'

# Path
export PATH=$PATH:~/.bin

# Docbook
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# A funny output when you start a new bash
if [[ "$(uname)" == "Darwin" ]]; then
    # Do something under Mac OS X platform
    archey
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    # Do something under Linux platform
    fortune | cowsay -f tux
elif [[ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]]; then
    # Do something under Cygwin platform
    echo
else
    echo
fi

