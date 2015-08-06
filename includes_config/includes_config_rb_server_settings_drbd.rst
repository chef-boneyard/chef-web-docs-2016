.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``drbd``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``drbd['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``'/var/opt/opscode/drbd/data'``.
   * - ``drbd['device']``
     - |drbd device| Default value: ``'/dev/drbd0'``.
   * - ``drbd['dir']``
     - |directory generic| |default_value_recommended| Default value: ``'/var/opt/opscode/drbd'``.
   * - ``drbd['disk']``
     - |drbd disk| Default value: ``'/dev/opscode/drbd'``.
   * - ``drbd['enable']``
     - |enable service| |ha backend| Default value: ``false``.
   * - ``drbd['flexible_meta_disk']``
     - |drbd flexible_meta_disk| Default value: ``'internal'``.
   * - ``drbd['primary']``
     - |drbd primary| Default value: ``{'fqdn'=>'ubuntu.localdomain', 'ip'=>'192.168.4.131', 'port'=>'7788'}``.
   * - ``drbd['secondary']``
     - |drbd secondary| Default value: ``{'fqdn'=>'ubuntu.localdomain', 'ip'=>'192.168.4.131', 'port'=>'7788'}``.
   * - ``drbd['shared_secret']``
     - |drbd shared_secret| This attribute is randomly generated during the installation of the ``bootstrap`` server and does not need to be set explicitly. Default value: ``'promisespromises'``.
   * - ``drbd['sync_rate']``
     - |drbd sync_rate| Default value: ``'40M'``.
   * - ``drbd['version']``
     - |drbd version| Auto-detected. Default value: ``'8.4.1'``.