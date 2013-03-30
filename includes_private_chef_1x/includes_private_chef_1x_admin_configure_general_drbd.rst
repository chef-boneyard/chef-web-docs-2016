.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |drbd|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``drbd['data_dir']``
     - Where data that should reside on DRBD should live. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/drbd/data"``. For example:
       ::

          drbd['data_dir'] = "/var/opt/opscode/drbd/data"

   * - ``drbd['device']``
     - The device name to use for |drbd|. Default value: ``"/dev/drbd0"``. For example:
       ::

          drbd['device'] = "/dev/drbd0"

   * - ``drbd['dir']``
     - The top level directory for |drbd| configuration. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/drbd"``. For example:
       ::

          drbd['dir'] = "/var/opt/opscode/drbd"

   * - ``drbd['disk']``
     - The local LVM logical volume to use behind |drbd|. Default value: ``"/dev/opscode/drbd"``. For example:
       ::

          drbd['disk'] = "/dev/opscode/drbd"

   * - ``drbd['enable']``
     - Whether or not this server is using |drbd|. This is typically set by the ``role`` this server plays - it is enabled on ``backend`` servers in the ``ha`` topology. Default value: ``false``. For example:
       ::

          drbd['enable'] = false

   * - ``drbd['flexible_meta_disk']``
     - Where |drbd| meta-data is stored. Default value: ``"internal"``. For example:
       ::

          drbd['flexible_meta_disk'] = "internal"
  
   * - ``drbd['primary']``
     - The ``fqdn``, ``ip`` and ``port`` of the server we consider the |drbd| *primary*. This is typically set automatically from the ``server`` entries with the ``backend`` ``role`` when in an ``ha`` topology. Default value: ``{"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}``. For example:
       ::

          drbd['primary'] = {
            "fqdn"=>"ubuntu.localdomain", 
            "ip"=>"192.168.4.131", "port"=>7788
          }

   * - ``drbd['secondary']``
     - Identical to the ``drbd['primary']`` setting, including caveats. Default value: ``{"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}``. For example:
       ::

          drbd['secondary'] = {
            "fqdn"=>"ubuntu.localdomain", 
            "ip"=>"192.168.4.131", "port"=>7788
          }

   * - ``drbd['shared_secret']``
     - The shared secret for |drbd|. This attribute is randomly generated for you when you install the ``bootstrap`` server. You should not need to set it explicitly. Default value: ``"promisespromises"``. For example:
       ::

          drbd['shared_secret'] = "promisespromises"

   * - ``drbd['sync_rate']``
     - The amount of bandwidth to use for data synchronization; typically a small percentage of the available bandwidth available for |drbd| replication. Default value: ``"40M"``. For example:
       ::

          drbd['sync_rate'] = "40M"

   * - ``drbd['version']``
     - The version of |drbd| that is installed on the system. Auto-detected. Default value: ``"8.4.1"``. For example:
       ::

          drbd['version'] = "8.4.1"
