.. This is an included how-to. 

To upload a single directory in the |chef repo| to the |chef server|, browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload name_of_directory

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife upload /name_of_directory

where ``name_of_directory`` is the name of a directory in the |chef repo|, such as ``roles``, ``environments``, or ``cookbooks``.

