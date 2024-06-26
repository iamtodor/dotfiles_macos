<!-- TOC -->
* [TODO](#todo)
  * [Hide toolbar](#hide-toolbar)
* [Learning resources](#learning-resources)
* [Notes](#notes)
  * [SSH keys](#ssh-keys)
  * [Installation](#installation)
  * [Uninstall](#uninstall)
  * [Python](#python)
  * [Git notes](#git-notes)
  * [VS Code](#vs-code)
  * [Brew](#brew)
  * [Iterm](#iterm)
  * [Screen capture](#screen-capture)
<!-- TOC -->

# TODO

- zsh plugins https://github.com/mattmc3/antidote antigen
- ~~fonts~~
- ~~setup global git ignore file~~
- homebrew:
    - google chrome
    - ~~vscode~~
    - ~~mimestream~~
    - youtube music
    - bitwarden (cannot integrate with browser) https://github.com/bitwarden/clients/issues/3637
    - ~~slack~~
    - ~~karabiner~~
    - ~~iterm~~
    - qbserve
    - pycharm
    - ~~jetbrains toolbox~~
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
- iterm bat less https://github.com/sharkdp/bat/issues/2367
- test dotfiles with github actions macos:
    - https://github.com/webpro/dotfiles/blob/master/.github/workflows/ci.yml
    - https://github.com/anishathalye/dotfiles/blob/master/.github/workflows/build.yml
    - https://tomforb.es/testing-my-dotfiles-with-github-actions/
- ~~replace exa~~
- ~~add single user brew app installation~~
- ~~check the flow with brew https://github.com/ivoronin/TomatoBar~~
- ~~add check for setup_ohmyzsh.zsh~~
- wakatime plugin installation https://github.com/sobolevn/wakatime-zsh-plugin#manual
  https://wakatime.com/terminal#install-zsh
- explore dotfiles https://github.com/getantibody/antibody#in-the-wild
- release main v1.0 once it is ready
- start moving to fish shell https://fishshell.com/ probably from Nikita
- ~~global gitignore does not work~~

## Hide toolbar

- https://github.com/dwarvesf/hidden
- https://github.com/Mortennn/Dozer
- Bartender
- iBar

<!-- TOC --><a name="learning-resources"></a>
# Learning resources

- https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/
- https://github.com/eieioxyz/dotfiles_macos

<!-- TOC --><a name="notes"></a>
# Notes

## SSH keys

```
ssh-keygen -t ed25519 -C "todor.ilya@gmail.com"
pbcopy < ~/.ssh/id_ed25519.pub
```

<!-- TOC --><a name="installation"></a>
## Installation

Move the initial `.zshrc` with `mv .zshrc .zshrc_past`.

`git clone git@github.com:iamtodor/dotfiles_macos.git .dotfiles`

Run `./install`. For debugging use `./install -v`.

<!-- TOC --><a name="uninstall"></a>
## Uninstall

```
pip install PyYAML
python3 uninstall.py
```

[Wiki guide](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#uninstall-script)

<!-- TOC --><a name="python"></a>
## Python

- Install from dmg
- [pyenv](https://github.com/pyenv/pyenv):
    - https://opensource.com/article/20/4/pyenv
    - https://opensource.com/article/19/5/python-3-default-mac

<!-- TOC --><a name="git-notes"></a>
## Git notes

Check git config per project works properly: `git config --get core.isFB || echo false`. To make it work, the dir where
this command is run should be a git repository.

<!-- TOC --><a name="vs-code"></a>
## VS Code

- Use `CMD+` and `CMD-` to zoom the IDE: https://stackoverflow.com/questions/33701933/how-to-change-environments-font-size#comment119265514_33717357
- export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

<!-- TOC --><a name="brew"></a>
## Brew

To install all the packages manually see [setup_homebrew.zsh](setup_homebrew.zsh).

Dumps all the apps and packages:

```
brew bundle dump --describe --force
```

`bbd` Alias in [zshrc file](./zshrc)

Different notes https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options

<!-- TOC --><a name="iterm"></a>
## Iterm

Manually import colorschema from `/misc/iter/solirized_dark_higher_contrast.itermcolors`.

The profile [import](https://stackoverflow.com/a/23356086/5151861). After import make sure to reload the iterm.

## Screen capture

- iscreen shoter
