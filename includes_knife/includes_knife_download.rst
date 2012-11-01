.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife download|

This sub-command will bring roles, cookbooks, etc. down from the Chef server to your current working directory.  It can be useful in backing up the server, inspecting its state, and extracting out-of-process changes people have made to a Chef server (such as if they bypassed source control).

This sub-command has the following syntax::

   knife download [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   Indicates that no action is taken and that results are only printed out.

``--purge``
   Use ``--purge`` to delete local files and directories that do not exist on the |chef server|.  By default, if a role, cookbook, etc. does not exist on the Chef server, the local file for said role will be left alone and NOT deleted.  Default: ``--no-purge``

``--no-recurse``
   Use ``--no-recurse`` to disable downloading a directory recursively.  Default: ``--recurse``

``--force``
   Use ``--force`` to download files even when the file on the hard drive is identical to the object on the server (role, cookbook, etc.).  By default, files are compared to see if they have equivalent content, and local files are only overwritten if they are different.  Default: ``--no-force``

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

Related commands include knife diff, which can be used to see exactly what changes will be downloaded, and knife upload, which does the reverse of a download.
