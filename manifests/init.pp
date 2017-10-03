# using params model
#class ssh(
#  $permit_root_login = $::ssh::params::permit_root_login,
#  $package_name 	     = $::ssh::params::package_name,
#  $service_name              = $::ssh::params::service_name,
#) inherits ssh::params{
#  class { 'ssh::install': } ->
#  class { 'ssh::config': } ->
#  class { 'ssh::service': }
#}

# using function model (params method is depricated)

class ssh(
  String $permit_root_login = 'yes',
  String $package_name,
  String $service_name,
  String $ensure,
  String $service_ensure,
  Boolean $service_enable,
  

) inherits ssh::params {
  class { 'ssh::install': } ->
  class { 'ssh::config': } ->
  class { 'ssh::service': }
}
