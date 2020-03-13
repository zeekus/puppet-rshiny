# Configures rshiny
#
# @example
#   include cis_rshiny::config

# == Class: cis_rshiny::config
#
# Manges the configuration file of shiny
#
# === Parameters
#
# @param port       [Integer] Public port shiny is listening on
#
# @site_directory   [String]  Host the directory of Shiny Apps stored in this directory
#
# @log_directory    [String]  Log all Shiny output to files in this directory
#
# @directory_index  [String] When a user visits the base URL rather than a particular application,
#                            an index of the applications available in this directory will be shown.
#
class cis_rshiny::config {
  include cis_rshiny::params
  concat::fragment{ 'general shiny server config':
  target  => '/etc/shiny-server/shiny-server.conf',
  #content => template('${module_name}/shiny-server-conf.erb'),
  content => template ('/etc/puppetlabs/code/environments/production/modules/cis_rshiny/files/shiny-server-conf.erb'),
  }
}

