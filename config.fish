if status is-interactive
    # Commands to run in interactive sessions can go here
end

# if test -z $DISPLAY; and test (tty) = "/dev/tty1"
#     Hyprland
# end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# Disable welcome message
set -U fish_greeting
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL $LANG
set -gx BROWSER 'chromium'
set -gx IMAGE_VIEWER 'sxiv'
set -gx VIDEO_PLAYER 'ffplay'
set -gx CM_LAUNCHER 'dmenu'
set -gx SCRIPTS "$HOME/.scripts"
set -gx EDITOR 'hx'
set -gx VISUAL $EDITOR
set -U SHELL '/bin/fish'

set --universal fish_user_paths $fish_user_paths "$HOME/.local/bin"

starship init fish | source
