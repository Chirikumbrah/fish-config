if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start Wayland at login
if test -z $DISPLAY; and test (tty) = /dev/tty1
    ~/.config/hypr/scripts/Hyprland.sh 2&>/tmp/Hyprland-startup.log
end

# Start X at login
# if status is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#         exec startx -- -keeptty 2&> /tmp/startx.log
#     end
# end

# Make su launch fish
function su
    command su --shell=/usr/bin/fish $argv
end

# Disable welcome message
set -U fish_greeting
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL $LANG
set -gx BROWSER chromium
set -gx IMAGE_VIEWER qimgv
set -gx PDF_VIEWER qpdfview
set -gx VIDEO_PLAYER mpv
set -gx SCRIPTS "$HOME/.scripts"
set -gx EDITOR helix
set -gx GIT_EDITOR $EDITOR
set -gx VISUAL $EDITOR
set -U SHELL /bin/fish

set --universal fish_user_paths $fish_user_paths "$HOME/.config/emacs/bin" "$HOME/go/bin" "$HOME/.local/bin" "$HOME/.nix-profile/bin"

zoxide init fish | source
starship init fish | source
