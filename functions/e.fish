function e 
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      set FILE "$(fd . "$argv[1]" --hidden --type=file --color=always | fzf --ansi)"
    else
      set FILE "$argv[1]"
    end
  else
    set FILE "$(fd --hidden --type=file --color=always | fzf --ansi)"
  end
  if test $FILE != ''
    $EDITOR "$FILE"
  end
end
