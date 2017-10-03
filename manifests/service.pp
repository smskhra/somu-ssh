class ssh::service{
  service { 'ssh-service':
   ensure     => running,
   name       => $::ssh::params::service_name,
   enable     => true,
   hasstatus  => true,
   hasrestart => true,
 }
}
