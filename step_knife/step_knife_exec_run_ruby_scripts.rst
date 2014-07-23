.. This is an included how-to. 


There are three ways to use |subcommand knife exec| to run |ruby| script files. For example:

.. code-block:: bash

   $ knife exec /path/to/script_file

or:

.. code-block:: bash

   $ knife exec -E 'RUBY CODE'

or:

.. code-block:: bash

   $ knife exec
   RUBY CODE
   ^D