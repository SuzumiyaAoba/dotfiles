## emacs
if [[ $(command -v emacs) ]]; then
    alias emacs='emacsclient -nw -c -a ""'
    alias gemacs='emacsclient -c -a "" &'
    alias killemacs='emacsclient -e "(kill-emacs)"'
    alias e='emacs'
    alias ge='gemacs'
    export EDITOR='emacsclient -nw -c -a ""'
fi
