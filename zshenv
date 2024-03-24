# Zsh startup file.
#
# This file is sourced on all invocations of the shell, unless the
# `-f' option is set.
#   [.zshenv] -> .zprofile -> .zshrc -> .zlogin

function exists() {
  # `command -v` is similar to `which`
  # https://stackoverflow.com/a/677212/1341838
  command -v $1 >/dev/null 2>&1

  # More explicitly written:
  # command -v $1 1>/dev/null 2>/dev/null
}
