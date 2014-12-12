.. This is an included how-to. 


The |ssl| certificates that are used by the |chef client| may be verified by specifying the path to the |client rb| file. Use the ``--config`` option (that is available to any |knife| command) to specify this path:

.. code-block:: bash

   $ knife ssl check --config /etc/chef/client.rb
