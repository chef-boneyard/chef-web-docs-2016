.. This is an included how-to. 

To upload a single directory in the |chef| repository to the |chef server|, browse to the top level of the |chef| repository and enter:

.. code-block:: bash

   $ knife upload name_of_directory

or from anywhere in the |chef| repository, enter:

.. code-block:: bash

   $ knife upload /name_of_directory

where ``name_of_directory`` is the name of a directory in the |chef| repository, such as ``roles``, ``environments``, or ``cookbooks``.

