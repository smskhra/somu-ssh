class ssh::install {
  package { 'ssh-package':
    ensure  => 'present',
    name    => $::ssh::params::package_name,
 }
}
