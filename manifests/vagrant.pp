class profiles::vagrant {


    # uses $plugindir from ::vagrant::client
    sudo::conf { 'vagrant':
        content  => template('profiles/etc/sudoers.d/vagrant.erb'),
        priority => 10,
    }



    #firewalld_rich_rule { "allow nrpe traffic from ${nagios_server}":
    #    ensure  => present,
    #    service => 'nrpe',
    #    zone    => public,
    #    source  => $nagios_server,
    #    action  => 'accept',
    #}

}
