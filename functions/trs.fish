function trs
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      fd . "$argv[1]" --hidden --type=file --color=always | fzf --ansi -m | xargs -I {} trash {}
    else
      trash $argv
    end
  else
    fd --hidden --type=file --color=always | fzf --ansi -m | xargs -I {} trash {}
  end
end

