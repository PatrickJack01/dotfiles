# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

# Cursor movement keys (kitty)
# Ctrl+Left / Ctrl+Right: jump word-wise
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
# Home / End (Fn+Left / Fn+Right on the laptop): start / end of line
bindkey '^[[H'  beginning-of-line
bindkey '^[OH'  beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F'  end-of-line
bindkey '^[OF'  end-of-line
bindkey '^[[4~' end-of-line
# Delete: delete the character under the cursor
bindkey '^[[3~' delete-char
# The following lines were added by compinstall
zstyle :compinstall filename '/home/patrick/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# show path
export PROMPT='%~ $ '

# for japanese keyboard
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/patrick/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/patrick/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/patrick/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/patrick/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Added by cua-driver-rs installer — see https://github.com/trycua/cua
export PATH="/home/patrick/.local/bin:$PATH"
