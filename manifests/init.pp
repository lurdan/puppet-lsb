class lsb {
  package {
    'lsb':
      name => $::osfamily ? {
        'Debian' => 'lsb-core',
        'RedHat' => 'redhat-lsb-core',
      };
  }
}

define lsb::config::profile (
  $content,
  $order = '50'
  ) {
  file { "/etc/profile.d/${order}-${name}":
    content => $content,
  }

}
