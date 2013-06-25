.. This is an included how-to. 


To pass the output of ``knife deps`` to ``knife xargs``:

.. code-block:: bash

   $ knife deps nodes/*.json | xargs knife upload
