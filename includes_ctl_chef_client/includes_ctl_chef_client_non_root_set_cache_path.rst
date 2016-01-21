.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-client.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To run a |chef client| in non-root mode, add the ``cache_path`` setting to the |client rb| file for the node that will run as the non-root user. Set the value of ``cache_path`` to be the home directory for the user that is running the |chef client|. For example:

.. code-block:: ruby

   cache_path "~/.chef/cache"

or:

.. code-block:: ruby

   cache_path File.join(File.expand_path("~"), ".chef", "cache")

.. note:: When running the |chef client| using the ``--local-mode`` option, ``~/.chef/local-mode-cache`` is the default value for ``cache_path``.
