function o
    if count $argv >/dev/null
        if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = /
            set FILE "$(fd . "$argv[1]" \
            --hidden \
            -I \
            --exclude "*venv" \
            --exclude ".git" \
            -tf --color=always | \
            fzf --ansi --preview '~/.config/fish/scripts/fzf-preview.sh {}')"
        else
            set FILE "$argv"
        end
    else
        set FILE "$(fd \
        --hidden \
        -I \
        --exclude "*venv" \
         --exclude ".git" \
        -tf --color=always | \
        fzf --ansi --preview '~/.config/fish/scripts/fzf-preview.sh {}')"
    end
    if test $FILE != ''
        if test "$(echo $FILE | command grep -iE '\.(jpg|jpe?g|png|gif|svg|webp|tiff|heif|heic|avif|ico|bmp)$')"
            set APP $IMAGE_VIEWER
        else
            set APP xdg-open
        end
    end
    echo "$FILE" | sed -e "s/ /\\\ /g" | nohup xargs $APP &>/dev/null & disown
end
