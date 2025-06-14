# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

### oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions vscode history-substring-search zsh-syntax-highlighting fzf-tab brew)
source $ZSH/oh-my-zsh.sh

### start of my config 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# HISTFILE=~/.zsh_history
# HISTSIZE=10000
# SAVEHIST=10000
# setopt appendhistory

## exports
export PATH="~/.spicetify:$PATH"
export EDITOR="nvim"

## key bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

## aliases
alias cat='bat --paging=never'
alias ll='ls -l --group-directories-first'
alias eza='eza --icons'
alias ls='eza'
alias la='eza -la'
alias fd='fd -I'
alias dots='$(which git) --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cdto='cd; cd $(fd --type d --hidden . Desktop Documents .config workspace | fzf)'
alias fm=". ranger"
# alias fm="yazi"
alias aider="aider --model groq/deepseek-r1-distill-qwen-32b"

# prompts
export PS1=$'\n'"%F{2} %*%F %F{default}%B%5~ %F{default}%B"$'\n'"$ "
# starship
eval "$(starship init zsh)"

eval "$(zoxide init --cmd cd zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
export PATH=$PATH:/Users/hassan/.spicetify


# Created by `pipx` on 2024-09-03 22:20:11
export PATH="$PATH:/Users/hassan/.local/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/hassan/.cache/lm-studio/bin"

# secrets
source $HOME/.secrets

# Added by Windsurf
export PATH="/Users/hassan/.codeium/windsurf/bin:$PATH"
