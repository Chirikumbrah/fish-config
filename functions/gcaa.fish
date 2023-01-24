function gcaa --wraps='git add . && git commit -v -a --amend' --description 'alias gcaa=git add . && git commit -v -a --amend'
  git add . && git commit -v -a --amend $argv; 
end
