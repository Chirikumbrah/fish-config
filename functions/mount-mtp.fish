function mount-mtp --wraps=jmtpfs\ \~/Devices/mtp\ \&\&\ echo\ \'MTP\ device\ mounted\ to\ the\ \~/Devices/mtp\' --description alias\ mount-mtp=jmtpfs\ \~/Devices/mtp\ \&\&\ echo\ \'MTP\ device\ mounted\ to\ the\ \~/Devices/mtp\'
  jmtpfs ~/Devices/mtp && echo 'MTP device mounted to the ~/Devices/mtp' $argv; 
end
