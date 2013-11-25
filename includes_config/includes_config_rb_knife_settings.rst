.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_server_url``
     - |chef_server_url| For example:
       ::
 
          chef_server_url "http://localhost:4000"
   * - ``chef_zero[:enabled]``
     - |chef_zero_enabled| Default value: ``false``. For example:
       ::
 
          chef_zero[:enabled]true
   * - ``chef_zero[:port]``
     - |chef_zero_port| Default value: ``8889``. For example:
       ::
 
          chef_zero[:port] 8889
   * - ``client_key``
     - |client_key| Default value: ``/etc/chef/client.pem``. For example:
       ::
 
          client_key "/etc/chef/client.pem"
   * - ``cookbook_copyright``
     - |copyright|
   * - ``cookbook_email``
     - |email|
   * - ``cookbook_license``
     - |license|
   * - ``cookbook_path``
     - |cookbook_path subdirectory| For example:
       ::
 
          cookbook_path [ 
            "/var/chef/cookbooks", 
            "/var/chef/site-cookbooks" 
          ]
   * - ``data_bag_encrypt_version``
     - The minimum required version of data bag encryption. Possible values: ``1`` or ``2``. When all of the machines in an organization are running |chef client| version 11.6 (or higher), it is recommended that this value be set to ``2``. For example:
       ::
 
          data_bag_encrypt_version "2"
   * - ``local_mode``
     - |local_mode| For example:
       ::
 
          local_mode true
   * - ``node_name``
     - |name node| This is typically also the same name as the computer from which |knife| is run. For example:
       ::
 
          node_name "node_name"
   * - ``no_proxy``
     - |no_proxy| Default value: ``nil``. For example:
       ::

         no_proxy "localhost, 10.*, *.example.com, *.dev.example.com"
   * - ``syntax_check_cache_path``
     - |syntax_check_cache_path|
   * - ``validation_client_name``
     - |validation_client_name| For example:
       ::
 
          validation_client_name "chef-validator"
   * - ``validation_key``
     - |validation_key| Default value: ``/etc/chef/validation.pem``. For example:
       ::
 
          validation_key "/etc/chef/validation.pem"
   * - ``versioned_cookbooks``
     - |versioned_cookbooks| For example:
       ::
 
          versioned_cookbooks true

