#! /bin/bash
echo "Don't forget to install XCode and Java Developer Update"
echo "======================================================="

# Install latest GNU Coreutils and get the symlinks in $HOME/bin
brew install coreutils

mkdir $HOME/bin
cd $HOME/bin

for command in base64 basename cat chcon chgrp chmod chown chroot cksum comm cp csplit cut date dd df dir dircolors dirname du echo env expand expr factor false fmt fold groups head hostid id install join kill link ln logname ls md5sum mkdir mkfifo mknod mktemp mv nice nl nohup od paste pathchk pinky pr printenv printf ptx pwd readlink rm rmdir runcon seq sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf sleep sort split stat stty sum sync tac tail tee test touch tr true tsort tty uname unexpand uniq unlink uptime users vdir wc who whoami yes "["; do
  ln -s "/usr/local/bin/g$command" "$command"
done

# Install the rest of important brews
brew install ack \
	agrep \
	apachetop \
	asciidoc \
	aspell \
	bash-completion \
	bash \
	bazaar \
	bibutils \
	binutils \
	byobu \
	cabextract \
	closure-compiler \
	csstidy \
	ctags \
	fortune \
	ffmpeg \
	findutils \
	gawk \
	git \
	git-extras \
	git-flow \
	git-hg \
	git-ssh \
	git-utils \
	gnu-sed \
	html-xml-utils \
	htmlcompressor \
	imagemagick \
	irssi \
	jsl \
	jsmin \
	json-c \
	man2html \
	markdown \
	moreutils \
	mplayer \
	mutt \
	oniguruma \
	par \
	rename \
	renameutils \
	spidermonkey \
	subversion \
	task \
	tmux \
	tree \
	unrar \
	vcprompt \
	wget \
	yuicompressor \
	zsh \
	
# Install NPM
curl http://npmjs.org/install.sh | sh

# Install Rvm
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

# Install MacVim and updated Vim for the Terminal
brew install macvim
echo "`ls /usr/local/Cellar/macvim/*/MacVim.app/Contents/MacOS/Vim | head -n 1` \$*" > /usr/local/bin/vim
chmod 755 /usr/local/bin/vim
