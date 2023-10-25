class profiles::docker_netbox {

  include ::profiles::docker
  
  #clone netbox
  class code {
    vcsrepo { '/root/netbox': 
      ensure   => present,
      provider => git,
      source   => {
        github   => 'https://github.com/netbox-community/netbox-docker.git',
      }
      user     => 'root',
      revision => 'production',
    } 

  } 

}
