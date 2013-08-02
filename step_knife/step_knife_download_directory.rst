.. This is an included how-to. 

To download a single directory in the |chef repo| from the |chef server|, browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife download name_of_directory

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife download /name_of_directory

where ``name_of_directory`` is the name of a directory in the |chef repo|, such as ``roles``, ``environments``, or ``cookbooks``.

