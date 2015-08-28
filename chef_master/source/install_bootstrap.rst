=====================================================
Bootstrap a Node
=====================================================

A node is any physical, virtual, or cloud machine that is configured to be maintained by a |chef client|. There are two ways to install the |chef client| on a node so that it may be maintained by the |chef client|:

* Use the |subcommand knife bootstrap| subcommand to `bootstrap a node using the omnibus installer <http://docs.chef.io/chef_client.html#about-bootstrap-operations>`_
* Use an unattended install to bootstrap a node from itself, without using |ssh| or |windows remote management|

``knife bootstrap``
=====================================================
.. include:: ../../includes_install/includes_install_chef_client.rst

**Run the bootstrap command**

.. include:: ../../step_knife/step_knife_bootstrap_install_chef_client.rst

Validatorless Bootstrap
=====================================================
.. include:: ../../includes_knife/includes_knife_bootstrap_no_validator.rst

``knife bootstrap`` Options
-----------------------------------------------------
Use the following options with a validatorless bootstrap to specify items that are stored in |chef vault|:

``--bootstrap-vault-file VAULT_FILE``
   |bootstrap valut_file|

``--bootstrap-vault-item VAULT_ITEM``
   |bootstrap valut_item|

``--bootstrap-vault-json VAULT_JSON``
   |bootstrap valut_json|

Example ``--bootstrap-vault-*`` Options Usage
---------------------------------------------

The goal for all three of these options is to the add the client identity of the bootstrapping node to the permissions list of the specified vault item.
In this way, the new client will be able to read the vault. The same can be done through the ``-S`` search query option used with ``knife vault create...``
if that usage is preferable. The ``--bootstrap-vault-*`` options will only authorize a single client at a time for access to the vault.

Versions
--------

Workstation Knife: Mac OSX + Chef Client 12.4.1 + chef-vault 2.6.1

Node: Ubuntu 12.04 + Chef Client 12.2.1 + manually installed chef-vault 2.6.1

Recreate any previously created plumpy:bar chef-vault databag item
-------------------------------------------------------------------

.. code-block:: bash

   $ knife vault delete plumpy bar
   Do you really want to delete plumpy/bar? (Y/N) Y
   Deleted chef_vault_item[plumpy/bar]

   $ echo "{\"some\":\"content for them\"}" > plumpy-bar-content.json

   $ cat plumpy-bar-content.json
   {"some":"content for them"}

   $ knife vault create plumpy bar -M client -A sean_horn,angle -J plumpy-bar-content.json

No clients, because we specified no `-S` search query while creating the vault.
At this time, only the users sean_horn and angle are authorized to read and manage the vault.

.. code-block:: bash

   $ knife vault show plumpy bar  --mode client -p all
   admins:
     sean_horn
     angle
   clients:
   id:           bar
   search_query: 
   some:         content for them


It is definitely an encrypted databag, see?

.. code-block:: bash

   $ knife data_bag show plumpy bar
   WARNING: Encrypted data bag detected, but no secret provided for decoding.  Displaying encrypted data.
   id:   bar
   some:
   cipher:         aes-256-cbc
   encrypted_data: c7Axnyg+1KDxBPOZdYN9QuIYx6dmSmK70unAQbn12Lygvsv2g9DPJJbueXVh
   +yxL
   iv:             ONoVR7OjPZiAzaqOZ30bjg==
   version:        1
   
Example with ``--bootstrap-vault-file``
---------------------------------------

Use the plumpy:bar recreation step above first, to follow the difference in the vault permissions.

.. code-block:: bash

   echo "{\"plumpy\":\"bar\"}" > plumpy-bar-bootstrap-vault-file.json

   $ knife bootstrap localhost -p 2200 -N ubuntu-12.04 -r 'role[group1]' --ssh-user vagrant --sudo --bootstrap-vault-file plumpy-bar-bootstrap-vault-file.json
   Node ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Client ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Creating new client for ubuntu-12.04
   Creating new node for ubuntu-12.04
   Connecting to localhost
   localhost -----> Existing Chef installation detected
   localhost Starting first Chef Client run...
   localhost Starting Chef Client, version 12.2.1
   localhost resolving cookbooks for run list: ["delay-test-reporting"]
   localhost Synchronizing Cookbooks:
   localhost   - delay-test-reporting
   localhost Compiling Cookbooks...
   localhost Converging 1 resources
   localhost Recipe: delay-test-reporting::default
   localhost   * execute[sleep 30] action run
   localhost     - execute sleep 30
   localhost
   localhost Running handlers:
   localhost Running handlers complete
   localhost Chef Client finished, 1/1 resources updated in 34.307257232 seconds

Cool, the client ubuntu-12.04 was added to the chef-vault during the bootstrap.

.. code-block:: bash

   $ knife vault show plumpy bar  --mode client -p all
   admins:
     sean_horn
     angle
   clients:      ubuntu-12.04
   id:           bar
   search_query:
   some:         content for them

Example with ``--bootstrap-vault-item``
---------------------------------------

Use the plumpy:bar recreation step above first, to follow the difference in the vault permissions.

.. code-block:: bash

   $ knife bootstrap localhost -p 2200 -N ubuntu-12.04 -r 'role[group1]' --ssh-user vagrant --sudo --bootstrap-vault-item plumpy:bar
   Node ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Client ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Creating new client for ubuntu-12.04
   Creating new node for ubuntu-12.04
   Connecting to localhost
   localhost -----> Existing Chef installation detected
   localhost Starting first Chef Client run...
   localhost Starting Chef Client, version 12.2.1
   localhost resolving cookbooks for run list: ["delay-test-reporting"]
   localhost Synchronizing Cookbooks:
   localhost   - delay-test-reporting
   localhost Compiling Cookbooks...
   localhost Converging 1 resources
   localhost Recipe: delay-test-reporting::default
   localhost   * execute[sleep 30] action run
   localhost     - execute sleep 30
   localhost
   localhost Running handlers:
   localhost Running handlers complete
   localhost Chef Client finished, 1/1 resources updated in 34.322229474
   seconds

During the above run, the plumpy:bar vault item was updated with the
ubuntu-12.04 client during the validatorless bootstrap. Previously,
it only had the two Admins authorized to view the content

.. code-block:: bash

   $ knife vault show plumpy bar -p all
   admins:
     sean_horn
     angle
   clients:      ubuntu-12.04
   id:           bar
   search_query: role:stuff
   some:         secret stuff for them

Then, let's check the ubuntu-12.04 client itself
First, install the chef-vault gem in the embedded chef-client

.. code-block:: bash

   $ sudo /opt/chef/embedded/bin/gem install chef-vault --no-ri --no-rdoc
   Fetching: chef-vault-2.6.1.gem (100%)
   Successfully installed chef-vault-2.6.1
   1 gem installed

Cool, the client itself can decrypt and read the encrypted databag
contents as well.

.. code-block:: bash

   $ sudo /opt/chef/bin/knife vault show plumpy bar -c /etc/chef/client.rb -M client -p all
   admins:
     sean_horn
     angle
   clients:      ubuntu-12.04
   id:           bar
   search_query: role:group1
   some:         secret stuff for them

Success! The client is authorized to view the content of the
plumpy:bar databag item

Example with ``--bootstrap-vault-json``
---------------------------------------

Use the plumpy:bar recreation step above first, to follow the difference in the vault permissions.

.. code-block:: bash

   $ knife bootstrap localhost -p 2200 -N ubuntu-12.04 -r 'role[group1]' --ssh-user vagrant --sudo --bootstrap-vault-json '{"plumpy": "bar"}'
   Node ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Client ubuntu-12.04 exists, overwrite it? (Y/N) Y
   Creating new client for ubuntu-12.04
   Creating new node for ubuntu-12.04
   Connecting to localhost
   localhost -----> Existing Chef installation detected
   localhost Starting first Chef Client run...
   localhost Starting Chef Client, version 12.2.1
   localhost resolving cookbooks for run list: ["delay-test-reporting"]
   localhost Synchronizing Cookbooks:
   localhost   - delay-test-reporting
   localhost Compiling Cookbooks...
   localhost Converging 1 resources
   localhost Recipe: delay-test-reporting::default
   
   localhost   * execute[sleep 30] action run
   localhost     - execute sleep 30
   localhost
   localhost Running handlers:
   localhost Running handlers complete
   localhost Chef Client finished, 1/1 resources updated in 33.732784033 seconds

.. code-block:: bash

   $ knife vault show plumpy bar -M client -p all
   admins:
     sean_horn
     angle
   clients:      ubuntu-12.04
   id:           bar
   search_query:
   some:         content for them

Unattended Installs
=====================================================
.. include:: ../../includes_install/includes_install_chef_client_unattended_bootstrap.rst

**Setting the initial run-list**

.. include:: ../../step_ctl_chef_client/step_ctl_chef_client_bootstrap_initial_run_list.rst
