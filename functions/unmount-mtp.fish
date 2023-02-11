function unmount-mtp --wraps='fusermount -u ~/.mtp' --description 'alias unmount-mtp=fusermount -u ~/.mtp'
  fusermount -u ~/.mtp $argv; 
end
