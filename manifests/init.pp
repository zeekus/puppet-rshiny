#
# == Class: cis_rshiny
#
# This is a dummy class. The actual work is done in the subclasses.
#
# == Parameters
#
# [*manage*]
#   Manage cis_rshiny using Puppet. Valid values are true (default) and false.
#
# == Authors
#
# Theodore Knab
#
# == License
#
# Apache2 license. See file LICENSE for details.
#
class cis_rshiny
(
    $manage = true
)
{

validate_bool($manage)

if $manage {
    #setup apache or Ngix with proxy settings
    #TODO

    #load shiny Depenancies from repos
    include ::cis_rshiny::shiny_deps

    #load fetch_shiny
    include ::cis_rshiny::fetch_shiny

    #install the shiny packages
    include ::cis_rshiny::install_shiny_server

    #install rmarkdown
    include ::cis_rshiny::rmarkdown

    #setup configuration for shiny
    include ::cis_rshiny::config
    }
}
