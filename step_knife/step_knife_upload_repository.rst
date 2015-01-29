.. This is an included how-to. 

Browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload .

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife upload /

to upload all cookbooks and data bags, plus all roles and enviroments that are stored as |json| data. (Roles and environments stored as |ruby| data will not be uploaded.)
