class profiles::bitwarden {


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


}
