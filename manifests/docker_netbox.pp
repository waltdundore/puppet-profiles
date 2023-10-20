class profiles::docker_netbox {

  include ::profiles::docker
  
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
