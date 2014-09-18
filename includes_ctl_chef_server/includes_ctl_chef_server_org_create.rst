.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``org-create`` subcommand is used to create an organization. (The validation key for the organization is returned to ``STDOUT`` when creating an organization using this command.)

For example:

.. code-block:: bash

   $ chef-server-ctl org-create prod Production

or:

.. code-block:: bash

   $ chef-server-ctl org-create staging Staging -a chef-admin

or:

.. code-block:: bash

   $ chef-server-ctl org-create dev Development -f /tmp/id-dev.key

