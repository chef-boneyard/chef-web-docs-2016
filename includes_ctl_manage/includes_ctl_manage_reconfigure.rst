.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``reconfigure`` subcommand is used when changes are made to the |manage rb| file to reconfigure the server. When changes are made to the |manage rb| file, they will not be applied to the |chef manage| configuration until after this command is run.

This subcommand has the following syntax:

.. code-block:: bash

   $ opscode-manage-ctl reconfigure
