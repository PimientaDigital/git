# == Class: git
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class git (
  $package_name = $::git::params::package_name
) inherits ::git::params {

  # validate parameters here

  class { '::git::install': } ->
    Class['::git']
}
