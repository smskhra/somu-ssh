# using params method
#class ssh::install {
#  package { 'ssh-package':
#    ensure  => 'present',
#    name    => $::ssh::params::package_name,
# }
#}

# using function method
class ssh::install (
  String $package_name = $::ssh::package_name,
  String $ensure       = $::ssh::ensure,

){
  package { 'ssh-package':
    ensure  => $ensure,
    name    => $package_name,
 }
}
