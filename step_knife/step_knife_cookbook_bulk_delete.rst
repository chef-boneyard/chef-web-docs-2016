.. This is an included how-to. 


Use a regular expression to define the pattern used to bulk delete cookbooks:

.. code-block:: bash

   $ knife cookbook bulk delete "^[0-9]{3}$" -p
