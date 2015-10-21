#!/bin/bash

BASE_DIR=$(dirname $0)
cd $BASE_DIR
CURRENT_DIR=`pwd`

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

today=`date +%Y%m%d`
list=(          \
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
    ackrc       \
)

for i in ${list[@]}; 
do 
    echo "Install $i"; 
    lnif $CURRENT_DIR/$i $HOME/.$i;
    echo "Link .$i -> $CURRENT_DIR/$i"; 
done

echo "Install Done!"

