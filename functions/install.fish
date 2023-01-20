function install --wraps='sudo xbps-install -Suv' --description 'alias install=sudo xbps-install -Suv'
  sudo xbps-install -Suv $argv; 
end
