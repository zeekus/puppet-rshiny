# @summary Gets Shiny Server RPM
#
# This class should fetch the shiny-server application 
#
#   include cis_rshiny::fetch_shiny
class cis_rshiny::fetch_shiny {

  include archive
  include cis_rshiny::params

  archive { '/var/tmp/shiny-server-{$version}-x86_64.rpm':
	ensure => present,
	source => 'https://download3.rstudio.org/centos6.3/x86_64/shiny-server-{$version}-x86_64.rpm' ,
	user   => 0,
	group  => 0, 
   }
}
