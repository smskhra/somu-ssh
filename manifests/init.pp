class ssh(
  $permit_root_login = $::ssh::params::permit_root_login,
  $package_name 	     = $::ssh::params::package_name,
  $service_name              = $::ssh::params::service_name,

) inherits ssh::params{
  
  class { 'ssh::install': } ->
  class { 'ssh::config': } ->
  class { 'ssh::service': }
}
