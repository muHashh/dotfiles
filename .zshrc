### oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions vscode history-substring-search zsh-syntax-highlighting fzf-tab)
source $ZSH/oh-my-zsh.sh


### start of my config 

## externals
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
alias dotfiles='$(which git) --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cdto='cd; cd $(fd --type d --hidden . Desktop Documents .config workspace | fzf)'

## prompt
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
