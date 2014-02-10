=====================================================
Bootstrap a Node
=====================================================

A node is any physical, virtual, or cloud machine that is configured to be maintained by a |chef client|. The |subcommand knife bootstrap| subcommand is used to run a bootstrap operation that installs the |chef client| on the target node.

Use ``knife bootstrap``
=====================================================
The following steps describe how to bootstrap a node using |knife|.

**Identify the FQDN or IP Address**

The ``knife bootstrap`` command requires the |fqdn| or the IP address for the node in order to complete the bootstrap operation.

**Run the ``knife bootstrap`` command**

.. include:: ../../step_install/step_install_workstation_bootstrap_default.rst

**Verify the node**

.. include:: ../../step_install/step_install_node_verify.rst

Use Unattended Installs
=====================================================
The |chef client| can be installed using an unattended bootstrap. For example, machines are often created using environments like |amazon aws autoscaling|, |amazon aws cloudformation|, |rackspace autoscale|, and |pxe|. In this scenario, using tooling for attended, single-machine installs like ``knife bootstrap`` or ``knife CLOUD_PLUGIN create`` is not practical because the machines are created automatically and someone cannot always be on-hand to initiate the bootstrap process.

When the |chef client| is installed using an unattended bootstrap, remember that the |chef client|

* Must be able to authenticate to the |chef server|
* Must be able to configure a run-list
* May require custom attributes, depending on the cookbooks that are being used
* Must be able to access the |chef validator pem| so that it may create a new identity on the |chef server|
* Must have a unique node name; the |chef client| will use the |fqdn| for the host system by default

**Setting the initial run-list**

A node's initial run-list is specified using a |json| file on the host system. When running the |chef client| as an executable, use the ``-j`` option to tell the |chef client| which |json| file to use. For example:

.. code-block:: bash

   $ chef-client -j /etc/chef/file.json

where ``file.json`` is similar to:

.. code-block:: javascript

   {
     "resolver": {
       "nameservers": [ "10.0.0.1" ],
       "search":"int.example.com"
     },
     "run_list": [ "recipe[resolver]" ]
   }

