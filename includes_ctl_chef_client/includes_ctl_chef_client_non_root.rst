.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can be run as a non-root user. For tasks that require privileged access---installing packages, for example---the |chef client|, when running as a non-root user, can use |sudo cmd| to complete specific tasks. (On the |solaris| platform the |chef client| can even be granted fine-grained RBAC for execution through pfexec.)

This is not a common approach for installing the |chef client|, but is sometimes necessary. For example, an organization may want to ensure that only system administrators can manage a server (via a manually-triggered root user |chef client|) while ensuring that development teams who manage the application stacks on that server can do so using normal processes (i.e. cookbooks, a daemonized |chef client|, and so on).

In this type of scenario, a node should be managed as if it were two nodes:

* Configure a |chef client| to run as the root user on one node. Trigger the |chef client| manually  (via |ssh|, |push jobs|, and so on)
* Configure another |chef client| to run as a daemonized user that manages the application stack on the node

and then register both nodes with the |chef server|. Use the |chef server oec| security model to limit access to the node on which the |chef client| is installed as a root user.

And then to run a |chef client| in non-root mode, edit the ``file_cache_path`` setting in that node's |client rb| file. Set the value to be the home directory for the user that is running the |chef client|. For example:

.. code-block:: ruby

   file_cache_path "~/.chef/cache"

or:

.. code-block:: ruby

   file_cache_path "File.join(File.expand_path("~"), ".chef", "cache")"

.. note:: When running the |chef client| using the ``--local-mode`` option, ``~/.chef/local-mode-cache`` is the default value for ``file_cache_path``.
