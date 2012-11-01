.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife download|

This sub-command will download roles, cookbooks, environments, nodes, and data bags from the |chef server| to your current working directory. It can be used to back up data on the |chef server|, inspect the state of one or more files, or to extract out-of-process changes users may have made to files on the |chef server|, such as if a user made a change that bypassed version source control. This sub-command is often used in conjunction with ``knife diff``, which can be used to see exactly what changes will be downloaded, and then ``knife upload``, which does the opposite of ``knife download``.

This sub-command has the following syntax::

   knife download [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   |dry_run|

``--purge``
   |purge knife download|

``--no-recurse``
   |no recurse download|

``--force``
   |force knife download|

For example, to download an environment named "production":

.. code-block:: bash

   $ knife download environments/production.json

or, (if already in the ``environments/`` directory in the local |chef| repository):

.. code-block:: bash

   $ knife download production.json

To download all roles, go to the top level:

.. code-block:: bash

   $ knife download roles

   or, from anywhere:

   $ knife download /roles

To download cookbooks starting with the word "apache" as well as the "webserver" role, go to the top level and do:

.. code-block:: bash

   $ knife download cookbooks/apache\* roles/webserver.json

To download everything in the entire repository, go to the top level directory and type:

.. code-block:: bash

   $ knife download

or, from any directory:

.. code-block:: bash

   $ knife download /
