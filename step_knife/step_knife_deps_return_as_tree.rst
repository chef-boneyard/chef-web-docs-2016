.. This is an included how-to. 


Use the ``--tree`` option to view the results with structure:

.. code-block::  bash

   $ knife deps roles/webserver.json

to return something like:

.. code-block:: bash

   roles/webserver.json
     roles/base.json
       cookbooks/github
         cookbooks/git
       cookbooks/users
     cookbooks/apache2
