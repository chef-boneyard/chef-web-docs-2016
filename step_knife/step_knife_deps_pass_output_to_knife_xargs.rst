.. This is an included how-to. 


To pass the output of |subcommand knife deps| to |subcommand knife xargs|:

.. code-block:: bash

   $ knife deps nodes/*.json | xargs knife upload
