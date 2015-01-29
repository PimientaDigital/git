# == Class git::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class git::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'git'
    }
    'RedHat', 'Amazon': {
      $package_name = 'git'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
