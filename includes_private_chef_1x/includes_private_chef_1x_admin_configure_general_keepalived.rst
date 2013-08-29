.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |keepalived|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``keepalived['dir']``
     - |directory keepalived| The default value is the recommended value. Default value: ``"/var/opt/opscode/keepalived"``. For example:
       ::

          keepalived['dir'] = "/var/opt/opscode/keepalived"

   * - ``keepalived['enable']``
     - |enable service| Backend servers in a high availability topology should have this setting enabled. Default value: ``false``. For example:
       ::

          keepalived['enable'] = false

   * - ``keepalived['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/keepalived"``. For example:
       ::

          keepalived['log_directory'] = "/var/log/opscode/keepalived"

   * - ``keepalived['service_order']``
     - |service_order keepalived| |opscode_support| Default value:
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
       
       For example:
       ::

          keepalived['service_order'] = [
            {"key"=>"couchdb", "service_name"=>"couchdb"},
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
            {"key"=>"nginx", "service_name"=>"nginx"}
          ]

   * - ``keepalived['smtp_connect_timeout']``
     - |smtp connect_timeout| Default value: ``"30"``. For example:
       ::

          keepalived['smtp_connect_timeout'] = "30"

   * - ``keepalived['smtp_server']``
     - |smtp server| Default value: ``"127.0.0.1"``. For example:
       ::

          keepalived['smtp_server'] = "127.0.0.1"

   * - ``keepalived['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          keepalived['svlogd_num'] = 10

   * - ``keepalived['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          keepalived['svlogd_size'] = 1000000

   * - ``keepalived['vrrp_instance_advert_int']``
     - |vrrp_instance_advert| Default value: ``"1"``. For example:
       ::

          keepalived['vrrp_instance_advert_int'] = "1"

   * - ``keepalived['vrrp_instance_interface']``
     - |vrrp_instance_interface| Should be set to the name of the dedicated interface for |keepalived|. Default value: ``"eth0"``. For example:
       ::

          keepalived['vrrp_instance_interface'] = "eth0"

   * - ``keepalived['vrrp_instance_ipaddress']``
     - |vrrp_instance_ipaddress| This is typically set by the ``backend_vip`` option. Default value: ``keepalived['vrrp_instance_ipaddress'] = "192.168.4.131"``.

   * - keepalived['vrrp_instance_ipaddress_dev']``
     - |vrrp_instance_ipaddress_device| Default value: ``"eth0"``. For example:
       ::

          keepalived['vrrp_instance_ipaddress_dev'] = "eth0"

   * - ``keepalived['vrrp_instance_password']``
     - |vrrp_instance_password| This value is generated randomly when the bootstrap server is installed and does not need to be set explicitly. Default value: ``"sneakybeaky"``. For example:
       ::

          keepalived['vrrp_instance_password'] = "sneakybeaky"

   * - ``keepalived['vrrp_instance_priority']``
     - |vrrp_instance_priority| By default, all servers have equal priority. The server with the lowest value will have the highest priority. Default value: ``"100"``. For example:
       ::

          keepalived['vrrp_instance_priority'] = "100"

   * - ``keepalived['vrrp_instance_state']``
     - |vrrp_instance_state| This value should be the same for both servers in the backend. Default value: ``"MASTER"``. For example:
       ::

          keepalived['vrrp_instance_state'] = "MASTER"

   * - ``keepalived['vrrp_instance_virtual_router_id']``
     - |vrrp_instance_virtual_router_id| This value should be unique within the multicast domain used for |keepalived|. Default value: ``"1"``. For example:
       ::

          keepalived['vrrp_instance_virtual_router_id'] = "1"

   * - ``keepalived['vrrp_unicast_bind']``
     - |vrrp_unicast_bind| To use multicast, leave this value undefined. This value is configured automatically based on settings in |private chef rb|. |opscode_support| Default value: ``<ip address of cluster IP or eth0>``. For example:
       ::

          keepalived['vrrp_unicast_bind'] = nil

   * - ``keepalived['vrrp_unicast_peer']``
     - |vrrp_unicast_peer| To use multicast, leave this value undefined. This value is configured automatically based on settings in |private chef rb|. |opscode_support| Default value: ``<ip address of peer cluster IP or eth0>``. For example:
       ::

          keepalived['vrrp_unicast_peer'] = nil

