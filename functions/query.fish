function query --wraps='xbps-query -Rs' --description 'alias query=xbps-query -Rs'
  xbps-query -Rs $argv; 
end
