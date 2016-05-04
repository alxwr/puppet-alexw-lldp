#
class lldp::install inherits lldp {
  package { 'lldpd':
    ensure => $lldp::ensure
  }
}
