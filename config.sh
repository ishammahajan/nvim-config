PACKAGES="fd ripgrep lazygit"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sudo apt install $PACKAGES
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Mac OSX
  brew install $PACKAGES
elif [[ "$OSTYPE" == "cygwin" ]]; then
  # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
  # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
  # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  # ...
else
  # Unknown.
  echo "Unsupported OS: $OSTYPE"
fi

git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra

git config --global core.excludesfile ~/.gitignore
echo "session" >> ~/.gitignore
