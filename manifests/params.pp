# @summary params settings 
#
#   include cis_rshiny::params
class cis_rshiny::params {

  case $::osfamily {
        'RedHat': {
            $apache_package_name = 'http'
            $apache_config_file  = '/etc/httpd/conf.d/10_default_proxy_http.conf'
            $apache_tempate_file = ''
        }
        'Debian': {
            $apache_package_name = 'apache2'
            $apache_config_file  = '/etc/apache2/apache2.conf'
            $apache_tempate_file = ''
 	}

    }

  $port            = 3838
  $site_directory  = '/srv/shiny-server'
  $log_directory   = '/var/log/shiny-server'
  $directory_index = 'on'
  $manage_repo     = true
  $version         = '1.5.12.933'
}
