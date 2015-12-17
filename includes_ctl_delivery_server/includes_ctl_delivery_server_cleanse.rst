.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for delivery-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``cleanse`` subcommand is used to re-set the |chef delivery| server to the state it was in prior to the first time the ``reconfigure`` subcommand is run. This command will:

* Destroy all data and logs
* Create a backup of the system config files and place them in a directory in root, such as ``/root/delivery-cleanse-2015-12-15T15:51``

The software that was put on-disk by the package installation will remain. Re-run ``delivery-ctl reconfigure`` to recreate the default data and configuration files.

This subcommand has the following syntax:

.. code-block:: bash

   $ delivery-ctl cleanse
