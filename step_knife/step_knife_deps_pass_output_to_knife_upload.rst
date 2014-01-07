.. This is an included how-to. 


The output of |subcommand knife deps| can be passed to |subcommand knife upload|:

.. code-block:: bash

   $ knife upload `knife deps nodes/*.json
