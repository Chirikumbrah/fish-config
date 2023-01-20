function packages --wraps='xbps-query -l' --description 'alias packages=xbps-query -l'
  xbps-query -l $argv; 
end
