.. This is an included how-to. 

To search for a node using a partial name, enter one of the following:

.. code-block:: bash

   $ knife search node 'name:app*'

or:

.. code-block:: bash

   $ knife search node 'name:app1*.example.com'

or:

.. code-block:: bash

   $ knife search node 'name:app?.example.com'

or:

.. code-block:: bash

   $ knife search node 'name:app1.example.???'

to return "app1.example.com" (and any other node that matches any of the string searches above).
