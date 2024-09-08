# Requirements

## ZSH
### Install ZSH
  - For Ubuntu
  ```
    sudo apt install zsh
  ```
  - For Arch
  ```
    sudo pacman -S zsh
  ```
### Install Oh My ZSH
  ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
### Install autosuggestion and syntax highlighting
  ```
    sudo apt install zsh-autosuggestions zsh-syntax-highlighting
  ```
### Install Plugins
 - autosuggestions<br/>
  `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`<br/><br/>
  - systax highlighting<br/>
  `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`<br/><br/>
  - fast syntax highlighting<br/>
  `git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`<br/><br/>
  - autocomplete<br/>
  `git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`<br/><br/>

### Enable plugins by adding them to .zshrc
- Open .zshrc
  `nvim ~/.zshrc`
- Find the line which says `plugins=(git)`.
- Replace that line with `plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)`

<hr/>

## Neovim

- #### Neovim >= 0.9.0 (needs to be built with LuaJIT)
- #### Git >= 2.19.0 (for partial clones support)
- #### a Nerd Font(v3.0 or greater) (Hack Nerd Font)
- #### lazygit (optional)
- #### For Telescope
  -  live grep: ripgrep
     ###### For Arch

           sudo pacman -S ripgrep

     ###### For Ubuntu

           sudo apt-get install ripgrep

  - find files: fd
    ##### For Arch

          sudo pacman -S fd

    ##### For Ubuntu

           sudo apt-get install fd

  - fzf
    ##### For Arch

          sudo pacman -S fzf

    ##### For Ubuntu

           sudo apt-get install fzf

  -  nvm
      ##### Install NVM

            curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

      ##### Install Node and NPM

            nvm install --lts

<hr/>

## Tmux
### Install Tmux
  #### For Ubuntu

      sudo apt-get install tmux

  #### For Arch

      sudo pacman -S tmux

### TPM

      git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### After installing

      tmux source ~/.config/tmux/tmux.conf



<hr/>

## Symbolic Link
```
  ln -s ~/.dotfiles/.zshrc ~/.zshrc 
  ln -s ~/.dotfiles/nvim ~/.config/nvim 
  ln -s ~/.dotfiles/tmux ~/.config/tmux 
  ln -s ~/.dotfiles/.wezterm.lua ~/.wezterm.lua 
  ln -s ~/.dotfiles/composer ~/.config/composer/
```
