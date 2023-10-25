class profiles::docker_netbox {

  include ::profiles::docker
  
  #clone netbox
  class code {
    vcsrepo { '/root/netbox':
      ensure     => present,
      provider   => git,
      source     => 'git@github.com:waltdundore/netbox-docker.git',
      identity   => '/certs/github',
    }

  } 

}
