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
    zshrc       \
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
    screenrc    \
    tmux.conf   \
    ackrc       \
    lynx.cfg    \
    lynx.lss    \
)

for i in ${list[@]}; 
do 
    echo "Install $i"; 
    lnif $CURRENT_DIR/$i $HOME/.$i;
    echo "Link .$i -> $CURRENT_DIR/$i"; 
done

# Install tmuxen
bin=$HOME/.bin
cwd=$(pwd)

if [ ! -d $bin ]; then
    mkdir $bin
fi

echo "Installing tmuxen to $bin"
ln -sf $cwd/tmuxen $bin/tmuxen

echo "Symlinking _tmux.conf to $HOME/.tmux.conf"
ln -sf $cwd/_tmux.conf $HOME/.tmux.conf

echo "Install Done!"

