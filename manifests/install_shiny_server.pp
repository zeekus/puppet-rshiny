# @summary installing RPM for shiny server 
#
# @example include cis_rshiny::install_shiny_server
class cis_rshiny::install_shiny_server {

 include cis_rshiny::params

  exec { 'yum_install':  
	  command => 'yum -y localinstall --nogpgcheck /var/tmp/shiny-server-{$version}-x86_64.rpm',
	  path => '/usr/local/bin:/bin/',
          require => Class['cis_rshiny::shiny_deps'],
   }

}

