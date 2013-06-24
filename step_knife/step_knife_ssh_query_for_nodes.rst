.. This is an included how-to. 


To query for all nodes that have the "webserver" role and then use |ssh| to run the command "sudo chef-client", enter:

.. code-block:: bash

   $ knife ssh "role:webserver" "sudo chef-client"