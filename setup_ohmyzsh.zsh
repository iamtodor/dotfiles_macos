#!/usr/bin/env zsh

echo "\n<<< Starting oh-my-zsh Setup >>>\n"

if [ -z "$ZSH" ]; then
    echo "\$ZSH is not set, installing Oh My Zsh"
    mv ~/.oh-my-zsh/ ~/.oh-my-zsh_past/
    mv ~/.zshrc ~/.zshrc_past
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "\$ZSH is already set as $ZSH, skipping Oh My Zsh installation"
fi
