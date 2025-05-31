# 🛠️ ShellCraft

**ShellCraft** is a fully customized, portable terminal environment built for developers who want power, clarity, and beauty in every line of their CLI. Whether you're in iTerm2, WebStorm, or VS Code, ShellCraft makes your shell experience smooth, fast, and stunning.

---

## ✨ Features

- ⚡️ **Oh My Zsh** with `powerlevel10k` theme (adaptive for dark/light terminals)
- 💻 **MesloLGS Nerd Font** auto-installed and configured
- 🎨 **iTerm2 themes**: Snazzy + One Dark ready to use
- 🧠 Smart aliases for Git, navigation, and more
- 🧩 Plugins:
    - `zsh-autosuggestions`
    - `zsh-syntax-highlighting`
- 🔍 Enhanced tools:
    - `eza` (modern `ls`)
    - `bat` (modern `cat`)
    - `fzf` (fuzzy search)
    - `lazygit` (TUI for Git)
    - `htop`, `zoxide`, `tldr`

---

## 📦 What's Included

| File | Description |
|------|-------------|
| `.zshrc` | Main Zsh config with plugin and alias setup |
| `.p10k.zsh` | Powerlevel10k config (dark mode) |
| `.p10k-light.zsh` | Powerlevel10k config for light themes (e.g., WebStorm) |
| `install.sh` | Script to install Homebrew, tools, fonts, and themes |
| `iterm2-themes/` | Preconfigured Snazzy and One Dark `.itermcolors` |

---

## 🚀 Quick Start

```bash
git clone https://github.com/your-username/shellcraft.git
cd shellcraft
chmod +x install.sh
./install.sh