.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``ha-status`` subcommand is used to to check the status for services running in a |ha| topology. This command will verify the following:

       * The |keepalived| daemon is enabled in the config
       * The |drbd| process is enabled in the config
       * The underlying block device or logical volume for |drbd| has been created and configured
       * The |drbd| device exists
       * The current state of the server is ``master`` or ``backup``; any migration processes have completed
       * The failover virtual IP address is correctly attached to only the ``master`` node
       * The |drbd| state is correct based on the state of the server being ``master`` or ``backup``
       * The |drbd| mount point is correctly mounted to only the ``master`` node
       * The |drbd| replication IP addresses are pingable
       * The ``runit`` status of the services are correct (up or down) based on the ``master`` or ``backup`` state of the server

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl ha-status

If this command runs successfully, it will return the following:
       
.. code-block:: bash

   $ [OK] all checks passed.

Otherwise it will print out a list of errors, similar to the following:

.. code-block:: bash

   ...
     [OK] nginx is running correctly, and I am master.
     [ERROR] nrpe is not running.
     [OK] opscode-account is running correctly, and I am master.
   ...
     [ERROR] ERRORS WERE DETECTED.

