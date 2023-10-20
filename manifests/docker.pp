class profiles::docker {
#uses puppet-docker module

  # include the docker class
  include ::docker
 
  class {'docker::compose':
    ensure  => present,
  }

  #clone netbox
  class code {

    vcsrepo { '/root/netbox': 
      ensure   => present,
      provider => git,
      source   => 'https://github.com/netbox-community/netbox-docker.git',
      user     => 'root',
    } 

  } 

}
