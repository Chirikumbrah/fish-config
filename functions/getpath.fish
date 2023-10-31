function getpath
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      set FILE "$(fd . "$argv[1]" --hidden -a -tf -td --color=always | fzf --ansi --preview '~/.config/fish/scripts/fzf-preview.sh {}')"
    else
      set FILE "$(pwd)/$argv[1]"
    end
  else
    set FILE "$(fd --hidden -a -tf -td --color=always | fzf --ansi --preview '~/.config/fish/scripts/fzf-preview.sh {}')"
  end
  if test $FILE != ''
    echo $FILE | tr -d '\n' | pbcopy
    echo $FILE
  end
end
