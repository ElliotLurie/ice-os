# Keyboard
bindkey -e

# History
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

# Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion:*' rehash true
setopt autocd extendedglob

# Syntax
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt
PROMPT="%B%F{%(!.1.5)}%n@%m %F{4}%1~ %F{%(!.1.2)}%(!.#.$) %F{7}%b"
