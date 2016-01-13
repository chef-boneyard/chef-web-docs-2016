.. THIS PAGE DOCUMENTS chef-client version 11.10

=====================================================
Bootstrap a Node
=====================================================

A node is any physical, virtual, or cloud machine that is configured to be maintained by a |chef client|. There are two ways to install the |chef client| on a node so that it may be maintained by the |chef client|:

* Use the |subcommand knife bootstrap| subcommand to `bootstrap a node using the omnibus installer <http://docs.chef.io/essentials_nodes_bootstrap.html>`_
* Use an unattended install to bootstrap a node from itself, without using |ssh| or |windows remote management|

knife bootstrap
=====================================================
.. include:: ../../includes_install/includes_install_chef_client.rst

**Run the bootstrap command**

.. include:: ../../step_knife/step_knife_bootstrap_install_chef_client.rst

Unattended Installs
=====================================================
.. include:: ../../includes_install/includes_install_chef_client_unattended_bootstrap.rst

**Setting the initial run-list**

.. include:: ../../step_ctl_chef_client/step_ctl_chef_client_bootstrap_initial_run_list.rst

