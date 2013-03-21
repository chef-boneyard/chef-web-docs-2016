=====================================================
Upgrading to Chef Server 11.x
=====================================================

Upgrading to |chef server 11| from |chef server 10| is a relatively simple process: install the |chef server 11| and then move the data from |chef server 10| to the new one. Because the |chef server 10| database is |couch db| and the |chef server 11| database is |postgresql|, the data cannot be moved directly. Instead, use the following |knife| subcommands:

* ``knife download``
* ``knife list``
* ``knife upload``

These subcommands will be used to download the data from |chef server 10| (as |json|), and then upload it to the |chef server 11| server. This approach bypasses the need to interact directly with either database or having to worry about how the data is stored in either location. 

Install the latest version of the ``knife-essentials`` plugin using the following command:

.. code-block:: bash

   $ gem install knife-essentials

For more information about ``knife-essentials``, see https://github.com/jkeiser/knife-essentials.


Requirements
===============================

* A live |chef server 10| server
* A live |chef server 11| server
* A workstation (running |knife|) that can access both the |chef server 10| and |chef server 11| servers
* The ability to run the ``knife download`` and ``knife upload`` subcommands


Set up Access to |chef server 10|
=================================
Use the following steps to configure a workstation so that it can communicate with the |chef server 10| server:

#. Create a directory to use as the location to which data will be downloaded. This topic uses a directory named ``~/transfer``.
#. In the ``~/transfer`` directory, create a file named ``.chef/knife-chef10.rb``. The contents of this file should be similar to the following:

   .. code-block:: ruby

      transfer_repo = File.expand_path('..', File.dirname(__FILE__))
      chef_server_url "http://chef-10.example.com:4000"
      node_name 'chef-webui'
      client_key "#{transfer_repo}/.chef/chef-webui.pem"
      repo_mode 'everything'
      versioned_cookbooks true
      chef_repo_path transfer_repo

   where ``chef_server_url`` is the URL for the |chef server 10| server from which the data will be downloaded and ``node_name`` is the name of the workstation from which |knife| runs (with admin rights).
#. Copy the private key for the |chef server 10| server to the ``.chef`` directory. The private key is typically located at ``/etc/chef/webui.pem``. For example:

   .. code-block:: bash

      $ cp <local_webui.pem> .chef/chef-webui.pem
#. Verify the configuration by running the following command:

   .. code-block:: bash

      $ knife list /clients

   to return a list of all clients, including ``clients/chef-webui.json`` and ``clients/chef-validator.json``.


Download Data from |chef server 10|
===================================
To download data from the |chef server 10|, run the following command:

.. code-block:: bash

   $ knife download -c .chef/knife-chef10.rb /

This will transfer all of the data on |chef server 10| to the transfer directory.


Set up Access to |chef server 11|
=================================
Use the following steps to configure a workstation so that it can communicate with the |chef server 11| server:

#. In the same ``~/transfer`` directory, create a file named ``.chef/knife.rb``. The contents of this file should be similar to the following:

   .. code-block:: ruby

      transfer_repo = File.expand_path('..', File.dirname(__FILE__))
      chef_server_url "https://chef-11.example.com"
      node_name 'admin'
      client_key "#{transfer_repo}/.chef/admin.pem"
      repo_mode 'everything'
      versioned_cookbooks true
      chef_repo_path transfer_repo

   where ``chef_server_url`` is the URL for the |chef server 11| server to which the data will be uploaded.
#. Copy the private key for the |chef server 11| server to the ``.chef`` directory. For example:

   .. code-block:: bash

      $ cp <admin.pem> .chef/admin.pem
#. Verify the configuration by running the following command:

   .. code-block:: bash

      $ knife list /users

   to return a list of all users, including ``users/admin.json``.


Update the chef-validator settings
==================================
The |chef validator| client is no longer special; |chef server 11| requires the ``chef-validator`` flag to be set in order for the |chef validator| to be created. 

#. Edit the ``clients/chef-validator.json`` file and add ``"validator": true`` as a property, like this:

.. code-block:: javascript

   {
     "name": "chef-validator",
     "public_key": "-----BEGIN PUBLIC KEY-----\
       nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AM235gKCgAQEA8l0+sy05G6YX/SaVsu2k\
       ndwOTIZKLhvfuhp/VcBU432455DTMWyxTR9sdgdRq+mgUqkF4ox/zIwhLG5nyHMLa\
       nFKsKPxUQlS1Jsf2gaoP+RhnswmspJffhF2l593DwSsglTLNtDw5cqhF6YYo7b7cB\
       nywHaWL+O3cSFLd0US7tSoOTeOdnAAwPwrsdfgKQdgfgerCV3Ottn83V8BUCfpnbi\
       nNetytGDnE1Ms9lvYswsW2EqEnzQ+afvlDq5tXu72b1XBs7Y/8JqQz8+3lVHNGKys\
       nh5U6VdI5Br0u1leO0LcffgrgE4@#$fs7/T2MVztXujUN9CoX1a+3siu3HAa8lslo\
       noQIDAQAB\n-----END PUBLIC KEY-----\n",
     "_rev": "1-72a9f16a92108bd794704c075261aeb5",
     "validator": true
   }

#. #. Verify the configuration by running the following command:

   .. code-block:: bash

      $ knife list /clients

   to return a list of all clients, including ``clients/chef-validator.json``.


Verify the admin public key
===============================
The ``admin.pem`` private key must be correct for each workstation that will have access to |chef server 11|. |chef server 11| has a new user named ``admin``, whereas many instances of |chef server 10| have an admin client named ``admin``. For |chef 11|, |knife| requires a private key named ``admin.pem``. This naming similarity can be an issue if the name of the client doesn't match the name of the private key.

#. Copy the ``admin.pem`` to each workstation or replace the |chef 11| admin private key with the old private key. To do this, run the following commands:

   .. code-block:: bash

      $ knife download users/admin.json
      $ grep public_key clients/admin.json

#. Replace the public key in ``users/admin.json`` with the results of the previous step:

   .. code-block:: bash

      $ knife upload users/admin.json
      $ cp <Chef 10 admin.pem> .chef/admin.pem

#. Remove the following:

   .. code-block:: bash

      $ rm clients/admin.json

#. Verify the configuration by running the following command:

   .. code-block:: bash

      $ knife list /users

   to return a list of all users, including ``users/admin.json``.


Upload Data to Chef 11
===============================
To upload data to the |chef server 11|, run the following command:

.. code-block:: bash

   $ knife upload /

This will transfer all of the data in the transfer directory to |chef server 11|.


Last Steps
===============================
At this point, the |chef server 11| should have all of the data that used to be on the |chef server 10|. Point the DNS or load balancer at the new |chef server|. The |chef client| should continue to run properly on all nodes and each workstation should be able to manage |chef| objects using |knife|. If issues remain, try the IRC channel or email the chef@lists.opscode.com discussion alias. If ``knife-essentials`` is the issue, file an issue in |github| or check the IRC channel.