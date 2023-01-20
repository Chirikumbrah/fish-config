function xinitconf --wraps='hx ~/.xinitrc' --description 'alias xinitconf=hx ~/.xinitrc'
  $EDITOR $HOME/.xinitrc $argv; 
end
