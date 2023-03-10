function rm
  if count $argv > /dev/null
    if test "$argv[1]" = "$HOME/" || test "$argv[1]" = "$HOME" || test "$argv[1]" = "/"
      fd . "$argv[1]" --hidden -a -td -tf --color=always | fzf --ansi -m --preview '~/.scripts/system/fzf-preview.sh {}' | xargs -I {} rm -fr {}
    else
      command rm -rf $argv
    end
  else
    fd --hidden -a -td -tf --color=always | fzf --ansi -m --preview '~/.scripts/system/fzf-preview.sh {}' | xargs -I {} rm -fr {}
  end
end

