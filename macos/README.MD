# TL;DR - macOS Dev Environment Setup

This guide installs the following tools on macOS:

- **Homebrew**: Package manager for macOS.
- **Git**: Version control system.
- **Node Version Manager (NVM)**: Manage multiple Node.js versions.
- **Visual Studio Code (VSCode)**: Code editor.
- **Warp**: Terminal
- **Mongo Compass**: Interactive tool for analyzing MongoDB data
- **Postman**: Collaboration platform for API development
- **Docker**: Pack, ship and run any application as a lightweight container

## Installation Commands

```bash
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

# Install Warp
brew install --cask warp

# Install MongoCompass
brew install --cask mongodb-compass

# Install Postman
brew install --cask postman

# Install Docker
brew install docker
```



Enjoy your development setup!

---

This version provides a quick overview of the tools installed and the necessary commands.