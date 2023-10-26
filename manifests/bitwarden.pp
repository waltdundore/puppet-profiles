class profiles::bitwarden {

# https://bitwarden.com/help/install-on-premise-linux/

  # include the docker class
  include ::docker
 
  user { 'bitwarden': 
  ensure   => present,
  password => '$1$DyxbU86e$9KTF/BbggplmBJlLE6Bu/1',
  }

  group { 'docker group':
    name                 => 'docker',
    ensure               => present,
    members              => ['bitwarden'],
  }

  # a fuller example, including permissions and ownership
  file { '/opt/bitwarden':
    ensure => 'directory',
    owner  => 'bitwarden',
    group  => 'bitwarden',
    mode   => '0700',
  }


  file { '/opt/bitwarden/install.sh':
    ensure => 'present',
    owner  => 'bitwarden',
    group  => 'bitwarden',
    mode   => '0700',
    source => 'https://func.bitwarden.com/api/dl/?app=self-host&platform=linux'.
  }


}