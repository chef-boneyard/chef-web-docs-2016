.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can be run as a non-root user. For specific tasks that require privileged access---installing packages, for example---the |chef client|, when running as a non-root user, can use |sudo cmd| to complete them. (On the |solaris| platform the |chef client| can even be granted fine-grained permission to use ``pfexec``.)

This is not a common approach for installing the |chef client|, but is sometimes necessary. For example, an organization may want to ensure that only system administrators can manage a server (via a manually-triggered root user |chef client|) while ensuring that development teams who manage the application stacks on that server can do so using normal processes (via cookbooks, a daemonized |chef client|, and so on).

In this type of scenario, a node should be managed as if it were two nodes:

* Configure one node to run the |chef client| as the root user; trigger this |chef client| manually  (via |ssh|, |push jobs|, and so on)
* Configure another node to run the |chef client| as a daemonized user; this |chef client| manages the application stack on the node
* Register both of these nodes with the |chef server|; use the |chef server oec| security model to limit access to the node on which the |chef client| is installed as a root user

To run a |chef client| in non-root mode, add the ``cache_path`` setting to the |client rb| file for the node that will run as the non-root user. Set the value of ``cache_path`` to be the home directory for the user that is running the |chef client|. For example:

.. code-block:: ruby

   cache_path "~/.chef/cache"

or:

.. code-block:: ruby

   cache_path File.join(File.expand_path("~"), ".chef", "cache")

.. note:: When running the |chef client| using the ``--local-mode`` option, ``~/.chef/local-mode-cache`` is the default value for ``cache_path``.
