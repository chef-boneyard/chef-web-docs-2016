.. This is an included how-to. 

Browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload environments

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife upload /environments

to upload all enviroments that are stored as |json| data. (Environments stored as |ruby| data will not be uploaded.)
