.. This is an included how-to. 


The output of |subcommand knife deps| can be passed to |subcommand knife xargs|:

.. code-block:: bash

   $ knife deps nodes/*.json | xargs knife upload
