.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``cache_options``
     - |cache_options| For example:
       ::
 
          cache_options({ 
            :path => "/var/chef/cache/checksums", 
            :skip_expires => true 
          })
   * - ``cache_type``
     - |cache_type| For example:
       ::
 
          cache_type "BasicFile"
   * - ``chef_server_url``
     - |chef_server_url| For example:
       ::
 
          chef_server_url "http://localhost:4000"
   * - ``client_key``
     - |client_key| For example:
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
   * - ``http_proxy``
     - |http_proxy| For example:
       ::
 
          http_proxy "http://proxy.vmware.com:3128"
   * - ``http_proxy_user``
     - |http_proxy_user|
   * - ``http_proxy_pass``
     - |http_proxy_pass|
   * - ``node_name``
     - |node_name| This is typically also the same name as the computer from which |knife| is run. For example:
       ::
 
          node_name "jtimberman2012"
   * - ``validation_client_name``
     - |validation_client_name| For example:
       ::
 
          validation_client_name "chef-validator"
   * - ``validation_key``
     - |validation_key| For example:
       ::
 
          validation_key "/etc/chef/validation.pem"
