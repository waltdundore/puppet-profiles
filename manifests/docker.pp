class profiles::docker {
#uses puppet-docker module

  # include the docker class
  include ::docker
 
  class {'docker::compose':
    ensure  => present,
  }
 
  group { 'docker group':
    name                 => 'docker', 
    ensure               => present,
  }

}
