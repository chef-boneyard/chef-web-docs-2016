.. This is an included how-to. 


To use the output of |subcommand knife deps| to pass a command to |subcommand knife xargs|. For example:

.. code-block:: bash

   $ knife deps nodes/*.json | xargs knife upload