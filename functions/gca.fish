function gca --wraps='git commit -v -a --amend' --description 'alias gca=git commit -v -a --amend'
  git commit -v --amend $argv; 
end
