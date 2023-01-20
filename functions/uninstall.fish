function uninstall --wraps='sudo xbps-remove' --description 'alias uninstall=sudo xbps-remove'
  sudo xbps-remove $argv; 
end
