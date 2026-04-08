# dotfiles

Personal configuration files.

## Setup

Clone the repo and run the following to symlink everything into place:

```bash
git clone https://github.com/mostlyerror/dotfiles.git "$HOME/dotfiles"

DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/.zshrc"        "$HOME/.zshrc"
ln -sf "$DOTFILES/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES/.bashrc"       "$HOME/.bashrc"
ln -sf "$DOTFILES/.profile"      "$HOME/.profile"
ln -sf "$DOTFILES/.vimrc"        "$HOME/.vimrc"
ln -sf "$DOTFILES/iterm/com.googlecode.iterm2.plist" \
       "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
```

> **Note:** Quit iTerm2 before symlinking the plist, then reopen it.
