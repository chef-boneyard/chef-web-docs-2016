.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife upload|

This sub-command will upload roles, cookbooks, etc. from your local chef repository filesystem (ED. that ought to be a link) to the Chef server.  It is often used to deploy changes to a Chef server.

This sub-command has the following syntax::

   knife upload [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   Indicates that no action is taken and that results are only printed out.

``--purge``
   Use ``--purge`` to delete roles, cookbooks, etc. from the Chef server if their corresponding files do not exist in the chef repository (ED. that ought to be a link).  By default, such objects are left alone and NOT purged.  Default: ``--no-purge``

``--no-recurse``
   Use ``--no-recurse`` to disable uploading a directory recursively.  Default: ``--recurse``

``--force``
   Use ``--force`` to upload roles, cookbooks, etc. even if the file in the directory is identical (by default, no POST or PUT is performed unless an actual change would be made).  Default: ``--no-force``

For example, to upload an environment named "production":

.. code-block:: bash

   $ knife upload environments/production.json

or, (if already in the ``environments/`` directory in the local |chef| repository):

.. code-block:: bash

   $ knife upload production.json

To upload all roles, go to the top level:

.. code-block:: bash

   $ knife upload roles

   or, from anywhere:

   $ knife upload /roles

To upload cookbooks starting with the word "apache" as well as the "webserver" role, go to the top level and do:

.. code-block:: bash

   $ knife upload cookbooks/apache\* roles/webserver.json

To upload everything in the entire repository, go to the top level directory and type:

.. code-block:: bash

   $ knife upload

or, from any directory:

.. code-block:: bash

   $ knife download /

Related commands include knife diff, which can be used to see exactly what changes will be uploaded, and knife download, which does the reverse of a upload.
