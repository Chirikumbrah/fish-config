function getpath --wraps=fd\ -p\ --type=file\ --hidden\ --color=always\ \|\ fzf\ --ansi\ \|\ tr\ -d\ \'\\n\'\ \|\ xclip\ -selection\ c --description alias\ getpath=fd\ -p\ --type=file\ --hidden\ --color=always\ \|\ fzf\ --ansi\ \|\ tr\ -d\ \'\\n\'\ \|\ xclip\ -selection\ c
  fd -p --type=file --hidden --color=always | fzf --ansi | tr -d '\n' | xclip -selection c $argv; 
end
