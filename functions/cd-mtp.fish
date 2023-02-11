function cd-mtp --wraps='jmtpfs ~/.mtp && cd ~/.mtp' --description 'alias cd-mtp=jmtpfs ~/.mtp && cd ~/.mtp'
  jmtpfs ~/.mtp && cd ~/.mtp $argv; 
end
