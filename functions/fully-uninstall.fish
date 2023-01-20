function fully-uninstall --wraps='sudo xbps-remove -FR' --description 'alias fully-uninstall=sudo xbps-remove -FR'
  sudo xbps-remove -FR $argv; 
end
