.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife upload|

This sub-command will upload roles, cookbooks, environments, and data bags to the |chef server| from your current working directory in the |chef| repository. This sub-command is often used in conjunction with ``knife diff``, which can be used to see exactly what changes will be uploaded, and then ``knife download``, which does the opposite of ``knife upload``.

This sub-command has the following syntax::

   knife upload [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   |dry_run|

``--purge``
   |purge knife upload|

``--recurse``
   |no recurse upload|

``--force``
   |force knife upload|

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
