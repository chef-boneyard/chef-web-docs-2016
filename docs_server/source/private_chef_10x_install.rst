=====================================================
Install Private Chef 1.x
=====================================================

.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install.rst

Prerequisites
=====================================================
The following prerequisites apply to every installation of |chef private|.

Download |chef private|
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_download.rst

Supported Platforms
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_supported.rst

Configuring the Platform
-----------------------------------------------------
Before installing |chef private|, ensure that each system has the following installed and configured:

Hostnames, FQDNs
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_host_name_fqdn.rst

NTP
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_ntp.rst

Mail Relay
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_mail_relay.rst

|cron|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_cron.rst

|git|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_git.rst

|redhat| and |centos|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_redhat_centosrst.rst

|apache qpid|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_apache_qpid.rst

Required Users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_prerequisites_os_required_users.rst

Standalone
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone.rst

System Requirements
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_requirements_system.rst

Firewall Requirements
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_requirements_firewall.rst

Add Package to Server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_put_package_on_server.rst

Install the Package
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_install_package.rst

Configure
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_configure.rst

Success!
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_standalone_success.rst

Tiered
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered.rst

System Requirements
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_system_requirements.rst

Network Requirements
-----------------------------------------------------
|chef private| has the following network requirements for a tiered installation:

Load Balancing
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_network_load_balance.rst

Firewalls
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_network_firewalls.rst

private-chef.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb.rst

Configure topology
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb_set_topology.rst

Back-end entries
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb_add_backend.rst

Front-end entries
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb_add_frontend.rst

Set api_fqdn
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb_set_api_fqdn.rst

Example
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_private_chef_rb_example.rst

Add Package to Servers
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_add_package_to_server.rst

Configure Bootstrap
-----------------------------------------------------
The following sections describe what is required to configure the bootstrap server.

Add private-chef.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_put_private_chef_rb_on_bootstrap.rst

Install |chef private|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_install_private_chef_on_bootstrap.rst

Configure 
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_config_bootstrap.rst

Configure Front-end
-----------------------------------------------------
The following sections describe what is required to configure the front-end server.

Copy /etc/opscode
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_copy_etc_opscode.rst

Install package
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_install_package_on_front_end.rst

Configure
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_config_front_end.rst

Success!
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_tiered_success.rst


High Availability
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha.rst

System Requirements
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_system_requirements.rst

Network Requirements
-----------------------------------------------------
|chef private| has the following network requirements for a high availability installation:

Networking
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_network_backend.rst

Virtual IP Addresses
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_network_virtual_ips.rst

Disk Configuration
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_network_disc_config.rst

Load Balancing
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_network_load_balancers.rst

Firewalls
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_network_firewalls.rst

private-chef.rb
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb.rst

Set the topology
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb_set_topology.rst

Back-end entries
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb_add_backend.rst

Front-end entries
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb_add_frontend.rst

Set api_fqdn
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb_set_api_fqdn.rst

Example
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_private_chef_rb_example.rst

Add Package to Servers
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_add_package_to_server.rst

Add private-chef.rb to /etc/opscode
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_copy_etc_opscode.rst

Install |chef private| on backend
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_install_package_on_backend.rst

Install |drbd| on back-end servers
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_install_drbd_on_backend.rst

Configure |drbd| on the back-end bootstrap server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_config_drbd_for_bootstrap.rst

Copy config to non-bootstrap back-end server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_copy_config_to_non_bootstrap_backend.rst

Configure |drbd| for non-bootstrap back-end server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_config_drbd_for_non_bootstrap_backend.rst

Set bootstrap server to be the primary server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_set_bootstrap_primary_for_drbd.rst

Mount the file system on the |drbd| server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_create_filesystem_on_drbd.rst

Monitor the |drbd| server for initial synchronization
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_monitor_device_sync.rst

Configure |chef private| on the bootstrap server
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_config_private_chef_on_bootstrap.rst

Configure |chef private| on non-bootstrap back-end
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_config_non_bootstrap_backend.rst

Configure Front-end
-----------------------------------------------------
The following sections describe what is required to configure the front-end server.

Copy /etc/opscode
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_copy_etc_opscode_to_frontend.rst

Install package
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_install_private_chef_on_frontend.rst

Configure
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_config_private_chef_on_frontend.rst

Success!
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_success.rst

Using GRE Tunnels
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_ha_gre_tunnels.rst


Create Users
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_create_user.rst


Create the Organization
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_create_org.rst


Active Directory and LDAP
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap.rst

Configure
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure.rst

The Host and Port
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_host_port.rst

The Bind User
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_bind_user.rst

The Base DN
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_base_dn.rst

The Login Server Name
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_login_server.rst

private-chef.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_private_chef_rb.rst

Reconfigure
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_configure_reconfigure.rst

Verify
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_verify.rst

Success!
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_install_adldap_success.rst


