# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export TERM=xterm-256color
export DOTNET_ROOT=/snap/dotnet-sdk/current
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias vim="nvim"
alias nvimconfig="vim ~/.config/nvim/"
alias backend="cd ~/projects/backend/"
alias frontend="cd ~/projects/frontend/"
alias dotfiles="cd ~/.dotfiles/"
alias gb="git branch"
alias gp="git pull"
alias gP="git push"
alias gc="git commit"
alias ga="git add"
alias spotx="bash <(curl -sSL https://spotx-official.github.io/run.sh) -phf"
alias suspend="sudo systemctl suspend"
alias shutdown="sudo shutdown -h now"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/doomsx/.bun/_bun" ] && source "/home/doomsx/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
eval "$(zoxide init zsh)"
