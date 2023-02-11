function mount-mtp --wraps=jmtpfs\ \~/.mtp\ \&\&\ echo\ \'MTP\ device\ mounted\ to\ the\ \~/.mtp\' --description alias\ mount-mtp=jmtpfs\ \~/.mtp\ \&\&\ echo\ \'MTP\ device\ mounted\ to\ the\ \~/.mtp\'
  jmtpfs ~/.mtp && echo 'MTP device mounted to the ~/.mtp' $argv; 
end
