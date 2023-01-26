function i --wraps=sxiv --description 'alias i=$IMAGE_VIEWER'
  $IMAGE_VIEWER $argv &> /dev/null &  disown
end
