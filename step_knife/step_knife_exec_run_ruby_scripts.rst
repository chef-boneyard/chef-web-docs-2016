.. This is an included how-to. 


There are three ways to use ``knife exec`` to run |ruby| script files. For example:

.. code-block:: bash

   $ knife exec /path/to/script_file

Or:

.. code-block:: bash

   $ knife exec -E 'RUBY CODE'

Or:

.. code-block:: bash

   $ knife exec
   RUBY CODE
   ^D