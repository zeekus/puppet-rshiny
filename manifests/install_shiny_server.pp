# @summary installing RPM for shiny server 
#
# @example include cis_rshiny::install_shiny_server
class cis_rshiny::install_shiny_server {

 include cis_rshiny::params

 class yum_install_shiny-server {
    exec { 'yum_install':  
	  command => "sudo yum install --nogpgcheck /var/tmp/shiny-server-$version-x86_64.rpm",
	  path => '/usr/local/bin:/bin/',
          require => Class['cis_rshiny::shiny_deps'],
   }
 }



}

