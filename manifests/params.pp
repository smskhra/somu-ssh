class ssh::params{
#  unless $facts['os']['family'] == 'Debian' {
#    $package_name ='openssh-server'
#    $service_name = 'sshd'	
#}
#}
#  if $facts['os']['family'] == 'Debian'{
#	$package_name ='openssh-server'
#	$service_name = 'ssh'
 #    }
#     elsif $facts['os']['family'] == 'RedHat'{
#	$package_name ='openssh-server' 
#        $service_name = 'sshd'
#}
#else { 
#   	fail("${facts['operatingsystem']} is not supported!")
#}
#}  
$permit_root_login = yes
case $::osfamily {
    'Debian': {
      $package_name ='openssh-server'
      $service_name = 'ssh'
   }
    'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
  }
    default: {
      fail("${facts['operatingsystem']} is not supported!")
  }
 }
}
