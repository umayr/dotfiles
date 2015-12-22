#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

function install_packages {
	declare -a packages=(

		# Necessary Libraries TODO: Check if they get installed via build-essential
		"libtinfo5 libc6 libncursesw5 libssl-dev"

		# This will allow you to open up a terminal in whichever folder Nautilus File Manager is currently viewing.
		"nautilus-open-terminal"

		# The build-essential package contains all the headers that C/C++ need like <stdio.h> or <iostream.h>.
		"build-essential"

		# It allows you to shrink, expand, delete, change partitions of unmounted media.
		"gparted"

		# Install Flash 9 for viewing Flash based conten on your web browser.
		"flashplugin-nonfree"

		# This will allow you to unpack and create .rar and .7z archives using Ubuntu's Archive Manager.
		"rar unrar p7zip p7zip-full"

		# What'd you do without `wget` and `curl`?
		"wget curl"

		# Git and its utilities.
		"git git-extras git-flow git-man tig"

		# System utils.
		"lua tree lynx pv groff man htop"

		# One media player to rule them all.
		"vlc"

		# Ruby Version Manager to handle a few rubies.
		"rvm"

		# Robot Terminal App.
		"terminator"

		# TMUX
		"tmux"

		# The most awesome shell.
		"fish"

		# Misc utilities
		"ngrep tcpflow libwww-perl"
	)

	for package in "${packages[@]}"
	do
	   echo "Executing >> apt-get install -y $package";
	   # apt-get install -y $package
	done
}

function add_ppa_repositories {
	declare -a repositories=(
			"ppa:fish-shell/release-2"
			"ppa:gnome-terminator"
			"ppa:rael-gc/rvm"
		)

	for repo in "${repositories[@]}"
	do
   		echo "Adding PPA Repository >> $repo";
   		apt-add-repository -y ${repo}
	done
}

function add_keys {
	# Mongo
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886;
	echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
}

function install_manual_packages {
	# Install N to manage Node versions
	curl -L http://git.io/n-install | bash;
	n stable;
}
