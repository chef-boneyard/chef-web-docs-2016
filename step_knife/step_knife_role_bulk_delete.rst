.. This is an included how-to. 


Use a regular expression to define the pattern used to bulk delete roles:

.. code-block:: bash

   $ knife role bulk delete "^[0-9]{3}$"