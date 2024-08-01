#!/bin/bash

# Function to install tools on macOS
install_macos_tools() {
  echo "Installing tools for macOS..."

  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Install Git
  brew install git

  # Install NVM
  brew install nvm
  mkdir ~/.nvm
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
  source ~/.zshrc
  nvm install node

  # Install VSCode
  brew install --cask visual-studio-code

  # Install Oh My Zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo "macOS tools installation complete!"
}

# Function to install tools on Debian/Ubuntu
install_debian_ubuntu_tools() {
  echo "Installing tools for Debian/Ubuntu..."

  # Update package list
  sudo apt update

  # Install Git
  sudo apt install -y git

  # Install Node.js and npm (from repository)
  sudo apt install -y nodejs npm

  # Optionally install NVM for managing Node.js versions
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm install node

  # Install VSCode
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft-archive-keyring.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
  sudo apt update
  sudo apt install -y code

  echo "Debian/Ubuntu tools installation complete!"
}

# Detect OS and install tools accordingly
if [[ "$OSTYPE" == "darwin"* ]]; then
  install_macos_tools
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  install_debian_ubuntu_tools
else
  echo "Unsupported OS. Please use macOS or Debian/Ubuntu."
fi
