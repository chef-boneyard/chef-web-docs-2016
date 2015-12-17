.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for delivery-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``reconfigure`` subcommand is used to reconfigure the |chef delivery| server after changes are made to the delivery configuration file, located at ``/etc/delivery/delivery.rb``. When changes are made to the delivery configuration file, they are not applied to the |chef delivery| configuration until after this command is run. This subcommand also restarts any services for which the ``service_name['enabled']`` setting is set to ``true``.

This subcommand has the following syntax:

.. code-block:: bash

   $ delivery-ctl reconfigure
