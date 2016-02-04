.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


The ``remove-server-admin-permissions`` subcommand is used to remove a user from the list of server administrators. Run the command once per user removed.

This subcommand has the following syntax:

.. code-block:: bash

   $ chef-server-ctl remove-server-admin-permissions USER_NAME

where ``USER_NAME`` is the user to remove from the list of server administrators.
