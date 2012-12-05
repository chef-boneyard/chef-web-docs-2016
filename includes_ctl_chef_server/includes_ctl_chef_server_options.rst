.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-server-ctl OPTION

This command has the following options:

``help``
   Use to print a list of available |chef server ctl| commands.

``reconfigure``
   Use to reconfigure the |chef server|. This option will read from the |path chef server chef server rb| file and apply that configuration to the |chef server|. Any time changes are made to the |chef server rb| file, the |chef server ctl| command should be run with this option.

``restart [SERVICE_NAME]``
   Use to restart all enabled services or to restart a single service.

``start [SERVICE_NAME]``
   Use to start all enabled services or to start a single service.

``status [SERVICE_NAME]``
   Use to view the status of all services or to view the status of a single service.

``stop [SERVICE_NAME]``
   Use to stop all enabled services or to stop a single service.

``tail [SERVICE_NAME]``
   Use to follow the |chef server| logs for all services or for a single service.

``test``, ``test --all``
   Use to execute |chef pedant|, an integration test suite for the |chef server| installation. By default, only a subset of the available test are run. Add the ``--all`` flag to run the full test suite.

**Examples**

To view the status of the ``erchef`` component of the |chef server|, enter:

.. code-block:: bash

   $ chef-server-ctl status erchef

To restart all enabled services, enter:

.. code-block:: bash

   $ chef-server-ctl restart 

To restart the ``erchef`` service, enter:

.. code-block:: bash

   $ chef-server-ctl restart erchef 
