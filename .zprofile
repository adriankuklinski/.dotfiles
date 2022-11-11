export XDG_CONFIG_HOME=$HOME/.config

export PATH="$PATH:$HOME/.local/bin"

# Keybinds
function _run-tmux-sessionizer() {
    zle push-input
    BUFFER="tmux-sessionizer"
    zle accept-line
}


function _run-cht-sh() {
    zle push-input
    BUFFER="cht.sh"
    zle accept-line
}

zle -N _run-tmux-sessionizer
zle -N _run-cht-sh

bindkey '^f' _run-tmux-sessionizer
bindkey '^k' _run-cht-sh
