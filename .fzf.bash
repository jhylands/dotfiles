# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jhylands/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jhylands/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jhylands/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jhylands/.fzf/shell/key-bindings.bash"
