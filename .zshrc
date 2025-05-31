# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ "$TERM_PROGRAM" == "Apple_Terminal" || "$TERM_PROGRAM" == "iTerm.app" ]]; then
  export P10K_CONFIG="$HOME/.p10k.zsh"
else
  export P10K_CONFIG="$HOME/.p10k-light.zsh"
fi

[[ -f "$P10K_CONFIG" ]] && source "$P10K_CONFIG"


# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh


cat ~/.welcome
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Highlight style for autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Add Volta to PATH
export PATH="$HOME/.volta/bin:$PATH"

# --------------------------
# 🧩 Aliases & Enhancements
# --------------------------

# Replace coreutils with modern tools
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first'
alias tree='eza --tree --level=2 --icons'

# Colorized, enhanced file previews
alias cat='bat'
alias c='bat'

# Git shortcuts
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias lg='lazygit'

# Fuzzy find recent dirs/files
alias ff='fzf'
alias fh='history | fzf'

# Smarter directory navigation
eval "$(zoxide init zsh)"

# Process monitoring
alias top='htop'

# Man page replacement
alias help='tldr'

# Clean up .DS_Store
alias cleanup="find . -name '*.DS_Store' -type f -delete"

# Reload zsh
alias reload='source ~/.zshrc'

# Time-saving dev shortcuts
alias ports='lsof -i -P -n | grep LISTEN'
alias serve='python3 -m http.server'

#Universal File Search
alias ff='fd . | fzf'


# Fuzzy search in command history
bindkey '^R' fzf-history-widget

# --------------------------
# 🪄 UI/Prompt tweaks
# --------------------------
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Optional: customize prompt appearance here (see ~/.p10k.zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


