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
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"
export EZA_COLORS="reset:di=34:ex=32:ln=36:or=95:su=95:sf=95:sc=92:cm=92:bu=91:*.zip=35:*.tar=35:*.gz=35:*.7z=35:*.rar=35:*.jpg=35:*.jpeg=35:*.png=35:*.gif=35:*.svg=35:*.mp4=95:*.mkv=95:*.mov=95:*.mp3=94:*.flac=94:*.wav=94:*.pdf=32:*.doc=32:*.docx=32:*.md=32:*.txt=32:*.py=92:*.js=92:*.ts=92:*.rs=92:*.go=92:*.c=92:*.cpp=92:*.json=91:*.yml=91:*.yaml=91:*.toml=91:da=38;5;252:uu=38;5;254:gu=38;5;252:un=0:gn=0:uR=38;5;250:gR=38;5;250:sn=38;5;254:sb=38;5;252:ur=38;5;250:uw=38;5;250:ux=38;5;250:ue=38;5;250:gr=38;5;250:gw=38;5;250:gx=38;5;250:tr=38;5;250:tw=38;5;250:tx=38;5;250:lc=38;5;252:lm=38;5;252:in=38;5;245:bl=38;5;245:hd=38;5;252:xx=38;5;240"

## key bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

## aliases
alias cat='bat --paging=never'
# alias eza='eza --icons --color never'
alias eza='eza --icons'
alias ls='eza'
alias ll='ls -l --group-directories-first --sort=created -r'
alias la='ls -la'
alias fd='fd -I'
alias dots='$(which git) --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cdto='cd; cd $(fd --type d --hidden . Desktop Documents .config workspace | fzf)'
alias fm=". ranger"
# alias fm="yazi"
alias aider="aider --model groq/deepseek-r1-distill-qwen-32b"
alias cling="cling -l ~/workspace/tmp/cling.cpp"
alias python="python3"
alias pip="pip3"

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
