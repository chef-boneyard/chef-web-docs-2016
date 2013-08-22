.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``keepalived['dir']``
     - Where keepalived will store its on-disk data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/keepalived"``.
   * - ``keepalived['enable']``
     - Whether the keepalived service is enabled on this server or not. Usually managed by the ``role`` a server has in its ``server`` entry - ``backend`` servers in an ``ha`` ``topology`` will have this enabled. Default value: ``false``.
   * - ``keepalived['log_directory']``
     - The base directory for keepalived log data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/log/opscode/keepalived"``.
   * - ``keepalived['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
   * - ``keepalived['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``keepalived['service_order']``
     - The order that keepalived will start and stop services in on transition from Primary to Backup. Changing this order without consulting with your |opscode| Support Engineer will make it very difficult to troubleshoot your ``ha`` cluster. Default value:
       ::

          [{"key"=>"couchdb", "service_name"=>"couchdb"},
           {"key"=>"postgresql", "service_name"=>"postgres"},
           {"key"=>"rabbitmq", "service_name"=>"rabbitmq"},
           {"key"=>"redis", "service_name"=>"redis"},
           {"key"=>"opscode-authz", "service_name"=>"opscode-authz"},
           {"key"=>"opscode-certificate", "service_name"=>"opscode-certificate"},
           {"key"=>"opscode-account", "service_name"=>"opscode-account"},
           {"key"=>"opscode-solr", "service_name"=>"opscode-solr"},
           {"key"=>"opscode-expander", "service_name"=>"opscode-expander"},
           {"key"=>"opscode-expander", "service_name"=>"opscode-expander-reindexer"},
           {"key"=>"opscode-org-creator", "service_name"=>"opscode-org-creator"},
           {"key"=>"opscode-chef", "service_name"=>"opscode-chef"},
           {"key"=>"opscode-erchef", "service_name"=>"opscode-erchef"},
           {"key"=>"opscode-webui", "service_name"=>"opscode-webui"},
           {"key"=>"nagios", "service_name"=>"php-fpm"},
           {"key"=>"nagios", "service_name"=>"fcgiwrap"},
           {"key"=>"nagios", "service_name"=>"nagios"},
           {"key"=>"nginx", "service_name"=>"nginx"}]``. 

   * - ``keepalived['smtp_connect_timeout']``
     - When sending messages about transitions, how long to wait to connect with an STMP server. Default value: ``"30"``.
   * - ``keepalived['smtp_server']``
     - The SMTP server to connect to. Default value: ``"127.0.0.1"``.
   * - ``keepalived['vrrp_instance_advert_int']``
     - How often should the ``primary`` server advertise, in seconds. Default value: ``"1"``.
   * - ``keepalived['vrrp_instance_interface']``
     - The interface to send ``vrrp`` traffic over. On systems with dedicated interfaces for keepalived traffic, this should be set to the name of the dedicated interface. Default value: ``"eth0"``.
   * - ``keepalived['vrrp_instance_ipaddress']``
     - The virtual IP address to be managed. Typically set by the ``backend_vip`` option. Default value: ``keepalived['vrrp_instance_ipaddress'] = "192.168.4.131"``.
   * - keepalived['vrrp_instance_ipaddress_dev']``
     - The device to add the virtual IP address to. Default value: ``"eth0"``. 
   * - ``keepalived['vrrp_instance_password']``
     - The secret key for VRRP pairs. This attribute is randomly generated for you when you install the ``bootstrap`` server. You should not need to set it explicitly. Default value: ``"sneakybeaky"``.
   * - ``keepalived['vrrp_instance_priority']``
     - The priority for this server. By default, both servers have equal priority, which means the cluster will have no preference for which should be primary. Set to a lower value on the host you want to have be preferred. Default value: ``"100"``.
   * - ``keepalived['vrrp_instance_state']``
     - The default ``vrrp`` state for this server. Should be the same on both back-end systems. Default value: ``"MASTER"``.
   * - ``keepalived['vrrp_instance_virtual_router_id']``
     - The virtual router ID for this keepalived pair. This should be unique within the multicast domain you are using for keepalived. Default value: ``"1"``.
   * - ``keepalived['vrrp_unicast_bind']``
     - The unicast cluster IP address used by keepalived to bind to in order to talk to its peer.  This should be undefined in order to use multicast. This will be configured automatically based on settings derived from the ``/etc/opscode/private-chef.rb`` file.  Changing this order without consulting with your |opscode| Support Engineer will make it very difficult to troubleshoot your ``ha`` cluster. Default value: ``<ip address of cluster IP or eth0>``.
   * - ``keepalived['vrrp_unicast_peer']``
     - The unicast cluster IP address used by keepalived to send to in order to talk to its peer.  This should be undefined in order to use multicast. This will be configured automatically based on settings derived from the ``/etc/opscode/private-chef.rb`` file.  Changing this order without consulting with your |opscode| Support Engineer will make it very difficult to troubleshoot the ``ha`` cluster. Default value: ``<ip address of peer cluster IP or eth0>``.