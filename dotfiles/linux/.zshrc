export ZSH=/home/mohi/.oh-my-zsh
export TERM=xterm-256color
export HOMEBREW_NO_ANALYTICS=1

plugins=(
  docker
  git
  common-aliases
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump-$HOST-$ZSH_VERSION"

# Create parent directory if not exists
[[ ! -d $HOME/.cache/zsh ]] && mkdir -p $HOME/.cache/zsh

source $ZSH/oh-my-zsh.sh

autoload -Uz zrecompile
autoload -Uz compinit
dump=$ZSH_COMPDUMP

# http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html
if [[ -s "$dump(#qN.mh+24)" && (! -s "$dump.zwc" || "$dump" -nt "$dump.zwc") ]]; then
  compinit -i -d $ZSH_COMPDUMP
  zrecompile $ZSH_COMPDUMP
fi
compinit -C -d $ZSH_COMPDUMP

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[cursor]="bg-blue"

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

# Aliases
source ~/.aliases

# Starship
eval "$(starship init zsh)"