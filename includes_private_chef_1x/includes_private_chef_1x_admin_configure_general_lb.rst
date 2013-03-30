.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb['api_fqdn']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          lb['api_fqdn'] = "ubuntu.localdomain"

   * - ``lb['cache_cookbook_files']``
     - Default value: ``false``. For example:
       ::

          lb['cache_cookbook_files'] = false

   * - ``lb['debug']``
     - Default value: ``false``. For example:
       ::

          lb['debug'] = false

   * - ``lb['enable']``
     - Default value: ``true``. For example:
       ::

          lb['enable'] = true

   * - ``lb['upstream']``
     - Default value:
       ::

          {"opscode-chef"=>["127.0.0.1"],
           "opscode-erchef"=>["127.0.0.1"],
           "opscode-account"=>["127.0.0.1"],
           "opscode-webui"=>["127.0.0.1"],
           "opscode-authz"=>["127.0.0.1"],
          "opscode-solr"=>["127.0.0.1"]}``. 
       
       For example:
       ::

          lb['upstream'] = {"opscode-chef"=>["127.0.0.1"],
                            "opscode-erchef"=>["127.0.0.1"],
                            "opscode-account"=>["127.0.0.1"],
                            "opscode-webui"=>["127.0.0.1"],
                            "opscode-authz"=>["127.0.0.1"],
                            "opscode-solr"=>["127.0.0.1"]}

   * - ``lb['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          lb['vip'] = "127.0.0.1"

   * - ``lb['web_ui_fqdn']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          lb['web_ui_fqdn'] = "ubuntu.localdomain"

