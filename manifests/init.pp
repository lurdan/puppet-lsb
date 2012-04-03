class lsb {
  package {
    'lsb':
      name => $::operatingsystem ? {
        /(?i-mx:debian|ubuntu)/ => 'lsb-core',
        /(?i-mx:redhat|centos)/ => 'redhat-lsb',
      };
  }
}
