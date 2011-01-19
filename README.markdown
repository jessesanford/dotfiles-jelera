# jelera's Dotfiles

Here is a collection of my dotfiles, some of them took me a lot of research and trial and error. Hopefully, they are as useful to you as they are to me.

If you have any suggestion, fix, critic, etc; I'll be happy to hear it.

## Config Files

* **Vim** : `.vimrc` and `.vim` Specially tuned for Web Development but not limited to it.
* **Zsh** : `.zshrc` Using a slightly custom version of [Steve Losh's zsh prompt](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/) and [his fork of oh-my-zsh](http://github.com/sjl/oh-my-zsh/).
* **Bash**: `.bashrc` Prompt which shows also some git and hg info with `vcprompt`. If using OSX, please consider installing Bash from the [Homebrew Package Manager](https://github.com/mxcl/homebrew).
* **tmux**: `.tmux.conf` Keybinds to match to some extent GNU Screen, also nice colors.
* **git** : `.gitconfig` and `.gitk` Simple git config.
* **hg** : `.hgrc` Still some work to be done here.

## Installation Shell Scripts

*This is still a WIP (Work In Progress).*

In the terminal, run these commands:

		$ chmod +x mydotfiles.sh
		$ ./mydotfiles.sh

* `mydotfiles.sh` (For Unix-like Systems)
A simple bash script to create the symlinks.

* `installmac.sh` (Only for Mac OS X)
Using the [Homebrew Package Manager](https://github.com/mxcl/homebrew) to install some important software in an "automated way".
