.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Before virtual machines are created using the |azure portal|, some |chef client|-specific settings will need to be identified so they may be provided to the |azure portal| during the virtual machine creation workflow. These settings are available from the |chef client| configuration settings:

#. The ``chef_server_url`` and ``validaton_client_name``. These are settings in the `client.rb file <http://docs.opscode.com/config_rb_client.html>`_.

#. The file for the `validator key <http://docs.opscode.com/chef_private_keys.html>`_.
