export XDG_CONFIG_HOME=$HOME/.config

export PATH="$PATH:$HOME/.local/bin"

# Keybinds
function _run-tmux-sessionizer() {
    zle push-input
    BUFFER="tmux-sessionizer"
    zle accept-line
}

zle -N _run-tmux-sessionizer

bindkey '^f' _run-tmux-sessionizer
