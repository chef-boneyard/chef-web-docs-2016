.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


The ``grant-server-admin-permissions`` subcommand is used to add a user to the list of server administrators. Run the command once per user added.

This subcommand has the following syntax:

.. code-block:: bash

   $ chef-server-ctl grant-server-admin-permissions USER_NAME

where ``USER_NAME`` is the user to add to the list of server administrators.
