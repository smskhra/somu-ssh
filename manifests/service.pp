#using params method
#class ssh::service{
#  service { 'ssh-service':
#   ensure     => running,
#   name       => $::ssh::params::service_name,
#   enable     => true,
#   hasstatus  => true,
#   hasrestart => true,
# }
#}

#using function method
class ssh::service(
  String $service_ensure  = $::ssh::service_ensure,
  Boolean $service_enable = $::ssh::service_enable,
  String $service_name    = $::ssh::service_name,

){
  service { 'ssh-service':
   ensure     => $service_ensure,
   name       => $service_name,
   enable     => $service_enable,
   hasstatus  => true,
   hasrestart => true,
 }
}
