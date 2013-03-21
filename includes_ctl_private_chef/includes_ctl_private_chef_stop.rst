.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``stop`` subcommand is used to stop all services enabled on |chef private|. This command can also be run for an individual service by specifying the name of the service in the command. 

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl stop (SERVICE_NAME)

where ``name_of_service`` represents the name of any service that is listed after running the ``service-list`` subcommand.



