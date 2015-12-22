#!/usr/bin/env bash

## Installs all essential packages with apt-get.
function pckg {
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
	   apt-get install -y ${package}
	done
}

## Add PPA repositories for various packages.
function reps {
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

## Add Keys for packages.
function keys {
	# Spotify
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886;
	echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
}

## Contains all the packages that needs to be installed manually.
function mpckg {
	# Install N to manage Node versions
	curl -L http://git.io/n-install | bash;
	n stable;
}

## The Calling.
sudo -v && keys && reps && pckg && mpckg;
