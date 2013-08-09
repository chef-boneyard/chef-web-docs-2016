=====================================================
Bootstrap a Node
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

Steps
=====================================================
The following steps describe how to bootstrap a node.

#. Identify the |fqdn| or IP address for the node
#. Run the |subcommand knife bootstrap| command
#. Verify the node on the |chef server|

See the following sections for more information about each step. 

Identify the FQDN or IP Address
-----------------------------------------------------
The ``knife bootstrap`` command requires the |fqdn| or the IP address for the node in order to complete the bootstrap operation.

Run the ``knife bootstrap`` command
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_bootstrap_default.rst

Verify the node
-----------------------------------------------------
.. include:: ../../step_install/step_install_node_verify.rst

