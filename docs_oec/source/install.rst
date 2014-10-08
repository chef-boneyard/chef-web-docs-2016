=====================================================
Install |chef server oec|!
=====================================================

|chef server oec| is installed and configured in three main phases: setting up the |chef server|, setting up a workstation, and then installing the |chef client| on each node that will be under management by |chef|:

* :doc:`Install the Chef Server </install_server>`; the |chef server| may be configured for :doc:`failover on the back end </install_server_be>` machines and :doc:`load balancing on the front end </install_server_fe>`
* :doc:`Set up a Workstation </install_workstation>`
* :doc:`Install the chef-client </install_bootstrap>`

|chef| also has additional features that can be enabled as part of the setup and configuration process. 

* The :doc:`Chef management console </manage>` provides a web user interface for managing objects on the |chef server|.
* :doc:`Chef reporting </reporting>` enables |chef client| run reporting data from within the |chef manage|.

In addition, there are some post-configuration options for the |chef server|, including :doc:`configuring LDAP </install_server_ldap>`, :doc:`creating organizations </install_server_orgs>`, and :doc:`managing users </install_server_users>`.
