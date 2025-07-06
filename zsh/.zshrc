export TERM=xterm-256color

export DOTNET_ROOT=$HOME/.dotnet
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$HOME/.nvm"

export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$BUN_INSTALL/bin:$PATH"

# load tools
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/doomsx/.bun/_bun" ] && source "/home/doomsx/.bun/_bun"

# starship promt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

#zoxide
eval "$(zoxide init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias vim="nvim"
alias minecraft="java -jar ~/Downloads/SKlauncher-3.2.12.jar"
alias ls="exa"
alias c="clear"
alias stowdot="stow -v -d ~/personal/dotfiles -t ~"
bindkey -s '^f' 'tmux-sessionizer\n'

# add the ssh agent
eval `keychain --quiet --eval id_ed25519`

# java run
alias jr="javac_run"
javac_run() {
  if [ -z "$1" ]; then
    echo "Usage: jr <filename.java>"
    return 1
  fi
  file="$1"
  class="${file%.java}"
  javac "$file" && java "$class"
}

fastfetch
