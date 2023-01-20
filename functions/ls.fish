function ls --wraps='exa --git -alb --icons --classify' --description 'alias ls=exa --git -alb --icons --classify'
  exa --git -alb --icons --classify $argv; 
end
