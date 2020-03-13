# @get all the depenancies for shiny
#
#
# @example include cis_rshiny::shiny_deps
class cis_rshiny::shiny_deps {

  #include cis_rshiny::params

  # Red Hat Packages names are unquoted
  #package { 'epel-release': 	     ensure => 'present' }
  #package { 'httpd':   		     ensure => 'present' }
  #package { 'mod_proxy_html':        ensure => 'present' }
  #package { 'libxml2-devel':   	     ensure => 'present' }
  #package { 'R': 		     ensure => 'present' } 


  # you can use a global package parameter
  #Package { ensure => 'present' }

  #package { 'epel-release': }
  #package { 'httpd': }
  #package { 'mod_proxy_html':   }
  #package { 'libxml2-devel':   }
  #package { 'R':   }

  # you can specify the packages in an array ...
  $enhancers = [ 'epel-release', 'httpd', 'mod_proxy_html', 'libxml2-devel', 'R' ]
  package { $enhancers: ensure => 'present' }


  # ... and even combine it a global package parameter
  #Package { ensure => 'present' }
  #$enhancers = [ 'epel-release', 'httpd', 'mod_proxy_html', 'libxml2-devel' ,'R' ]
  #package { $enhancers: }

}

