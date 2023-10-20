class profiles::docker {
#uses puppet-docker module

  # include the docker class
  include ::docker

  # fetch the docker image
  docker::image { 'netboxcommunity:netbox':
    ensure    => 'present',
    image_tag => 'netbox-community',
    require   => Class['docker'],
  }

  docker::run { 'netbox':
    image   => 'netboxcommunity:netbox',
    ports   => ['8000:80'],
    require => Class['docker'],
  }

}
