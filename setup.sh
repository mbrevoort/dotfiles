#!/bin/bash
set -ex

echo "Setting up dotfiles"


if [[ -z "$ZSH_VERSION" ]]; then
    echo "Installing zsh"
    sudo apt install zsh
fi

if [[ ! -d "~/.oh-my-zsh" ]]; then
    echo "Installing Oh My Zsh"
    
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

if [[ -d "/home/gitpod/.dotfiles" ]]; then
    # In gitpod, dotfiles are stored in this directory
    pushd "/home/gitpod/.dotfiles"
        mv .zshrc ~/.zshrc
    popd
fi

export SHELL=zsh
