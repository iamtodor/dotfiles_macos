# remove if works fine
# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER=`whoami`

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    dotenv
    extract
    gcloud
    git
    poetry
    terraform
    virtualenv
    # https://wakatime.com/terminal
    wakatime
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add AWS completion
export PATH="/usr/local/bin/aws_completer:$PATH"

export HOMEBREW_CASK_OPTS="--no-quarantine --appdir=~/Applications"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/programming/tools/google-cloud-sdk_280/path.zsh.inc" ];
  then . "$HOME/programming/tools/google-cloud-sdk_280/path.zsh.inc";
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/programming/tools/google-cloud-sdk_280/completion.zsh.inc" ];
  then . "$HOME/programming/tools/google-cloud-sdk_280/completion.zsh.inc";
fi
# RPROMPT="[%*]"

source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

## python
alias act="source .venv/bin/activate"
alias base_env="source $HOME/programming/tools/venv/bin/activate"
alias jl="jupyter lab"

## general
# https://github.com/eza-community/eza?tab=readme-ov-file#command-line-options
alias ls="ls -lAFh"
alias eza_custom="eza --long --all --header --classify"
# ld — lists only directories (no files)
alias ld='eza --long --all --header --classify --only-dirs'
# lf — lists only files (no directories)
alias lf='eza --long --only-files --header'
# lh — lists only hidden files (no directories)
alias lh='eza --list-dirs --long .* --group-directories-first'
# ll — lists everything with directories first
alias ll='eza --all --long --group-directories-first'
# ls — lists only files sorted by size
alias lss='eza_custom -alF --color=always --sort=size | grep -v /'
# lt — lists everything sorted by time updated
alias lt='eza --all --long --header --classify --sort=modified'

alias personal_git_creds='GIT_SSH_COMMAND="ssh -i ~/.ssh/personal"'
alias usage="du -h -d1"
alias runp="lsof -i "
alias zshconfigcat="cat ~/.zshrc"
alias zshconfigcode="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias update="source ~/.zshrc"

alias man="batman"
alias bbd="brew bundle dump --describe --force"
# used to see all variables in $PATH in readable way
alias trail='<<<${(F)path}'

## docker
alias dps="docker ps -a"
alias dup="docker compose up"
alias dupd="docker compose up -d"
alias dstop="docker compose stop"
alias drestart="docker compose restart"
alias drm="docker compose rm --all"

## git
unalias glog
alias glog="git log --graph --date=short --branches --pretty=format:'%C(red)%h%C(reset) %C(green) | %ad | %C(reset) %s %C(yellow)%d%C(reset) %C(bold blue) [%an] %C(reset)'"
alias glog2="git log --color --graph --branches --pretty=format:'%C(red)%h%C(reset) %C(green) (%cr) -%C(yellow)%d%C(reset) %s %C(bold blue)<%an>%C(reset)' --abbrev-commit "

alias checkFB="git config --get core.isFB || echo false"
alias checkGSK="git config --get core.isGSK || echo false"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
# export PATH="/Users/it673132/.rd/bin:$PATH"
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/programming/tools/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/programming/tools/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/programming/tools/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/programming/tools/google-cloud-sdk/completion.zsh.inc"; fi

GOOGLE_APPLICATION_CREDENTIALS_PATH="$HOME/.config/gcloud/application_default_credentials.json"
export GOOGLE_APPLICATION_CREDENTIALS_PATH

# Created by `pipx` on 2024-06-28 11:03:09
export PATH="$PATH:$HOME/.local/bin"
