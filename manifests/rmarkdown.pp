# @summary Installs rmarkdown
#
#
# @example include cis_rshiny::rmarkdown
class cis_rshiny::rmarkdown {


    exec { 'install_rmarkdown':
          command => "su - -c \"R -e \"install.packages(\'rmarkdown\', repos=\'http://cran.rstudio.com/\')\"\" ",
          path => '/usr/local/bin:/bin/',
          require => Class['cis_rshiny::shiny_deps'],
   }



}
