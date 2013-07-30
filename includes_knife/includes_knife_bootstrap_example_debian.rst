.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows how to use the ``knife bootstrap`` sub-command to create a client configuration file (/etc/chef/client.rb) that uses |chef hosted| as the |chef server|. The configuration file will look something like:

.. code-block:: ruby

   log_level        :info
   log_location     STDOUT
   chef_server_url  'https://api.opscode.com/organizations/ORGNAME'
   validation_client_name 'ORGNAME-validator'

The ``knife bootstrap`` sub-command will look in three locations for the template that is used during the bootstrap operation. The locations are:

#. A bootstrap directory in the installed |knife| library; the actual location may vary, depending how |chef| is installed
#. A bootstrap directory in the ``$PWD/.chef``, e.g. in ``~/chef-repo/.chef``
#. A bootstrap directory in the users ``$HOME/.chef``

If, in the example above, the second location was used, then create the ``.chef/bootstrap/`` directory in the |chef repo|, and then create the |erb| template file by running commands similar to the following:

.. code-block:: bash

   mkdir ~/.chef/bootstrap
   vi ~/.chef/bootstrap/debian5.0-apt.erb

When finished creating the directory and the |erb| template file, edit the template to run the |ssh| commands. Then set up the validation certificate and the client configuration file.

Finally, run the |chef client| on using a ``knife bootstrap`` command that specifies a run-list (the ``-r`` option). The bootstrap template can be called using a command similar to the following:

.. code-block:: bash

   $ knife bootstrap mynode.example.com -r 'role[webserver]','role[production]' --distro debian5.0-apt


