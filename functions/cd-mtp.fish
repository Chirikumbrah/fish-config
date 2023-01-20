function cd-mtp --wraps='jmtpfs ~/Devices/mtp && cd ~/Devices/mtp' --description 'alias cd-mtp=jmtpfs ~/Devices/mtp && cd ~/Devices/mtp'
  jmtpfs ~/Devices/mtp && cd ~/Devices/mtp $argv; 
end
