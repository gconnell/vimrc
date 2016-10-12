export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GOBIN="$GOROOT/bin"
export PATH="$GOBIN:$PATH:~/scripts:~/devtools/bin"
export EDITOR="vim"
export GOROOT_BOOTSTRAP=/Users/gconnell/GoSrc1.4/

alias vim='vim -o'

function _cool_hist {
  echo "--- Exit code $? @ $(date) ---"
  history 1 >> ~/real_history
  history -a
}
export -f _cool_hist
export PROMPT_COMMAND=_cool_hist

(cd ~/vimrc && git pull >/dev/null 2>/dev/null) &

if [ ! -f ~/scripts/aliases ]; then
  mkdir -p ~/scripts
  ln -s ~/vimrc/aliases ~/scripts/aliases
fi
if [ ! -f ~/.bashrc ]; then
  ln -s ~/vimrc/bashrc ~/.bashrc
fi
if [ ! -f ~/.vimrc ]; then
  ln -s ~/vimrc/vimrc ~/.vimrc
fi

source ~/scripts/aliases
