#!/bin/bash

echo "🔧 Starting terminal environment setup..."

# Install Homebrew if not present
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew already installed."
fi

# Install CLI tools
echo "⬇️ Installing CLI tools..."
brew install zoxide eza bat fzf lazygit htop tldr fd

# Setup fzf keybindings
echo "🔧 Configuring fzf keybindings..."
$(brew --prefix fzf)/install --all

# Install iTerm2 and Nerd Font
echo "⬇️ Installing iTerm2 and MesloLGS Nerd Font..."
brew install --cask iterm2
brew tap homebrew/cask-fonts || true
brew install --cask font-meslo-lg-nerd-font

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "✨ Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "✅ Oh My Zsh already installed."
fi

# Install Powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  echo "🎨 Installing Powerlevel10k theme..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ~/.oh-my-zsh/custom/themes/powerlevel10k
fi

# Copy dotfiles
echo "📁 Copying config files..."
cp .zshrc ~/.zshrc
cp .fzf.zsh ~/.fzf.zsh
cp .p10k.zsh ~/.p10k.zsh
cp .p10k-light.zsh ~/.p10k-light.zsh
cp .welcome ~/.welcome

# Download iTerm2 color themes
echo "🎨 Downloading iTerm2 themes..."
mkdir -p ~/iterm2-themes
curl -sL https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors -o ~/iterm2-themes/Snazzy.itermcolors
curl -sL https://raw.githubusercontent.com/denysdovhan/iterm2-one-dark-theme/master/OneDark.itermcolors -o ~/iterm2-themes/OneDark.itermcolors

echo "✅ Setup complete!"
echo "👉 Open iTerm2 → Preferences → Profiles → Colors → Import Snazzy or OneDark from ~/iterm2-themes"
