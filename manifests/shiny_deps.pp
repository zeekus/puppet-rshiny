# @get all the depenancies for shiny
#
#
# @example include cis_rshiny::shiny_deps
class cis_rshiny::shiny_deps {

  include cis_rshiny::params

  # Red Hat Packages names are unquoted
  package { 'epel-release': 	     ensure => 'installed' }
  package { $apache_package_name :   ensure => 'installed' }
  package { 'mod_proxy_html':        ensure => 'installed' }
  package { 'libxml2-devel':   	     ensure => 'installed' }
  package { 'R': 		     ensure => 'installed' } 


  # you can use a global package parameter
  Package { ensure => 'installed' }

  package { 'epel-release': }
  package { $apache_package_name: }
  package { 'mod_proxy_html':   }
  package { 'libxml2-devel':   }
  package { 'R':   }

  # you can specify the packages in an array ...
  $enhancers = [ 'epel-release', $apache_package_name, 'mod_proxy_html', 'libxml2-devel', 'R' ]
  package { $enhancers: ensure => 'installed' }


  # ... and even combine it a global package parameter
  Package { ensure => 'installed' }

  $enhancers = [ 'epel-release', $apache_package_name, 'mod_proxy_html', 'libxml2-devel' ,'R' ]

  package { $enhancers: }

}

