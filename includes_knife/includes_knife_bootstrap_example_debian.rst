.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows how to use the ``knife bootstrap`` sub-command to create a client config (/etc/chef/client.rb) with |chef hosted| as the |chef server|:

.. code-block:: ruby

   log_level        :info
   log_location     STDOUT
   chef_server_url  'https://api.opscode.com/organizations/ORGNAME'
   validation_client_name 'ORGNAME-validator'

The ``knife bootstrap`` sub-command looks in three locations for the template to use:

#. A bootstrap directory in the installed |knife| library. This location varies depending how |chef| is installed
#. A bootstrap directory in the $PWD/.chef, e.g. in ~/chef-repo/.chef
#. A bootstrap directory in the users $HOME/.chef

So, using the second location from the above, first create ``.chef/bootstrap/`` in your |chef| repository directory, then create the ERB template file.

.. code-block:: bash

   mkdir ~/.chef/bootstrap
   vi ~/.chef/bootstrap/debian5.0-apt.erb

Then edit the template to run the commands, set up the validation certificate and the client configuration file, and finally to run chef-client on completion with the given run list (-r option).

The bootstrap template can be called with:

.. code-block:: bash

   $ knife bootstrap mynode.example.com -r 'role[webserver]','role[production]' --distro debian5.0-apt


