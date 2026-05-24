# Use zsh
chsh -s $(which zsh)

# install mise-en-place
curl https://mise.run | sh

# Install ZIM for ZSH
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Install chezmoi for dotfiles management
mise use --global chezmoi@2.70.4
