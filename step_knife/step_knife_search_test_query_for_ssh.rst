.. This is an included how-to. 


To test a search query that will be used in a |subcommand knife ssh| command:

.. code-block:: bash

   $ knife search node "role:web AND NOT name:web03"

where the query in the previous example will search all servers that have the ``web`` role, but not on the server named ``web03``.


