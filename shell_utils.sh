#!/usr/bin/env sh
#
# shell_utils.sh
#
# Personal shell utilities (aliases and functions), compatible with
# both bash and zsh. Source this file from your .bashrc and/or .zshrc:
#
#   [ -f ~/dotfiles/shell_utils.sh ] && source ~/dotfiles/shell_utils.sh
#

# gacp: git add + commit + push in one step.
# Usage: gacp "commit message"
gacp() {
  if [ -z "$1" ]; then
    echo "Usage: gacp \"commit message\""
    return 1
  fi
  git add -A
  git commit -m "$1"
  git push
}
