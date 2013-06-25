.. This is an included how-to. 


To bulk delete many nodes, use a regular expression to define the pattern:

.. code-block:: bash

   $ knife node bulk delete "^[0-9]{3}$"

Type ``Y`` to confirm a deletion.
