export GOROOT="$HOME/GoSrc"
export GOPATH="$HOME/go"
export GOBIN="$GOROOT/bin"
export PATH="$GOBIN:$PATH"
export GOOS="darwin"
export GOARCH="amd64"
export EDITOR="vim"

alias vim='vim -o'

function _cool_hist {
  echo "--- Exit code $? @ $(date) ---"
  history 1 >> ~/real_history
  history -a
}
export -f _cool_hist
export PROMPT_COMMAND=_cool_hist

cd ~/vimrc
git pull

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
