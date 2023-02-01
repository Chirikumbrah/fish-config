function rm
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      fd . "$argv[1]" --hidden -tf -td --color=always | fzf --ansi -m | xargs -I {} rm -rf {}
    else
      rm -rf $argv
    end
  else
    fd --hidden -tf -td --color=always | fzf --ansi -m | xargs -I {} rm -rf {}
  end
end

