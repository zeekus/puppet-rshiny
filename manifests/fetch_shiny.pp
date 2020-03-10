# @summary Gets Shiny Server RPM
#
# This class should fetch the shiny-server application 
#
#   include cis_rshiny::fetch_shiny
class cis_rshiny::fetch_shiny {

  inlcude ::wget
  include cis_rshiny::params

  wget::fetch {'https://download3.rstudio.org/centos6.3/x86_64/shiny-server-{$version}-x86_64.rpm' :
      destination => '/var/tmp/shiny-server-{$version}-x86_64.rpm', 
      timeout     => 15,
      verbose     => true,
   }

}
