export GOROOT="$HOME/GoSrc"
export GOPATH="$HOME/go"
export GOBIN="$GOROOT/bin"
export PATH="$GOBIN:$PATH"

alias vim='vim -o'

function _cool_hist {
  echo "--- Exit code $? @ $(date) ---"
  history 1 >> /home/gconnell/real_history
  history -a
}
export -f _cool_hist
export PROMPT_COMMAND=_cool_hist

source ~/scripts/aliases
