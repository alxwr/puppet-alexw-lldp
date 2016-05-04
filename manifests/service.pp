#
class lldp::service inherits lldp {

  if $lldp::ensure == 'present' {
    service { 'lldpd':
      ensure => 'running',
      enable => true,
      hasstatus => true,
      hasrestart => true,
    }
  } else {
    exec { 'pkill lldpd':
      onlyif => 'pgrep lldpd'
    }
  }
}
