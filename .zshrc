if [[ ! -n $TMUX && $- == *l* ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi
  create_new_session="Create New Session"
  ID="$ID\n${create_new_session}:"
  ID="`echo $ID | $PERCOL | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  elif [[ -n "$ID" ]]; then
    tmux attach-session -t "$ID"
  else
    :  # Start terminal normally
  fi
fi

export TERM=xterm-256color

typeset -U path PATH

path=(
  # homebrew
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  # unix
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  # macOS
  /Library/Apple/usr/bin(N-/)
  # Ubuntu
  /snap/bin
  # local
  $HOME/.local/bin
  # rbenv
  $HOME/.rbenv/bin(N-/)
  $HOME/.rbenv/shims(N-/)
)

### Load basic config
source "$HOME/.zsh/basic.zsh"

### Load key bindings
source "$HOME/.zsh/keybindings.zsh"

### Load plugins
source "$HOME/.zsh/plugins.zsh"

### Load alias
source "$HOME/.zsh/alias.zsh"

bin=(
    "starship"
    "fzf"
    "cargo"
    "opam"
    "fnm"
    "ghcup"
    "sdkman"
    "volta"
    "rbenv"
    "go"
    "nvim"
    "emacs"
    "kitty"
)

for filename in $bin; do
    local FILE_PATH="$HOME/.zsh/config/$filename.zsh"
    if [ -e $FILE_PATH ]; then
	source $FILE_PATH
    fi
done
