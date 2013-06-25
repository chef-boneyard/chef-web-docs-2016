.. This is an included how-to. 


To bulk delete many cookbooks, use a regular expression to define the pattern:

.. code-block:: bash

   $ knife cookbook bulk delete "^[0-9]{3}$" -p
