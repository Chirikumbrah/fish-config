function getpath
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      set FILE "$(fd . "$argv[1]" --hidden -tf -td --color=always | fzf --ansi)"
    else
      set FILE "$argv[1]"
    end
  else
    set FILE "$(fd --hidden -tf -td --color=always | fzf --ansi)"
  end
  if test $FILE != ''
    echo $FILE | tr -d '\n' | xclip -selection c
  end
end
