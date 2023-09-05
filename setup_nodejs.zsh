#!/usr/bin/env zsh

echo "\n<<< Starting 🧩 NodeJS Setup >>>\n"

if exists $N_PREFIX/bin/node; then
	echo "Node $($N_PREFIX/bin/node --version) & NPM $($N_PREFIX/bin/npm --version) already installed with n ✅"
else
	echo "Installing nodejs & npm with n..."
	n lts
fi

# Setup pnpm
corepack enable
corepack prepare pnpm@latest --activate

# Install global packages
npm install --global typescript
npm install --global @volar/vue-language-server
npm install --global nativescript
npm install --global firebase-tools
npm install --global @angular/cli

echo "Done ✅"
npm list --global --depth=0