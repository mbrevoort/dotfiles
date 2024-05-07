#!/bin/bash
set -ex

echo "Setting up dotfiles"

SCRIPT_DIR=$(realpath $(dirname "$0"))
cd $SCRIPT_DIR

if [[ -z "$ZSH_VERSION" ]]; then
    echo "Installing zsh"
    sudo apt install zsh
fi

if [[ ! -d "~/.oh-my-zsh" ]]; then
    echo "Installing Oh My Zsh"
    
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

mv .zshrc ~/.zshrc

export SHELL=zsh
