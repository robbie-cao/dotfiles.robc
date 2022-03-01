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
list=(            \
    bashrc        \
    zshrc         \
    profile.robc  \
    profile.devel \
    byobu         \
    dot_emacs     \
    fetchmailrc   \
    gitconfig     \
    inputrc       \
    indent.pro    \
    mailcap       \
    msmtprc       \
    muttrc        \
    netrc         \
    procmailrc    \
    screenrc      \
    tmux.conf     \
    ackrc         \
    w3m           \
    vmailrc       \
    lynx.cfg      \
    lynx.lss      \
    quiltrc       \
    globalrc      \
)

# Download plantuml.jar
wget http://sourceforge.net/projects/plantuml/files/plantuml.jar/download -O lib/plantuml.jar

for i in ${list[@]};
do
    echo "Install $i";
    lnif $CURRENT_DIR/$i $HOME/.$i;
    echo "Link .$i -> $CURRENT_DIR/$i";
done

# Install tmuxen
bin=$HOME/.bin
lib=$HOME/.lib
cwd=$(pwd)

if [ -d $bin ]; then
    echo "Backup $bin to $bin.$today"
    mv -f $bin $bin.$today
fi

if [ -d $lib ]; then
    echo "Backup $lib to $lib.$today"
    mv -f $lib $lib.$today
fi

mkdir $bin
mkdir $lib

echo "Installing tmuxen to $bin"
ln -sf $cwd/tmuxen $bin/tmuxen

echo "Symlinking _tmux.conf to $HOME/.tmux.conf"
ln -sf $cwd/_tmux.conf $HOME/.tmux.conf

echo "Installing utils to $bin"
for i in `ls bin`;
do
    echo "Install $i";
    ln -sf $cwd/bin/$i $bin/$i;
done

echo "Installing libs to $lib"
for i in `ls lib`;
do
    echo "Install $i";
    ln -sf $cwd/lib/$i $lib/$i;
done

echo "Installing tools"
sudo apt install \
    fortune cowsay \
    lynx w3m \
    tmux screen \
    curl wget netcat \
    git subversion \
    vim emacs

echo "Installing system monitoring tools"
sudo apt install htop atop iotop iftop nmon

echo "Installing python"
sudo apt install python3 python3-venv python3-pip

echo "Installing jq - command-line JSON processor"
sudo apt install jq

echo "Installing code tag tools"
sudo apt install cscope exuberant-ctags global doxygen id-utils python3-pygments

echo "Installing fd-find - an alternative to find"
sudo apt install fd-find

echo "Installing git-delta - a syntax highlight pager"
wget https://github.com/dandavison/delta/releases/download/0.12.0/git-delta_0.12.0_amd64.deb -O git-delta.deb
sudo dpkg -i git-delta.deb
rm -f git-delta.deb

# https://ohmyz.sh/#install
echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Installing ripgrep"
sudo apt install ripgrep

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Install Done!"

