# Development Environment (macOS)

## Package Managers
### Homebrew
Homebrew is one of the most popular package managers on macOS which helps installing, managing and safely uninstalling different software such as `git`, `node`, `cmake`, etc right from your terminal with a one-liner. It also manages installing different versions of these software.
#### Installation
- As prerequisite, brew requires [Xcode](https://developer.apple.com/xcode/) installed on your machine. You can install it from the App Store.
- Next, open up your terminal and paste the following command and follow the instructions.
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
---
## Terminal
### iTerm2
Download from https://iterm2.com/downloads.html or install with [Homebrew](https://brew.sh/)
```bash
brew install --cask iterm2
```

## Shell

### Oh My ZSH
Oh My Zsh is an open-source framework for managing `zsh` configurations, plugins and themes. Out of the box, it provides additional information that a barebone `zsh` would not provide within your terminal to boost your productivity such as:
- Current git branch
- Git status
- Current working directory
- etc

#### Installation
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Installing Oh My Zsh will take over the configuration file and makes the bare minimum changes to make Oh My Zsh functional, and for your to start customizing your shell preferences to your needs.

#### Configuration File: `~/.zshrc`

```bash
export ZSH=/home/$(whoami)/.oh-my-zsh
export TERM=xterm-256color
export HOMEBREW_NO_ANALYTICS=1

ZSH_THEME="robbyrussell"

plugins=(
  docker
  git
  common-aliases
)
```


### Extensions

#### ZSH Autosuggestions
https://github.com/zsh-users/zsh-autosuggestions
- Installation
  ```bash
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh  custom}/plugins/zsh-autosuggestions
  ```
- Configuration, add this to your `~/.zshrc` file
  ```bash
  plugins=(
      # other plugins...
      zsh-autosuggestions
  )
  ```

#### ZSH Completions
https://github.com/zsh-users/zsh-completions
- Installation
  ```bash
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
  ```
- Configuration, add this to your `~/.zshrc` file
  ```bash
  plugins=(
      # other plugins...
      zsh-completions
  )
  autoload -U compinit && compinit
  ```

#### ZSH Syntax Highlighting
https://github.com/zsh-users/zsh-completions
- Installation
  ```bash
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```
- Configuration, add this to your `~/.zshrc` file
  ```bash
  plugins=(
      # other plugins...
      zsh-syntax-highlighting
  )
  ```

---
## Editor
### VS Code
#### Installation
Download from https://code.visualstudio.com/


