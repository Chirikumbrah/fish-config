function gco --wraps='git checkout -b' --description 'alias gco=git checkout -b'
  git checkout -b $argv; 
end
