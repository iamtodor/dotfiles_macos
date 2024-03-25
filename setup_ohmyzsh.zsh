#!/usr/bin/env zsh

echo "\n<<< Starting oh-my-zsh Setup >>>\n"

if [ -z "$ZSH" ]; then
    echo "\$ZSH is not set, installing Oh My Zsh"
    mv ~/.oh-my-zsh/ ~/.oh-my-zsh_past/
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/wbingli/zsh-wakatime.gitcd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/sobolevn/wakatime-zsh-plugin.git wakatime
else
    echo "\$ZSH is already set as $ZSH, skipping Oh My Zsh installation"
fi
