class profiles::docker {
#uses puppet-docker module

  # Most Vagrant boxes use 'vagrant' rather than
  # 'ubuntu' as the default username, but the Xenial
  # Xerus image uses the latter.
  class { 'docker':
    package_name => 'docker.io',
    docker_users => ['vagrant'],
  }

  # Install an Apache2 image based on Alpine Linux.
  # Use port forwarding to map port 8080 on the
  # Docker host to port 80 inside the container.
  docker::run { 'netbox':
    image   => 'netboxcommunity:netbox',
    ports   => ['8000:80'],
    require => Class['docker'],
  }

}
