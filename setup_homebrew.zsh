#!/usr/bin/env zsh

echo "\n<<< Starting 🍺 Homebrew Setup >>>\n"

if exists brew; then
	echo "Homebrew is already installed, skipping install. 🍻"
else
	echo "Homebrew is not installed, installing Homebrew 🥣"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose

echo "Enter sudo password to accept Xcode license"
sudo xcodebuild -license accept
sudo xcodebuild -runFirstLaunch

# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
chmod -R go-w "$(brew --prefix)/share"