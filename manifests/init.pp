# == Class: lldp
#
# provides LLDP
#
# === Parameters
#
# Document parameters here.
#
# [*ensure*]
#   'present' or 'absent'
#
# === Examples
#
#  # Uninstall lldp
#  class { 'lldp':
#    ensure => 'absent'
#  }
#
# === Authors
#
# Alexander Weidinger <puppetforge@sz9i.net>
#
# === Copyright
#
# Copyright 2016 Alexander Weidinger
#
class lldp (
  $ensure = 'present'
) {

  if $ensure == 'present' {
    anchor { 'lldp::begin': } ->
    class { 'lldp::install': } ->
    class { 'lldp::service': } ->
    anchor { 'lldp::end': }
  } else {
    anchor { 'lldp::begin': } ->
    class { 'lldp::service': } ->
    class { 'lldp::install': } ->
    anchor { 'lldp::end': }
  }
}
