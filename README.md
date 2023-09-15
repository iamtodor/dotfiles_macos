<!-- TOC start (generated with https://github.com/derlin/bitdowntoc) -->

- [TODO](#todo)
- [Learning resources](#learning-resources)
- [Notes](#notes)
  * [Installation](#installation)
  * [Uninstall](#uninstall)
  * [Python](#python)
  * [Git notes](#git-notes)
  * [VS Code](#vs-code)
  * [Brew](#brew)
  * [Iterm](#iterm)

<!-- TOC end -->

<!-- TOC --><a name="todo"></a>
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
- iterm bat less
- test dotfiles with github actions macos:
    - https://github.com/webpro/dotfiles/blob/master/.github/workflows/ci.yml
    - https://github.com/anishathalye/dotfiles/blob/master/.github/workflows/build.yml
    - https://tomforb.es/testing-my-dotfiles-with-github-actions/
- check fish https://fishshell.com/ probably from Nikita
- check https://github.com/Mortennn/Dozer vs Bartender
- ~~replace exa~~
- ~~add single user brew app installation~~
- ~~check the flow with brew https://github.com/ivoronin/TomatoBar~~

<!-- TOC --><a name="learning-resources"></a>
# Learning resources

- https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/
- https://github.com/eieioxyz/dotfiles_macos

<!-- TOC --><a name="notes"></a>
# Notes

<!-- TOC --><a name="installation"></a>
## Installation

Run `./install`. For debugging use `./install -v`

<!-- TOC --><a name="uninstall"></a>
## Uninstall

[Wiki guide](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#uninstall-script)

<!-- TOC --><a name="python"></a>
## Python

- Install from dmg
- [pyenv](https://github.com/pyenv/pyenv):
    - https://opensource.com/article/20/4/pyenv
    - https://opensource.com/article/19/5/python-3-default-mac

<!-- TOC --><a name="git-notes"></a>
## Git notes

Check git config per project works properly: `git config --get core.isFB || echo false`. To make it work, the dir where this command is run should be a git repository.

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
