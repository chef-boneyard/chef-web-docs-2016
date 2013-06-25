.. This is an included how-to. 


To pass the output of ``knife deps`` to ``knife upload``, do something like the following:

.. code-block:: bash

   $ knife upload `knife deps nodes/*.json
