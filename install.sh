#!/usr/bin/env sh
#
# install.sh
# Adds a line to ~/.bashrc and ~/.zshrc (if they exist) that sources
# shell_utils.sh from this repo. Safe to re-run: skips if already added.

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
LINE="[ -f \"$DOTFILES_DIR/shell_utils.sh\" ] && source \"$DOTFILES_DIR/shell_utils.sh\""

for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  if [ -f "$rc" ]; then
    if ! grep -qF "shell_utils.sh" "$rc"; then
      echo "" >> "$rc"
      echo "$LINE" >> "$rc"
      echo "Added to $rc"
    else
      echo "Already present in $rc, skipping"
    fi
  fi
done

echo "Done. Restart your terminal or run: source ~/.zshrc (or ~/.bashrc)"
