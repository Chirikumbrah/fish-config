function unmount-mtp --wraps='fusermount -u ~/Devices/mtp' --description 'alias unmount-mtp=fusermount -u ~/Devices/mtp'
  fusermount -u ~/Devices/mtp $argv; 
end
