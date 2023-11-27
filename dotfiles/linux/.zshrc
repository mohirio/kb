export ZSH=/home/mohi/.oh-my-zsh
export TERM=xterm-256color
export HOMEBREW_NO_ANALYTICS=1

ZSH_THEME="geometry/geometry"

plugins=(
  docker
  git
  common-aliases
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

export LANG=en_US.UTF-8
export LC_ALL=$LANG

# geometry
PROMPT_GEOMETRY_PRIMARY_SUFFIX=$'\n'
PROMPT_GEOMETRY_PRIMARY_PREFIX=$'\n'
GEOMETRY_PROMPT_PREFIX_SPACER=""
GEOMETRY_COLOR_CONDA=green
GEOMETRY_PROMPT_PATH='%~'
GEOMETRY_GIT_SEPARATOR="⠶"

setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# aliases ======================================================================
alias lg1="git log --graph --abbrev-commit --decorate --pretty=oneline \
--format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) \
%C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)\
- %an%C(reset)%n''%C(white)%s%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate \
--format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) \
%C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)\
- %an%C(reset)%n''%C(white)%B%C(reset)' --all"
alias lg3="git log --graph --abbrev-commit --decorate \
--format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) \
%C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)\
- %an%C(reset)%n''%C(white)%B%C(reset)'"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mohi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mohi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mohi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mohi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

