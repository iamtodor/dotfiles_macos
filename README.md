# Iterm

Manually import colorschema from `/misc/iter/solirized_dark_higher_contrast.itermcolors`.

# Installation

Run `./install`. For debugging use `./install -v`

# Uninstall

[Wiki guide](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#uninstall-script)

# TODO

- zsh plugins https://github.com/mattmc3/antidote
- ~~fonts~~
- ~~setup global git ignore file~~
- homebrew:
    - google chrome
    - vscode
    - ~~mimestream~~
    - youtube music
    - bitwarden (cannot integrate with browser) https://github.com/bitwarden/clients/issues/3637
    - ~~slack~~
    - ~~karabiner~~
    - ~~iterm~~
    - qbserve
    - pycharm
- configs:
    - flux https://forum.justgetflux.com/post-queue cat ~/Library/Preferences/org.herf.Flux.plist
    - bartender
    - karabiner https://github.com/pqrs-org/Karabiner-Elements/issues/3248
    - ~~iterm~~
    - ~~powerline10k~~
    - pycharm
    - vscode
    - ~~global gitignore~~
    - ~~aws config~~
    - ~~add git config per dir https://dev.to/jma/multiple-gitconfig-409k~~
- ~~pycharm start from console~~
- iterm bat less
- test dotfiles with github actions macos:
    - https://github.com/webpro/dotfiles/blob/master/.github/workflows/ci.yml
    - https://github.com/anishathalye/dotfiles/blob/master/.github/workflows/build.yml
    - https://tomforb.es/testing-my-dotfiles-with-github-actions/
- check fish https://fishshell.com/ probably from Nikita


cat << EOF >> ~/.zshrc

# Python

- Install from dmg
- [pyenv](https://github.com/pyenv/pyenv):
    - https://opensource.com/article/20/4/pyenv
    - https://opensource.com/article/19/5/python-3-default-mac

# Add Visual Studio Code (code)

export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# Notes

## Git notes

Check git config per project works properly: `git config --get core.isFB || echo false`. To make it work, the dir where this command is run should be a git repository.

## VS Code

Use `CMD+` and `CMD-` to zoom the IDE: https://stackoverflow.com/questions/33701933/how-to-change-environments-font-size#comment119265514_33717357

## Brew

Dumps all the apps and packages:

```
brew bundle dump --describe --force
```
