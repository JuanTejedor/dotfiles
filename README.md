# dotfiles

Personal shell utilities (aliases and functions), portable across machines.

## What's inside

- `shell_utils.sh`: aliases and functions (currently just `gacp`, a git add+commit+push shortcut)
- `install.sh`: hooks `shell_utils.sh` into your `.bashrc` and `.zshrc`

## Usage

Clone this repo and run the install script:

```bash
git clone https://github.com/<tu-usuario>/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

Then restart your terminal (or `source ~/.zshrc`).

### Available commands

- `gacp "commit message"`: stages all changes, commits, and pushes in one step
