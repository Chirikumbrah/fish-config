function i --wraps=sxiv --description 'alias i=sxiv'
  $IMAGE_VIEWER $argv &> /dev/null &  disown
end
