.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for delivery-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``restart`` subcommand is used to restart all services enabled on the |chef delivery| server or to restart an individual service by specifying the name of that service in the command.

This subcommand has the following syntax:

.. code-block:: bash

   $ delivery-ctl restart name_of_service

where ``name_of_service`` represents the name of any service that is listed after running the ``service-list`` subcommand. When a service is successfully restarted the output should be similar to:

.. code-block:: bash

   $ ok: run: service_name: (pid 12345) 1s
