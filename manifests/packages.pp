# install any yum repo required for all servers
class profiles::packages {

  include ::packages

  package { 'git':
    ensure => installed,
  }

  package { 'htop':
    ensure => installed,
  }

  package { 'iperf3':
    ensure => installed,
  }

  package { 'nmap':
    ensure => installed,
  }

  package { 'sshuttle':
    ensure => installed,
  }

  package { 'tmux':
    ensure => installed,
  }

  package { 'cockpit':
    ensure => installed,
  }

  package { 'cockpit-machines':
    ensure => installed,
  }

  package { 'cockpit-selinux':
    ensure => installed,
  }

  service { 'cockpit':
    ensure => running, 
  }

}

