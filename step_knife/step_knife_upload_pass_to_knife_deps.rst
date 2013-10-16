.. This is an included how-to. 

Use the output of |subcommand knife deps| to pass a command to |subcommand knife upload|. For example:

.. code-block:: bash

   $ knife upload `knife deps nodes/*.json`

