class profiles::docker_netbox {

  include ::profiles::docker
  include ::profiles::github  

  #clone netbox
  vcsrepo {'/root/netbox':
    ensure   => 'latest',
    path     => "/root/netbox",
    provider => 'git',
    source   => 'ssh://git@github.com:22/waltdundore/netbox-docker.git',
    identity => "/root/.ssh/github",
    revision => 'production',
    user     => 'root',
    owner    => 'root',
    group    => 'root',
  }

}
