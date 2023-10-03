if not set -q TMUX; and test "$DISPLAY" = ":0"
    set -g TMUX tmux new-session -d -s tmux
    eval $TMUX
    tmux attach-session -d -t tmux
end
