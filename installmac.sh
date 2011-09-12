#! /bin/bash
clear
echo "Don't forget to install XCode and Java Developer Update"
echo "======================================================="
echo ""
echo "(If not... Ctrl-C to cancel)"
sleep 4
clear

echo "Installing Homebrew Package Manager for OSX"
echo "==========================================="

# It fetches homebrew from github
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
echo ""
echo "done ...Installing Homebrew Package Manager for OSX"
sleep 3

clear

echo "Installing GNU Coreutils and adding the symlinks to ~/bin folder"
echo "================================================================"

# Install latest GNU Coreutils and get the symlinks in $HOME/bin
brew install coreutils

mkdir $HOME/bin
cd $HOME/bin

for command in base64 basename cat chcon chgrp chmod chown chroot cksum comm cp csplit cut date dd df dir dircolors dirname du echo env expand expr factor false fmt fold groups head hostid id install join kill link ln logname ls md5sum mkdir mkfifo mknod mktemp mv nice nl nohup od paste pathchk pinky pr printenv printf ptx pwd readlink rm rmdir runcon seq sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf sleep sort split stat stty sum sync tac tail tee test touch tr true tsort tty uname unexpand uniq unlink uptime users vdir wc who whoami yes "["; do
  ln -s "/usr/local/bin/g$command" "$command"
done
cd $HOME
echo ""
echo "done ...Installing GNU Coreutils and adding the symlinks to ~/bin folder"
sleep 2
clear 

echo "Install the rest of important brews"
echo "==================================="

brew install ack \
	agrep \
	apachetop \
	aspell \
	bash-completion \
	bash \
	binutils \
	closure-compiler \
	csstidy \
	ctags \
	fortune \
	findutils \
	gawk \
	git \
	gnu-sed \
	irssi \
	jsl \
	jsmin \
	man2html \
	markdown \
	moreutils \
	mplayer \
	mutt \
	par \
	rename \
	renameutils \
	subversion \
	task \
	tmux \
	tree \
	unrar \
	vcprompt \
	wget \
	yuicompressor \
	zsh \
	
echo ""
echo "done ... Installing extra brews"
sleep 2
clear

echo "Install Node Version Manager (NVM)"
echo "=================================="
git clone git://github.com/creationix/nvm.git ~/.nvm

echo ""
echo "done ... Installing nvm"
sleep 2
clear

echo "Install Ruby Version Manager (RVM)"
echo "=================================="
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

echo ""
echo "done ... Installing rvm"
sleep 2
clear

echo "Install MacVim and updated Vim for the Terminal"
brew install macvim


echo ""
echo "done ... Installing MacVim"
sleep 2
clear

echo "Enjoy and don't forget to setup nvm and rvm"
