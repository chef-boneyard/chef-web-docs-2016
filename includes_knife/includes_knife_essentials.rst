.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |knife| essentials sub-commands is a set of |knife| commands that allow a common set of verbs to be used while interacting with objects on the |chef server|. Some important principles behind the |knife| essentials sub-commands include:

* Unified commands that work on everything. The verb is the most important part of the command. For example, most objects are uploaded, downloaded, viewed in a list, printed to |json|, and so on. |knife| essentials unifies these common tasks around the verb, rather than around the object.

* The |chef server| behaves like a file system. When the |knife| essentials sub-commands are used, the |chef server| behaves like a mirror of the |chef| repository. The |chef server| will have objects that match the |chef| repository. Just upload and download the files on the local repository to make changes to files on the |chef server|.

* The context from which a command is run matters. For example, within the ``roles/`` directory, the system knows what is being worked with. Enter ``knife show base.json`` and |knife| will return the base role from the server.

This plugin should be installed using |rubygems|:

.. code-block:: bash

   $ gem install knife-essentials

This sub-command has the following syntax::

   knife [ARGUMENT] (options)

