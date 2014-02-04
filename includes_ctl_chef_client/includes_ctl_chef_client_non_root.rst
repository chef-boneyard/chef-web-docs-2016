.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can run as a non-root user. For tasks that require privileged access---installing packages, for example---the |chef client|, when running as a non-root user, can use |sudo| to complete specific tasks. (On the |solaris| platform the |chef client| can even be granted fine-grained RBAC for execution through pfexec.)

This is not a common approach for installing the |chef client|. Or even a typical approach. But sometimes it is necessary. For example, an organization may need to ensure that only system administrators can manage the server (via a manually-triggered root user |chef client|) while ensuring that the development teams manage the application stacks on that server using normal processes (cookbooks, a daemonized |chef client|, and so on).

In this scenario, a node is managed as if it were two nodes. On one node, the |chef client| is installed as the root user and is triggered manually (via |ssh|, |push jobs|, and so on). On the other node, the |chef client| is configured to run as a daemonized regular user that manages the application stack on the node. Each node is registered with the |chef server|.

And then use the |chef server oec| security model to limit access to the node on which the |chef client| is installed as a root user.

To run the |chef client| in non-root mode, edit the ``file_cache_path`` setting in the |client rb| file to be:

.. code-block:: ruby

   file_cache_path "~/.chef/cache"

.. note:: When running the |chef client| using the ``--local-mode`` option, ``~/.chef/local-mode-cache`` is the default value for ``file_cache_path``.
