if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Make su launch fish
function su
    command su --shell=/usr/bin/fish $argv
end

# Disable welcome message
set -U fish_greeting
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL $LANG
# set -gx SCRIPTS "$HOME/.scripts"
set -gx EDITOR hx
set -gx GIT_EDITOR $EDITOR
set -gx VISUAL $EDITOR
set -U SHELL /bin/fish

set --universal fish_user_paths $fish_user_paths "/opt/homebrew/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"

zoxide init fish | source
starship init fish | source
