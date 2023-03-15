function clear-screenshots --wraps='trash $YRDATA/images/screenshots/*' --description 'alias clear-screenshots=trash ~/yrData/images/screenshots/*'
  trash $YRDATA/images/screenshots/* $argv; 
end
