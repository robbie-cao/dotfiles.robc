#!/bin/bash

# Refer  spf13-vim bootstrap.sh`
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

echo "Step 1: backing up current config"
today = `date +%Y%m%d`
list = (        \
    bashrc      \
    byobu       \
    dot_emacs   \
    fetchmailrc \
    gitconfig   \
    inputrc     \
    mailcap     \
    msmtprc     \
    muttrc      \
    netrc       \
    procmailrc  \
    screnrc     \
    tmux.conf   \
)

cp -fr $CURRENT_DIR $CURRENT_DIR.$today
for i in $list; do [ -L $i ] && unlink $i ; done

lnif bashrc      $HOME/.bashrc     
lnif byobu       $HOME/.byobu      
lnif dot_emacs   $HOME/.emacs      
lnif fetchmailrc $HOME/.fetchmailrc
lnif gitconfig   $HOME/.gitconfig  
lnif inputrc     $HOME/.inputrc    
lnif mailcap     $HOME/.mailcap    
lnif msmtprc     $HOME/.msmtprc    
lnif muttrc      $HOME/.muttrc     
lnif netrc       $HOME/.netrc      
lnif procmailrc  $HOME/.procmailrc 
lnif screnrc     $HOME/.screnrc    
lnif tmux.conf   $HOME/.tmux.conf  

echo "Install Done!"

