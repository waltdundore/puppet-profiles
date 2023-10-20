class profiles::docker {
#uses puppet-docker module

  # include the docker class
  include ::docker
  

  class {'docker::compose':
    ensure  => present,
  }

  docker_compose { 'test':
    compose_files => ['/vagrant/files/docker-compose.yml'],
    ensure        => present,
  }

}
