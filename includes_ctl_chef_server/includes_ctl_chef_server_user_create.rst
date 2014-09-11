.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``user-create`` subcommand is used to create a user. 

Examples:

.. code-block:: bash

   $ chef-server-ctl user-create john_smith John Smith john_smith@example.com insecure-passord
   $ chef-server-ctl user-create jane_doe Jane Doe jane_doe@example.com PaSSword -f /tmp/jane_doe.key
   $ chef-server-ctl user-create waldendude Henry David Thoreau waldendude@example.com excursions

