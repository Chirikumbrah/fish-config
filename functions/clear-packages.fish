function clear-packages --wraps='sudo rm -fr /var/cache/xbps/*' --description 'alias clear-packages=sudo rm -fr /var/cache/xbps/*'
  sudo rm -fr "/var/cache/xbps/*" $argv; 
end
