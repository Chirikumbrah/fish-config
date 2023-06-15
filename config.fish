if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start Wayland at login
# if test -z $DISPLAY; and test (tty) = "/dev/tty1"
#     ~/.scripts/system/wayland/Hyprland.sh
# end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty 2&> /tmp/startx.log
    end
end

# Make su launch fish
function su
   command su --shell=/usr/bin/fish $argv
end

# Disable welcome message
set -U fish_greeting
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL $LANG
set -gx BROWSER 'chromium'
set -gx IMAGE_VIEWER 'qimgv'
set -gx PDF_VIEWER 'zathura'
set -gx VIDEO_PLAYER 'mpv'
set -gx CM_LAUNCHER 'dmenu'
set -gx SCRIPTS "$HOME/.scripts"
set -gx YRDATA "$HOME/.yrdata"
set -gx EDITOR 'hx'
set -gx VISUAL $EDITOR
set -U SHELL '/bin/fish'

set --universal fish_user_paths $fish_user_paths "$HOME/.config/emacs/bin" "$HOME/.local/bin" "$HOME/.nix-profile/bin"

zoxide init fish | source
starship init fish | source
